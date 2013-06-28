class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :file
      t.references :imageable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
