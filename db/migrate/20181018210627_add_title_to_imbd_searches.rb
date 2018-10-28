class AddTitleToImbdSearches < ActiveRecord::Migration[5.2]
  def change
    add_column :imbd_searches, :title, :string
  end
end
