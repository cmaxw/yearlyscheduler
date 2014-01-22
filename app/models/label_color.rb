# == Schema Information
#
# Table name: label_colors
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  color      :string(255)
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#

class LabelColor < ActiveRecord::Base
end
