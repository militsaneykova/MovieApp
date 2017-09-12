class SongsController < ApplicationController
    before_action :one_song, only: [:show, :edit, :update, :destroy]    
    before_action :one_movie, only: [:show, :edit, :update, :destroy]    
    
    def index 
        @songs = Song.all
    end
    def show
    end

    def new
        @movie = Movie.find(params[:movie_id]) 
        @song = Song.new(movie: @movie)
        
    end

    def create
        @song = Song.new(song_params)
        @movie = Movie.find(params[:movie_id]) 
        if @song.save 
            redirect_to movie_path(@movie)
        else
            render 'new'
        end
    end

    def edit 

    end

    def update
        if @song.update(song_params)
            redirect_to movie_song_path(@song)
        else
            render 'edit'   
        end    
    end

    def destroy
        if @song.destroy
        redirect_to songs_path
      else
        render 'edit'
      end
    end

    private 
        def song_params
            params.require(:song).permit(:title, :singer, :movie_id)
        end    

        def one_song
            @song = Song.find(params[:id])
        end  
        def one_movie
            @movie = Movie.find(params[:id])
        end      

end
