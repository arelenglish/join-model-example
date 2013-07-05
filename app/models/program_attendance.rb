class ProgramAttendance < ActiveRecord::Base
  attr_accessible :atteneded, :client_id, :program_id

  belongs_to :client
  belongs_to :program
end
