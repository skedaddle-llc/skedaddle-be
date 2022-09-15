class Park

  attr_reader :name,
              :city,
              :state,
              :country,
              :description,
              :directions,
              :lat,
              :lon

  def initialize(data)
    @name = data[:name]
    @city = data[:city]
    @state = data[:state]
    @country = data[:country]
    @description = data[:description]
    @directions = data[:directions]
    @lat = data[:lat]
    @lon = data[:lon]
  end

end