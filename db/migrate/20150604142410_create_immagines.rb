class CreateImmagines < ActiveRecord::Migration
  def change
    create_table :immagines do |t|
      t.attachment :url

      t.timestamps
    end
  end
end
