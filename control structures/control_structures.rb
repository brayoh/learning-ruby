#   requirements: pass in 3 variables
#   @param {tyre_type} string
#   @param {model} string
#   @param {engine_type} string
#   and get the car processed

class Car
  @@number_of_wheels = 4

  def initialize(model, engine_type, tyre_type)
    @model = model
    @engine_type = engine_type
    @tyre_type = tyre_type
  end

  def self.get_origin(model)
    country_of_origin = ''
    case model
    when model = 'Subaru Legacy'
      return country_of_origin = 'Japan'
    when model = 'Mercedes S Class'
      return country_of_origin = 'Germany'
    else
      return 'unrecognized'
    end
   end

  def process
    origin = self.class.get_origin(@model)
    puts "Car is been processed"
    print <<-EOF
        "************"
          "Model:" #{@model}
        "************"

        "************"
          "Engine Type:" #{@engine_type}
        "************"

        "************"
          "Tyre Type:" #{@tyre_type}
        "************"

        "************"
          "No of Wheels:" #{@@number_of_wheels}
        "************"

        "************"
          "Country Of Origin:" #{origin}
        "************"

      EOF
  end

  def add_wheels
    @@number_of_wheels += 1
  end
end

mercedes = Car.new('Mercedes S Class', 'Dual XZF200', 'Yana')
mercedes.process

subaru = Car.new('Subaru Legacy', 'Trio XZF200', 'FireStone')
subaru.process
