class CreateRegistries < ActiveRecord::Migration[7.0]
  def change
    create_table :registries do |t|
      t.string :name
      t.text :location
      t.integer :state

      t.timestamps
    end
  end
end
