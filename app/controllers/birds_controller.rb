class BirdsController < ApplicationController

#  gets /birds all birds
    def index
        birds = Bird.all
        render json: birds
    end

# gets /birds/:id shows a specific bird

def show
    bird = Bird.find_by(id: params[:id])
    if bird
        render json: bird
    else 
        render json: { error: "Bird not found" }, status: :not_found
    end
end


end
