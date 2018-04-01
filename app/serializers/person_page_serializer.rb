class PersonPageSerializer < Serializer
  PROPS = PersonSerializer::PROPS.deep_merge({
    include: {
      credits: PersonCreditsSerializer::PROPS
    }
  }).freeze


  SHAPE = PersonSerializer::SHAPE.deep_merge({
    credits: PersonCreditsSerializer::SHAPE
  }).freeze
end