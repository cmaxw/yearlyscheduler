class DateLabel < ActiveRecord::Base
  belongs_to :label_color
  belongs_to :user
end
