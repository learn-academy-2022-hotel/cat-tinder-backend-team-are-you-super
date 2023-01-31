require 'rails_helper'

RSpec.describe "Heros", type: :request do
  describe "GET /index" do
    it "gets a list of heros" do
      Hero.create(
        name: 'Iron Man',
        super_power: 'Self-built powered armor that gives super strength, Durability, and Flight',
        enjoys: 'Skiing, Parachuting, and Hang-gliding',
        image: 'https://media.vanityfair.com/photos/5a1c7f8c7eee1d789d984783/4:3/w_1776,h_1332,c_limit/marvel-iron-man-lede.jpg'
      )
      get '/heros'

      hero = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(hero.length).to eq 1
    end
  end

  describe "POST /create" do
    it "creates a hero" do
      hero_params = {
        hero: {
          name: 'Iron Man',
          super_power: 'Self-built powered armor that gives super strength, Durability, and Flight',
          enjoys: 'Skiing, Parachuting, and Hang-gliding',
          image: 'https://media.vanityfair.com/photos/5a1c7f8c7eee1d789d984783/4:3/w_1776,h_1332,c_limit/marvel-iron-man-lede.jpg'
        }
      }
      post '/heros', params: hero_params

      expect(response).to have_http_status(200)

      hero = Hero.first

      expect(hero.name).to eq 'Iron Man'
    end
  end
end
