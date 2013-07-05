class ProgramAttendancesController < ApplicationController
  # GET /program_attendances
  # GET /program_attendances.json
  def index
    @program_attendances = ProgramAttendance.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @program_attendances }
    end
  end

  # GET /program_attendances/1
  # GET /program_attendances/1.json
  def show
    @program_attendance = ProgramAttendance.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @program_attendance }
    end
  end

  # GET /program_attendances/new
  # GET /program_attendances/new.json
  def new
    @program_attendance = ProgramAttendance.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @program_attendance }
    end
  end

  # GET /program_attendances/1/edit
  def edit
    @program_attendance = ProgramAttendance.find(params[:id])
  end

  # POST /program_attendances
  # POST /program_attendances.json
  def create
    @program_attendance = ProgramAttendance.new(params[:program_attendance])

    respond_to do |format|
      if @program_attendance.save
        format.html { redirect_to @program_attendance, notice: 'Program attendance was successfully created.' }
        format.json { render json: @program_attendance, status: :created, location: @program_attendance }
      else
        format.html { render action: "new" }
        format.json { render json: @program_attendance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /program_attendances/1
  # PUT /program_attendances/1.json
  def update
    @program_attendance = ProgramAttendance.find(params[:id])

    respond_to do |format|
      if @program_attendance.update_attributes(params[:program_attendance])
        format.html { redirect_to @program_attendance, notice: 'Program attendance was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @program_attendance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /program_attendances/1
  # DELETE /program_attendances/1.json
  def destroy
    @program_attendance = ProgramAttendance.find(params[:id])
    @program_attendance.destroy

    respond_to do |format|
      format.html { redirect_to program_attendances_url }
      format.json { head :no_content }
    end
  end
end
