class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.string :interpret
      t.string :album
      t.string :single
      t.string :image_url

      t.timestamps
    end
  end
end
