class CreateAdminPromos < ActiveRecord::Migration
  def change
    create_table :admin_promos do |t|
      t.string :name
      t.date :release_date
      t.string :release_number
      t.string :artist
      t.string :release_title
      t.text :content

      t.timestamps
    end
  end
end
