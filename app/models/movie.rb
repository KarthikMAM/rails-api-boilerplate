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

class Movie < ApplicationRecord
  validates :name, presence: true

  has_many :credits, dependent: :destroy
end
