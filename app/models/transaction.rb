class Transaction < OpenStruct
  ATTRIBUTES = %w[
    x_url_callback
    x_url_complete
    x_url_cancel
    x_account_id
    x_amount
    x_currency
    x_reference
    x_shop_country
    x_shop_name
    x_description
    x_customer_first_name
    x_customer_last_name
    x_customer_email
    x_customer_phone
    x_customer_shipping_first_name
    x_customer_shipping_last_name
    x_customer_shipping_city
    x_customer_shipping_address1
    x_customer_shipping_address2
    x_customer_shipping_state
    x_customer_shipping_zip
    x_customer_shipping_country
    x_customer_shipping_phone
    x_customer_billing_first_name
    x_customer_billing_last_name
    x_customer_billing_city
    x_customer_billing_address1
    x_customer_billing_address2
    x_customer_billing_state
    x_customer_billing_zip
    x_customer_billing_country
    x_customer_billing_phone
    x_customer_taxid
    x_signature
  ].freeze

  include ActiveModel::Validations
  validates :x_url_callback,
            :x_url_complete,
            :x_url_cancel,
            :x_account_id,
            :x_amount,
            :x_currency,
            :x_reference,
            :x_signature,
            presence: true
end
