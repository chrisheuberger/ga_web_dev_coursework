class Palette < ActiveRecord::Base
  serialize :colors, Array
end
