#Main Platform Stripe Keys - Enter manually according to catarse_stripe README or add to seeds.db - 
#As it stands, because of Stripe Connect, the only key being referred to here is the Main Platform App key 'stripe_client_id' in Omniauth.rb
Rails.configuration.stripe = {
  :publishable_key => (::Configuration['stripe_api_key']),
  :secret_key      => (::Configuration['stripe_secret_key']),
  :stripe_client_id => (::Configuration['stripe_client_id'])
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
STRIPE_PUBLIC_KEY = Rails.configuration.stripe[:publishable_key]
STRIPE_CLIENT_ID = Rails.configuration.stripe[:stripe_client_id]

#Stripe.api_key = ENV['STRIPE_API_KEY'] #PROJECT secret
#STRIPE_PUBLIC_KEY = ENV['STRIPE_PUBLIC_KEY'] #PROJECT publishable
#STRIPE_CLIENT_ID = ENV['STRIPE_CLIENT_ID'] #Platform owner app key