class Quote < ActiveRecord::Base
  serialize :quotes, Array
end
