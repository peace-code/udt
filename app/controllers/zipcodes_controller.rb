class ZipcodesController < ApplicationController
  def index
  	@query = params[:term]

  	if @query
  		@zipcodes = Zipcode.any_of({bldg: /#{@query}/},{dong: /#{@query}/},{ri: /#{@query}/}).limit(10)
  	else
	    @zipcodes = Zipcode.all.limit(10)
		end
  end
end