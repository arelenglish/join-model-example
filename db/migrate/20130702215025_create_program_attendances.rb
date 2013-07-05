class CreateProgramAttendances < ActiveRecord::Migration
  def change
    create_table :program_attendances do |t|
      t.integer :client_id
      t.integer :program_id
      t.boolean :atteneded

      t.timestamps
    end
  end
end
