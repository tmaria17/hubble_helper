FactoryBot.define do
  factory :user do
    name { "Harry Potter" }
    email { "theboywholived@wizards.com" }
    password_digest { "Alohomora" }
  end
end
