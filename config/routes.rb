CatarseStripe::Engine.routes.draw 
  namespace :payment do
    get '/stripe/:id/review' => 'stripe#review', :as => 'review_stripe'
    post '/stripe/notifications' => 'stripe#ipn',  :as => 'ipn_stripe'
    match '/stripe/:id/notifications' => 'stripe#notifications',  :as => 'notifications_stripe'
    match '/stripe/:id/pay'           => 'stripe#pay',            :as => 'pay_stripe'
    match '/stripe/:id/success'       => 'stripe#success',        :as => 'success_stripe'
    match '/stripe/:id/cancel'        => 'stripe#cancel',         :as => 'cancel_stripe'
  end
end