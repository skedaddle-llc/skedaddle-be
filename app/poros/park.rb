# frozen_string_literal: true

class Park
  attr_reader :name,
              :city,
              :state,
              :country,
              :description,
              :directions,
              :lat,
              :lon,
              :activities,
              :url,
              :thumbnail

  def initialize(data)
    @name = nil_check(data[:name])
    @city = nil_check(data[:city])
    @state = nil_check(data[:state])
    @country = nil_check(data[:country])
    @description = nil_check(data[:description])
    @directions = nil_check(data[:directions])
    @lat = nil_check(data[:lat])
    @lon = nil_check(data[:lon])
    @activities = data[:activities] ? data[:activities].keys.map(&:to_s) * ', ' : 'Not found'
    @url = data[:activities] ? data[:activities].values.first[:url] : 'Not found'
    @thumbnail = data[:activities] ? data[:activities].values.first[:thumbnail] : 'Not found'
  end

  def nil_check(attribute)
    ['', nil].include?(attribute) ? 'Not found' : attribute
  end
end
