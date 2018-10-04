class CreateGweets < ActiveRecord::Migration[5.2]
  def change
    create_table :gweets do |t|
      t.text :post
      t.belongs_to :user
      t.timestamps
    end
  end
end
