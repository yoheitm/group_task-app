class CreateMeetings < ActiveRecord::Migration[6.0]
  def change
    create_table :meetings do |t|
      t.string     :title
      t.text       :content
      t.datetime   :start_time
      t.references :group, foreign_key: true
      t.timestamps
    end
  end
end
