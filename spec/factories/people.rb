# == Schema Information
#
# Table name: people
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  dob        :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :person do
    name { FFaker::Name.name }
    dob { FFaker::Time.date }
  end
end
