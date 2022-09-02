FactoryBot.define do
  factory :transaction do
    x_url_callback { 'https://yuri.jumpseller.com/checkout/external_payment_notification/1184' }
    x_url_complete { 'https://yuri.jumpseller.com/checkout/external_payment_complete/1184' }
    x_url_cancel { 'https://yuri.jumpseller.com/checkout/external_payment_cancel/1184' }
    x_account_id { '123' }
    x_amount { '15990.0' }
    x_currency { 'CLP' }
    x_reference { '1184' }
    x_shop_country { 'CL' }
    x_shop_name { 'yuri' }
    x_description { '\\nProduto:\\n1 x Garantia Extendida 36 Meses: $15.990' }
    x_customer_first_name { 'Yuri de' }
    x_customer_last_name { 'Correa' }
    x_customer_email { 'yuri.mcr@gmail.com' }
    x_customer_phone { '953064004' }
    x_customer_shipping_first_name { 'Yuri de' }
    x_customer_shipping_last_name { 'Correa' }
    x_customer_shipping_city { 'Alhué' }
    x_customer_shipping_address1 { 'Serrano 266 depto 2516' }
    x_customer_shipping_address2 { '' }
    x_customer_shipping_state { 'Região Metropolitana de Santiago' }
    x_customer_shipping_zip { '8330266' }
    x_customer_shipping_country { 'CL' }
    x_customer_shipping_phone { '953064004' }
    x_customer_billing_first_name { 'Yuri de' }
    x_customer_billing_last_name { 'Correa' }
    x_customer_billing_city { 'Alhué' }
    x_customer_billing_address1 { 'Serrano 266 depto 2516' }
    x_customer_billing_address2 { '' }
    x_customer_billing_state { 'Região Metropolitana de Santiago' }
    x_customer_billing_zip { '8330266' }
    x_customer_billing_country { 'CL' }
    x_customer_billing_phone { '953064004' }
    x_customer_taxid { '' }
    x_signature { 'ce751ac4a1dfc85aed2d311d0712f770923c4ea14abff6e026c9ecf0f4776534' }
    trait :without_x_signature do
      x_signature { nil }
    end
  end
end