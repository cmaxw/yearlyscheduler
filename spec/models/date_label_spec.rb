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

require 'spec_helper'

describe DateLabel do
  pending "add some examples to (or delete) #{__FILE__}"
end
