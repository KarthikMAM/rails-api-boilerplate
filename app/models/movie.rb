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

  def as_json(_options = {})
    super(only: %i[name release_date id])
  end
end
