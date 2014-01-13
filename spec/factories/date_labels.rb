# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :date_label do
    day "2014-01-10"
    label_color nil
    user nil
  end
end
