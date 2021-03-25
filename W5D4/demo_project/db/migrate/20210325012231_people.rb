class People < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :name, :house_id, null: false
    end
  end
end
