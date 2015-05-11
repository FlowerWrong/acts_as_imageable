class ActsAsImageableMigration < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.references :imageable, polymorphic: true

      t.string :image_mime_type
      t.string :image_name
      t.string :image_size
      t.string :image_width
      t.string :image_height
      t.string :image_uid
      t.string :image_ext
      t.string :image_alt

      t.timestamps
    end
    add_index :images, [:imageable_id, :imageable_type]
  end

  def self.down
    drop_table :images
  end
end
