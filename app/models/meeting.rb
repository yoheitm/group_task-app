class Meeting < ApplicationRecord
  belongs_to :group

  with_options presence: true do
    validates :title, :content
  end
end
