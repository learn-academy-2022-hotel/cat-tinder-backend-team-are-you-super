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