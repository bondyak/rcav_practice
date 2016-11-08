class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square_root
    @num = params[:id].to_f.round(2)
    @result = Math.sqrt(@num).round(2)
  end

  def random
    @low = params[:lo].to_i
    @low_adj = @low + 1
    @high = params[:hi].to_i
    @result = rand(@low_adj...@high)
  end

  def payment
    @apr = params[:rate].to_f
    @apr = @apr / 100
    @year = params[:year].to_i
    @principal = params[:principal].to_f.round(0)

    @rate = @apr/100/12

    @result = (@rate*@principal)/(1 - (1+@rate)**(-@year*12))
    @result = @result.round(2)
  end

end
