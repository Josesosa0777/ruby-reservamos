class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :name
      t.string :category
      t.string :email
      t.string :area
      t.string :leader

      t.timestamps
    end
  end
end
