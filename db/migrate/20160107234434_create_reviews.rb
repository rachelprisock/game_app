class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
    	t.belongs_to :game
      t.integer :rating
      t.text :body

      t.timestamps null: false
    end
  end
end
