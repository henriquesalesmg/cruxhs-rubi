class CreateCruxhs < ActiveRecord::Migration
  def change
    create_table :cruxhs do |t|
      t.string :email

      t.timestamps null: false
    end
  end
end
