# frozen_string_literal: true

# == Schema Information
#
# Table name: movies
#
#  id           :integer          not null, primary key
#  name         :string           not null
#  release_date :date
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

FactoryBot.define do
  factory :movie do
    name { FFaker::Name.name }
    release_date { FFaker::Time.date }
  end
end
