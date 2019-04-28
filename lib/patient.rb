class Patient
attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

def self.all
  @@all
end

def new_appointment(date, doctor)
  Appointment.new(date, self, doctor)
end

def appointments
  Appointment.all.select {|item| item.patient == self}
  #  do |item|
  #   if item.patient == self
  #     item
  #   end
  # end
end

def doctors
  Appointment.all.map do |item|
    if item.patient == self
      item.doctor
    end
  end
end


end
