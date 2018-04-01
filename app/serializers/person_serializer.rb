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

class PersonSerializer < Serializer
  attributes :name, :dob

  has_many :credits
end
