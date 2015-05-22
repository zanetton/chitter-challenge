class Peep
include DataMapper::Resource
  property :id,       Serial
  property :chitname,     String
  property :message,  Text

end
