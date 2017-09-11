class SongsController < ApplicationController
    before_action :one_song, only: [:show, :edit, :update, :destroy]    
    

    def index 
        @songs = Song.all
    end
    def show
    end

    def new 
        @song = Song.new
        @movie = Movie.new 
    end

    def create
        @song = Song.new(song_params)
        if @song.save 
            redirect_to @song
        else
            render 'new'
        end
    end

    def edit 

    end

    def update
        if @song.update(song_params)
            redirect_to song_path(@song)
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
            params.require(:song).permit(:title, :singer)
        end    

        def one_song
            @song = Song.find(params[:id])
        end        

end
