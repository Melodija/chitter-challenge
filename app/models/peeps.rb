require 'data_mapper'

class Peeps
  include DataMapper::Resource

  has 1, :user, through: Resource

  property :id,     Serial
  property :peep,   String
  property :username, String, required: true
  property :time,   Time

end
