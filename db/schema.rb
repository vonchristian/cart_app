# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170713115538) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "codes", force: :cascade do |t|
    t.string "code"
    t.decimal "percent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "promo_code_type"
    t.decimal "amount"
    t.index ["code"], name: "index_codes_on_code", unique: true
  end

  create_table "line_items", force: :cascade do |t|
    t.string "itemable_type"
    t.bigint "itemable_id"
    t.bigint "order_id"
    t.bigint "cart_id"
    t.decimal "unit_cost"
    t.decimal "total_cost"
    t.decimal "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cart_id"], name: "index_line_items_on_cart_id"
    t.index ["itemable_type", "itemable_id"], name: "index_line_items_on_itemable_type_and_itemable_id"
    t.index ["order_id"], name: "index_line_items_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_promotions", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "promotion_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "product_quantity"
    t.decimal "promo_price"
    t.boolean "free", default: false
    t.index ["product_id"], name: "index_product_promotions_on_product_id"
    t.index ["promotion_id"], name: "index_product_promotions_on_promotion_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.decimal "price"
    t.decimal "data_size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_products_on_code", unique: true
    t.index ["name"], name: "index_products_on_name", unique: true
  end

  create_table "promotion_codes", force: :cascade do |t|
    t.bigint "cart_id"
    t.bigint "code_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cart_id"], name: "index_promotion_codes_on_cart_id"
    t.index ["code_id"], name: "index_promotion_codes_on_code_id"
  end

  create_table "promotions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "line_items", "carts"
  add_foreign_key "line_items", "orders"
  add_foreign_key "product_promotions", "products"
  add_foreign_key "product_promotions", "promotions"
  add_foreign_key "promotion_codes", "carts"
  add_foreign_key "promotion_codes", "codes"
end
