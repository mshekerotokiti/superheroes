class HeroesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    
    def index
        render json: Hero.all
    end
   
    def show
        hero = find_hero
        render json: hero, status: :ok, serializer: ShowHeroPowerSerializer 
    end

   
    
    private

    def find_hero
        Hero.find(params[:id])
    end

    def render_not_found_response
        render json: { errors: "Hero not found"}, status: :not_found
    end
end
