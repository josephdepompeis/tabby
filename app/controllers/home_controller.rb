class HomeController < ApplicationController

  def new
  end

  def create
      @survey = Survey.create!(survey_params)
end


  def form
    @survey = Survey.new
    if request.post?
      redirect_to home_create
  end

  private def survey_params
    params.require(:survey).permit(:name, :chocolate, :puppies, :rainbows, :cash)
  end
end
