FactoryGirl.define do
  factory :user do
    name     "Nik Lolkopf"
    email    "lol@lol.loc"
    password "password"
    password_confirmation "password"
  end
end