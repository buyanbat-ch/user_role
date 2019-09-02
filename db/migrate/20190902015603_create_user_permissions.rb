class CreateUserPermissions < ActiveRecord::Migration
  def change
    create_table :user_permissions do |t|
      t.references :user, index: true, foreign_key: true
      t.references :permission, index: true, foreign_key: true
      t.integer :site_id
      t.integer :site_tab_id

      t.timestamps null: false
    end
  end
end
