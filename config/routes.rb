Rails.application.routes.draw do
  get("/", {:controller=> "omnicalc", :action =>"homepage"}) 
  get("/square/results", {:controller=> "omnicalc", :action =>"square"})
  get("/square/new", {:controller=> "omnicalc", :action =>"homepage"}) 
  get("/square_root/new", {:controller=> "omnicalc", :action =>"squareRootNew"}) 
  get("/square_root/results", {:controller=> "omnicalc", :action =>"squareRootCalc"}) 
  get("/payment/new", {:controller=> "omnicalc", :action =>"paymentNew"}) 
  get("/payment/results", {:controller=> "omnicalc", :action =>"paymentCalc"}) 
  get("/random/new", {:controller=> "omnicalc", :action =>"randomNew"}) 
  get("/random/results", {:controller=> "omnicalc", :action =>"randomCalc"}) 
end
