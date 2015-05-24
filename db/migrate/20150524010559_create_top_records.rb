class CreateTopRecords < ActiveRecord::Migration
  def change
    create_table :top_records do |t|
      t.string :interpret
      t.string :album
      t.string :single
      t.string :image_url, :limit => 2083
      # src for this size-limit: http://stackoverflow.com/a/219664/1870317

      t.timestamps
    end
  end
end
