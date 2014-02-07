class Owner < ActiveRecord::Base
  validates :name, length:{maximum:30 }
  validates :age,  numericality: { greater_than_or_equal_to: 16,less_than_or_equal_to: 150}
  has_many :cars
  validates :phoneNumber,numericality:{only_integer:true}
  validates :phoneNumber,length:{maximum:13}
  
  validates :name, :age,:phoneNumber, presence:true
end
