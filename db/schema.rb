# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2017_10_02_081526) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "metrics", force: :cascade do |t|
    t.date "metric_date"
    t.text "charge_type"
    t.text "app_title"
    t.decimal "revenue", precision: 10, scale: 2
    t.integer "number_of_charges"
    t.integer "number_of_shops"
    t.integer "repeat_customers"
    t.decimal "repeat_vs_new_customers", precision: 10, scale: 2
    t.decimal "average_revenue_per_shop", precision: 10, scale: 2
    t.decimal "average_revenue_per_charge", precision: 10, scale: 2
    t.decimal "shop_churn", precision: 10, scale: 2
    t.decimal "revenue_churn", precision: 10, scale: 2
    t.decimal "lifetime_value", precision: 10, scale: 2
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["metric_date", "charge_type"], name: "metrics_date_and_charge_type_index"
    t.index ["metric_date"], name: "index_metrics_on_metric_date"
  end

  create_table "payment_histories", force: :cascade do |t|
    t.date "payment_date"
    t.text "charge_type"
    t.text "app_title"
    t.text "shop"
    t.decimal "revenue", precision: 8, scale: 2
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "shop_country"
    t.index ["payment_date", "charge_type"], name: "payment_histories_date_and_charge_type_index"
    t.index ["payment_date"], name: "index_payment_histories_on_payment_date"
  end

end
