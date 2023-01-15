# When do validations happen?

```ruby
u = User.new
u.new_record?
u.save #When we call.save on an object.
u.new_record?
```
Also, when we call:

```ruby
u.create
u.create!   # Bang raises exception when validation fails
u.save      # Non bang raises no exception when validation fails
u.save!
u.update
u.update!

u.save(validate:false)  # Skips validation
```


# How do we write them?

In a variety of ways.  Here is one:

```ruby
class User < ActiveRecord::Base
  validates :name, presence: true
end

```


We can test whether or not an object is valid:

```ruby
# Assuming we are validating for the presence of name

nameless = User.create(name: nil)
nameless.valid? # => false

named = User.create(name: "Lichard Tray")
named.valid? # => true

```

We can also write more complex validations:

```ruby
class User < ActiveRecord::Base
  validates :name, presence: true
  # Checks to see that TOS checkbox has been selected.
  validates :terms_of_service, acceptance: true
  # Checks that email and email_confirmation fields are a match.  Also validates on uniquenss of email address.
  validates :email, confirmation: true, uniqueness: true
  # checks that password length is within specified range
  validates :password, :length => {:within => 10..20, :wrong_length => "a custom wrong length message"} #can also specify :too_short and :too_long messages.

end

```



# How can we show what errors have prevented validation:

```ruby
# _errors.html.erb
<% if @user.errors.any? %>
  <div id="errors">
    <p class="error-count">
      The form contains <%= pluralize(@user.errors.count, "error") %>.
    </p>
    <ul class="error-list">
    <% @user.errors.full_messages.each do |msg| %>
      <li><%= msg %></li>
    <% end %>
    </ul>
  </div>
<% end %>

```

# Custom validations

The convention is to place custom validators under `app/validators`

```ruby
# app/validators/simple_email_validator.rb
class SimpleEmailValidator < ActiveModel::EachValidator
  def validate_each (record, attribute, value)
    unless value.include?("@")
      record.errors[attribute] << (options[:message] || "Doesn't pass even the most simple validation")
    end
  end
end

```


```ruby
# apps/validators/email_validator.rb
class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "not an email")
    end
  end
end

```

We then call our validator in the model:

```ruby
class User < ActiveRecord::Base
  has_secure_password
  validates :email , simple_email: true, email: true
end

```
