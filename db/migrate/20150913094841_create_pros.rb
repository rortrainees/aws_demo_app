class CreatePros < ActiveRecord::Migration
  def change
    create_table :pros do |t|
      t.string :title
      t.string :desc

      t.timestamps null: false
    end
  end
end
