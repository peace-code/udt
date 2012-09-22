class Registeration
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :phone, type: String
  field :sido, type: String
  field :gugun, type: String
  field :dong, type: String
  field :address, type: String

  validates_presence_of :name, :phone, :address
  validates_uniqueness_of :phone
end
