class Meeting < ApplicationRecord
  belongs_to :group

  with_options presence: true do
    validates :name, :start_time, :group_id
  end
end
