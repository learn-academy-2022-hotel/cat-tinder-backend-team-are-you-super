require 'rails_helper'

RSpec.describe Hero, type: :model do
  it "should not be vaild without a name" do
    iron = Hero.create(
          super_power: 'Self-built powered armor that gives super strength, Durability, and Flight',
          enjoys: 'Skiing, Parachuting, and Hang-gliding',
          image: 'https://media.vanityfair.com/photos/5a1c7f8c7eee1d789d984783/4:3/w_1776,h_1332,c_limit/marvel-iron-man-lede.jpg'
        )
    expect(iron.errors[:name]).to_not be_empty
  end

  it "should not be vaild without a super power" do
    iron = Hero.create(
          name: 'Iron Man',
          enjoys: 'Skiing, Parachuting, and Hang-gliding',
          image: 'https://media.vanityfair.com/photos/5a1c7f8c7eee1d789d984783/4:3/w_1776,h_1332,c_limit/marvel-iron-man-lede.jpg'
        )
    expect(iron.errors[:super_power]).to_not be_empty
  end

  it "should not be vaild without the enjoy statement" do
    iron = Hero.create(
          name: 'Iron Man',
          super_power: 'Self-built powered armor that gives super strength, Durability, and Flight',
          image: 'https://media.vanityfair.com/photos/5a1c7f8c7eee1d789d984783/4:3/w_1776,h_1332,c_limit/marvel-iron-man-lede.jpg'
        )
    expect(iron.errors[:enjoys]).to_not be_empty
  end

  it "should not be vaild without an image" do
    iron = Hero.create(
          name: 'Iron Man',
          super_power: 'Self-built powered armor that gives super strength, Durability, and Flight',
          enjoys: 'Skiing, Parachuting, and Hang-gliding'
        )
    expect(iron.errors[:image]).to_not be_empty
  end

  it "should have an enjoy statement that is atleast 10 characters long" do
    iron = Hero.create(
          name: 'Iron Man',
          super_power: 'Self-built powered armor that gives super strength, Durability, and Flight',
          enjoys: 'Skiing',
          image: 'https://media.vanityfair.com/photos/5a1c7f8c7eee1d789d984783/4:3/w_1776,h_1332,c_limit/marvel-iron-man-lede.jpg'
        )
    expect(iron.errors[:enjoys]).to_not be_empty
  end
end

# ATTEMPTED VALIDATION STRETCH GOALS:

  # describe "PATCH /update" do
  #   it "updates a hero" do
  #     hero_params = {
  #       hero: {
  #         name: 'Iron Man',
  #         super_power: 'Self-built powered armor that gives super strength, Durability, and Flight',
  #         enjoys: 'Skiing, Parachuting, and Hang-gliding',
  #         image: 'https://media.vanityfair.com/photos/5a1c7f8c7eee1d789d984783/4:3/w_1776,h_1332,c_limit/marvel-iron-man-lede.jpg'
  #       }
  #     }
  #     patch "/heros/#{hero.id}", params: hero_params

  #     expect(response).to have_http_status(200)

  #     # hero = Hero.first
  #     hero = JSON.parse(response.body)
  #     expect(json[:name])

  #     expect(hero.reload.name).to eq('Iron Man')
  #   end

  #   it "doesn't create a hero without a name" do
  #     hero_params = {
  #       hero: {
  #         super_power: 'Self-built powered armor that gives super strength, Durability, and Flight',
  #         enjoys: 'Skiing, Parachuting, and Hang-gliding',
  #         image: 'https://media.vanityfair.com/photos/5a1c7f8c7eee1d789d984783/4:3/w_1776,h_1332,c_limit/marvel-iron-man-lede.jpg'
  #       }
  #     }
  #     # Send the request to the  server
  #     post '/heros', params: hero_params
  #     # expect an error if the hero_params does not have a name
  #     expect(response.status).to eq 422
  #     # Convert the JSON response into a Ruby Hash
  #     json = JSON.parse(response.body)
  #     # Errors are returned as an array because there could be more than one, if there are more than one validation failures on an attribute.
  #     expect(json['name']).to include "can't be blank"
  #   end
  # end
# end
