class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :topic
      t.string :purpose
      t.string :street_address_line1
      t.string :street_address_line2
      t.string :city
      t.string :provice
      t.datetime :start_date
      t.datetime :start_time
      t.integer :duration

      t.timestamps
    end
  end
end
