
class RaceCar	< ActiveRecord::Base
	enum_attr :gear, %w(reverse ^neutral first second over_drive)
	enum_attr :choke, %w(^none medium full)

  attr_accessor :non_active_record_attribute

  def license_plate_number=(value)
    value = value.strip # remove whitespace from start and end of value
    write_attribute(:license_plate_number, value)
  end
end

#gear = enumerated column attribute
#choke = enumerated non-column attribute
#lights = non-enumerated column attribute

=begin
	t.string :name
	t.string :gear
	t.string :lights
=end
