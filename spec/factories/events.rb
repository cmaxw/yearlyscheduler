# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    start_date "2014-01-09"
    end_date "2014-01-09"
    label_color nil
  end
end
