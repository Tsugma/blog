class CreateActiveAdminComments < ActiveRecord::Migration

  def self.down
    drop_table :active_admin_comments
  end
end
