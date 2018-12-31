class Api::EmployeesController < ApplicationController
  before_action :allow_remote

  def index
    @employees = Employee.all
  end


  private

  def allow_remote
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
    headers['Access-Control-Request-Method'] = '*'
    headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
  end

end



# [{:name=>"Taimoor", :salary=>909000, :gender=>"Male", :designation=>"PSE", :code=>"101"}, {:name=>"Afzal", :salary=>209000, :gender=>"Male", :designation=>"PHP PSE", :code=>"120"}, {:name=>"Sana", :salary=>40000, :gender=>"Female", :designation=>"ASE", :code=>"33"}, {:name=>"Warda", :salary=>77090000, :gender=>"Female", :designation=>"PM", :code=>"890"}, {:name=>"Shehroz", :salary=>66000, :gender=>"Male", :designation=>"SE", :code=>"109"}, {:name=>"Tina", :salary=>68000, :gender=>"Female", :designation=>"SE", :code=>"109"}, {:name=>"Robi", :salary=>446000, :gender=>"Female", :designation=>"SE", :code=>"109"}]
