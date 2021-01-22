class CreateWords < ActiveRecord::Migration[6.1]
  def change
    create_table :words do |t|
      t.string :ebody
      t.string :cbody
      t.integer :status
      t.integer :level
      t.references :user

      t.timestamps
    end
  end
end
