require 'nokogiri'
require 'open-uri'

class HomeController < ApplicationController
	def index
		if session[:user].nil?
			respond_to do |format|
				format.html { redirect_to login_index_path, notice: 'Your session has expired. Please login again.' }
				format.json { render json: login_index_path, status: :created, location: login_index_path }
			end
		else
			@songs = ""
			@track = ""
			@youtube_id = ""
			if(params.has_key?(:home_search_songs))
				if params[:commit] == 'Search'
					param_song = params[:home_search_songs][:find_songs]
					if param_song == ""
						@songs = ""
					else
						@songs = Song.where("title LIKE ? ", "%#{param_song}%")
					end
				elsif params[:commit] == 'Pop'
					@songs = Song.where("genre = ? ", "Pop")
				elsif params[:commit] == 'Hip-Hop'
					@songs = Song.where("genre = ? ", "Hip-Hop")
				elsif params[:commit] == 'Rock'
					@songs = Song.where("genre = ? ", "Rock")
				elsif params[:commit] == 'RnB'
					@songs = Song.where("genre = ? ", "RnB")
				elsif params[:commit] == 'Alternative Rock'
					@songs = Song.where("genre = ? ", "Alternative Rock")
				elsif params[:commit] == 'Country'
					@songs = Song.where("genre = ? ", "Country")
				elsif params[:commit] == 'Classical'
					@songs = Song.where("genre = ? ", "Classical")
				elsif params[:commit] == 'Jazz'
					@songs = Song.where("genre = ? ", "Jazz")
				elsif params[:commit] == 'Reggae'
					@songs = Song.where("genre = ? ", "Reggae")
				elsif params[:commit] == 'Blues'
					@songs = Song.where("genre = ? ", "Blues")
				end
			elsif(params.has_key?(:aname) && params.has_key?(:song))
				@artist_name = params[:aname]
				@song_title = params[:song]
				@track = Rockstar::Track.new(@artist_name, @song_title, :include_info => true)
				page = Nokogiri::HTML(open(@track.url))
				youtube_div = page.css("div[data-youtube-player-id]")
				unless youtube_div.nil?
					match_group = /data-youtube-player-id="([^"]+)"/.match(youtube_div.to_s)
					unless match_group.nil? 
						@youtube_id = match_group[1]
					end
				end
				if @youtube_id.length == 0
					@youtube_id = "louHF9Xqil0"
				end
			else
				@songs = Song.offset(rand(Song.count)).all.take(20)
			end
		end

	end
	def settings
		
	end

	def changepassword
		current_password = params[:user_settings][:current_password]
		new_password = params[:user_settings][:new_password]
		confirm_password = params[:user_settings][:confirm_password]
		respond_to do |format|
			if current_password.length == 0 or new_password.length == 0 or confirm_password.length == 0
				format.html { redirect_to settings_path, notice: 'Fields cannot be blank' }
				format.json { render json: settings_path, status: :created, location: settings_path }
			else
				authentic = Signup.authenticate(session[:user], current_password)
				if !authentic
					format.html { redirect_to settings_path, notice: 'Invalid Current password' }
					format.json { render json: settings_path, status: :created, location: settings_path }	
				elsif !new_password.eql? confirm_password
					format.html { redirect_to settings_path, notice: 'New password and Confirm password fields do not match' }
					format.json { render json: settings_path, status: :created, location: settings_path }	
				else
					user = Signup.where("username = ?", session[:user]).first
					user.password = new_password
					user.save
					format.html { redirect_to home_index_path, notice: 'Your password has been changed successfully' }
					format.json { render json: home_index_path, status: :created, location: home_index_path }
				end
			end
		end
	end
end

