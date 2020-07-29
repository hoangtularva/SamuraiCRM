Rails.application.routes.draw do
  mount Samurai::Core::Engine => "/core"
end
