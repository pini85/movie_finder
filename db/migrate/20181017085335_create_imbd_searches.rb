class CreateImbdSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :imbd_searches do |t|
      t.string :genre
      t.string :votes
      t.string :rating
      t.string :year

      t.timestamps
    end
  end
end
