class Car < ActiveRecord::Base
  belongs_to:user
  validates:mileage,  numericality: {only_integer:true}
  validates:mileage,  numericality: { greater_than_or_equal_to: 0}
  validates:make, length:{maximum: 50}
  validates:model, length:{maximum:50}
  validates:color, length:{maximum:20}
  
  validates :make,:model,:color, presence:true
  
  
end
