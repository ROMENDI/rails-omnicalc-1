class OmnicalcController < ApplicationController

  def homepage
    render({:template=>"calc_templates/homepage"})
  end 

  def square
  @the_num = params.fetch("users_number")
  @the_result = params.fetch("users_number").to_f ** 2
  render({:template=>"calc_templates/square_results"})
  end 

  def squareRootNew
    render({:template=>"calc_templates/square_root"})
  end 

  def squareRootCalc
    @the_num = params.fetch("users_number").to_f
    @the_result = Math.sqrt(@the_num)
    render({:template=>"calc_templates/square_root_results"})
  end

  def paymentNew
    render({:template=>"calc_templates/payment"})
  end 

  def paymentCalc
    apr = params.fetch("apr").to_f / 100
    years = params.fetch("years").to_i
    principal = params.fetch("principal").to_f
    monthly_rate = apr / 12
    months = years * 12
    payment = principal* (monthly_rate / (1 - (1 + monthly_rate) ** -months))

    @formatted_apr = (apr*100).to_fs(:percentage, {:precision => 4})
    @formatted_years = years.to_i
    @formatted_pv = principal.to_fs(:currency)
    @monthly_payment = payment.to_fs(:currency)
    render({:template=>"calc_templates/payment_results"})
  end

  def randomNew
    render({:template=>"calc_templates/random"})
  end 

  def randomCalc
    @min = params.fetch("min_number").to_f
    @max = params.fetch("max_number").to_f
    @the_result = rand(@min..@max)
    render({:template=>"calc_templates/random_results"})
  end
  
end 
