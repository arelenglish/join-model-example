class Program < ActiveRecord::Base
  attr_accessible :name, :program_attendances, :programs_attributes, :program_attendances_attributes

  has_many :program_attendances, dependent: :destroy
  has_many :clients, through: :program_attendances
end
