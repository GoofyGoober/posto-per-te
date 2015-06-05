class AddPageIdToImmagine < ActiveRecord::Migration
  def change
    add_column :immagines, :page_id, :integer
  end
end
