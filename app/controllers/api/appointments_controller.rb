class Api::AppointmentsController < ApplicationController
  def index
    # TODO: return all values
    @appointments = Appointment.all
    # TODO: return filtered values

    if '?past = 1'
      return @appointments = Appointment.where("start_time< ")#original time

    elsif '?past = 0'
      return @appointments = Appointment.where("start_time > ")#origtime
    elsif '?length = 5&page=1'
      return
    end

    head :ok
  end

  def create
    # TODO:
    return @doctors = Doctors.where(Appointment.doctors != Doctor)
  end
end
