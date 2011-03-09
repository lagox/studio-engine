class CreateOurprojects < ActiveRecord::Migration
  def self.up
    create_table :ourprojects do |t|
      t.string :title
      t.string :url
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :ourprojects
  end
end
