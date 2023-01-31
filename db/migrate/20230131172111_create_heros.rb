class CreateHeros < ActiveRecord::Migration[7.0]
  def change
    create_table :heros do |t|
      t.string :name
      t.string :super_power
      t.text :enjoys
      t.text :image

      t.timestamps
    end
  end
end
