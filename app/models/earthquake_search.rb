class EarthquakeSearch
  attr_reader :date_form, :date_to
  
  def initialize(params)
    params||= {}
    @data_from = parsed_date(params[:date_form], 7.days.ago.to_date.to_s)
    @data_to = parsed_date(params[:date_to], Date.today.to_s)
  end 
    
  def scope 
    
      Earthquake. where('time BETWEEN ? AND ?', @date_form, @data_to)
  end
    
  private
    
    def parsed_date(date_string, default)
      Time.parse(date_string)
    rescue ArgumentError, TypeError
      default
    end
    
end 
