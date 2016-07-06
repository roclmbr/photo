Rails.configuration.stripe = {

:publishable_key => 'pk_test_xuI1oa1SkGBUzFBK3e6I2nzC',

:secret_key => 'sk_test_suo1CZpOreDcsSlinTTQdVg4'

}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
