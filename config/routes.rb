Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })

  get("/square_root/:id", { :controller => "calculations", :action => "square_root" })

  get("/random/:lo/:hi", { :controller => "calculations", :action => "random" })

  get("/payment/:rate/:year/:principal", { :controller => "calculations", :action => "payment" })
end
