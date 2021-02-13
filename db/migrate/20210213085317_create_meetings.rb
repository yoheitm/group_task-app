class CreateMeetings < ActiveRecord::Migration[6.0]
  def change
    create_table :meetings do |t|
      t.string :name
      t.datetime :start_time
      t.references :group, foreign_key: true
      t.timestamps
    end
  end
end
