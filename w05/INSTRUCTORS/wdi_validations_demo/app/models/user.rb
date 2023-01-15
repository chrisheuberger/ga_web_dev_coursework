class User < ActiveRecord::Base
  has_secure_password
  validates :email,  presence: true, confirmation: true, uniqueness: true, email: true
  validates :terms_of_service, acceptance: true
  validates :password, length: {within: 10..20, too_short: "THE LENGTH IS TOO SHORT HOMIE", too_long: "THE LENGTH IS TOO LONG"}
end
