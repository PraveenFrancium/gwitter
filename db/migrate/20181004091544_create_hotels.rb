class CreateHotels < ActiveRecord::Migration[5.2]
  def change
    create_table :hotels do |t|
      t.text :hotel_name
      t.belongs_to :user
      t.timestamps
    end
  end
end
