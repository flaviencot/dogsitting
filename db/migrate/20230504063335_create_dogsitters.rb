class CreateDogsitters < ActiveRecord::Migration[7.0]
  def change
    create_table :dogsitters do |t|
      t.string :first_name
      t.string :last_name
      t.timestamps
      t.belongs_to :city, index: true
    end
  end
end
