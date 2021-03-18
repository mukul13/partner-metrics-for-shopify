class AddShopCountryToPayments < ActiveRecord::Migration[6.0]
  def change
    add_column :payment_histories, :shop_country, :string
  end
end
