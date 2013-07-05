class Client < ActiveRecord::Base
  attr_accessible :name, :program_ids, :program_attendances, :programs_attributes, :program_attendances_attributes

  has_many :program_attendances, dependent: :destroy
  has_many :programs, through: :program_attendances

end