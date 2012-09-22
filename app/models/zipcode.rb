class Zipcode
  include Mongoid::Document
  field :zipcode, type: String
  field :sido, type: String
  field :gugun, type: String
  field :dong, type: String
  field :ri, type: String
  field :bldg, type: String
  field :bunji, type: String
  field :seq, type: String

  def address
  	[self.sido, self.gugun, self.dong, self.ri, self.bldg].join(' ')
  end

  def value
  	address
  end
end
