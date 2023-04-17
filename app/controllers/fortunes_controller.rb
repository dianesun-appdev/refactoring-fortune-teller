class FortunesController < ApplicationController
  def horoscopes
    @selected_sign = params[:the_sign].to_sym
    @selected_hash = Zodiac.list[@selected_sign]

    @zodiac_name = @selected_hash[:name]
    @zodiac_horoscope = @selected_hash[:horoscope]

    
    @array_of_numbers = Array.new

    5.times do
      another_number = rand(1...100)
      
      @array_of_numbers.push(another_number)
    end

    render(:template => "/fortunes_templates/horoscope.html.erb")
  end
end
