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

require 'spec_helper'

describe LabelColor do
  pending "add some examples to (or delete) #{__FILE__}"
end
