class HerosController < ApplicationController
    def index
        heros = Hero.all
        render json: heros
    end
      
    def create
        hero = Hero.create(hero_params)
        if hero.valid?
            render json: hero
        else
            render json: hero.errors, status: 422
        end
    end
      
    def update
        hero = Hero.find(params[:id])
        hero.update(hero_params)
        if hero.vaild?
            render json: hero
        else 
            render json: hero.errors, status: 422
        end
    end
      
    def destroy
        hero = Hero.find(params[:id])
        if hero.destroy
            render json: hero
        else 
            render json: hero.errors
        end
    end

    private
    def hero_params
      params.require(:hero).permit(:name, :super_power, :enjoys, :image)
    end
end
