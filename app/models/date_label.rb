# == Schema Information
#
# Table name: date_labels
#
#  id             :integer          not null, primary key
#  day            :date
#  label_color_id :integer
#  user_id        :integer
#  created_at     :datetime
#  updated_at     :datetime
#

class DateLabel < ActiveRecord::Base
  belongs_to :label_color
  belongs_to :user

  delegate :color, to: :label_color
  def date_string
    self.day.strftime('%Y-%-m-%-d')
  end

end
