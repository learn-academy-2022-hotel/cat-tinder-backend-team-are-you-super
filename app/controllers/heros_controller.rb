class HerosController < ApplicationController
    def index
        heros = Hero.all
        render json: heros
    end
      
    def create
        hero = Hero.create(hero_params)
        render json: hero
    end
      
    def update
        hero = Hero.find(params[:id])
        hero.update(hero_params)
        if hero.vaild?
            render json: hero
        else 
            render json: hero.errors
    end
      
    def destroy
        hero = Hero.find(params[:id])
        if hero.destroy
            render json: hero
        else 
            render json: hero.errors
    end

    private
    def hero_params
      params.require(:hero).permit(:name, :super_power, :enjoys, :image)
    end
end
