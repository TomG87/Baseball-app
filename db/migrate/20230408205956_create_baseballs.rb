class CreateBaseballs < ActiveRecord::Migration[7.0]
  def change
    create_table :baseballs do |t|
      t.string :player
      t.string :team
      t.string :number

      t.timestamps
    end
  end
end
