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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :date_label do
    day "2014-01-10"
    label_color nil
    user nil
  end
end
