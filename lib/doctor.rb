class Doctor

  attr_accessor :name


  @@all = []

  def initialize(name)
    @name = name

    @@all << self

  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    # given a date and a patient, creates a new appointment
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select { |appointment| appointment.doctor == self}
    # binding.pry
  end

  def patients
    appointments.map { |appointment| appointment.patient }
  end

end
