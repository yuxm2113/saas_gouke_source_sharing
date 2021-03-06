# This file is autogenerated. Instead of editing this file, please use the
# migrations feature of ActiveRecord to incrementally modify your database, and
# then regenerate this schema definition.

ActiveRecord::Schema.define(:version => 2) do

  create_table "opinions", :force => true do |t|
    t.column "user_id",    :integer
    t.column "sign_id",    :integer
    t.column "type",       :integer
    t.column "content",    :text
    t.column "created_at", :datetime
  end

  create_table "signs", :force => true do |t|
    t.column "user_id", :integer
    t.column "type",    :integer
    t.column "tags",    :string,  :limit => 100
    t.column "src",     :string
    t.column "desc",    :text
  end

  create_table "users", :force => true do |t|
    t.column "login",                     :string
    t.column "email",                     :string
    t.column "crypted_password",          :string,   :limit => 40
    t.column "salt",                      :string,   :limit => 40
    t.column "created_at",                :datetime
    t.column "updated_at",                :datetime
    t.column "remember_token",            :string
    t.column "remember_token_expires_at", :datetime
    t.column "location",                  :string
    t.column "image_url",                 :string,                 :default => "images/song.png"
    t.column "about_me",                  :text
  end

end
