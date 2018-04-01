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

class MovieSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :release_date
end
