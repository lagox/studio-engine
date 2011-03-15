class AddAttachmentScreenToOurportfolio < ActiveRecord::Migration
  def self.up
    add_column :ourportfolios, :screen_file_name, :string
    add_column :ourportfolios, :screen_content_type, :string
    add_column :ourportfolios, :screen_file_size, :integer
    add_column :ourportfolios, :screen_updated_at, :datetime
  end

  def self.down
    remove_column :ourportfolios, :screen_file_name
    remove_column :ourportfolios, :screen_content_type
    remove_column :ourportfolios, :screen_file_size
    remove_column :ourportfolios, :screen_updated_at
  end
end
