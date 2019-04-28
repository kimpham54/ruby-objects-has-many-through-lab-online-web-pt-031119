class Appointment
attr_accessor :date

  @@all = []

def initialize(date, patient, doctor)
  @@all << self

end
