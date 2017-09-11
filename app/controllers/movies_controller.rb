class MoviesController < ApplicationController
        
            before_action :one_movie, only: [:show, :edit, :update, :destroy]    
        
            def index
                @movies = Movie.all
                @songs = Song.all    
            end
        
            def show
            
            end
        
            def new
                @movie = Movie.new   
                @songs = Song.all 
            end
        
            def create
                @movie = Movie.new(movie_params)
                @songs = @movie.songs
                if @movie.save
                    redirect_to '/' 
                else 
                    render 'new' 
                end
            end
        
            def edit 
                
            end
        
            def update
                if @movie.update(movie_params)
                    redirect_to movie_path(@movie)
                else
                    render 'edit'   
                end    
            end
        
            def destroy
                if @movie.destroy
                    redirect_to '/'
                  else
                    render 'edit'
                  end
            end
        
            private
                def movie_params
                    params.require(:movie).permit(:name, :description, :director, :song_id)
                end
        
                def one_movie
                    @movie = Movie.find(params[:id])
                end
        end

