class CreateOurportfolios < ActiveRecord::Migration
  def self.up
    create_table :ourportfolios do |t|
      t.string :title
      t.string :url
      t.text :desc

      t.timestamps
    end
  end

  def self.down
    drop_table :ourportfolios
  end
end
