class CreateSiteTabs < ActiveRecord::Migration
  def change
    create_table :site_tabs do |t|
      t.string :title
      t.references :site, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
