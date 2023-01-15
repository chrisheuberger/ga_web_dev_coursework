# def valid_ip(string)
# end

# Matt's solution
def valid_ip(string)
  elements = string.scan(/\d+/)
  elements.select! {|num| num.to_i.between?(0,255)}
  elements.length == 4
end

# Andrew's Solution
def valid_ip(string)
  num_array = string.split('.')
  num_array.length == 4 && num_array.max <= '255' && num_array.min >= '0'
end

# Aldric's Solution
def valid_ip(ip_string)
  ip_elements = ip_string.split('.')
  return false if ip_elements.size != 4
  ip_elements.all? { |x| x.to_i.between?(0, 255) }
end

# Paul G
def valid_ip(string)
  if (/\b(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\b/).match(string)
    return true
  else
    return false
  end
end

# JOHN MURPHY
def valid_ip(string)
  return false if string[/\A\d+\.\d+\.\d+\.\d+\z/] == nil
  array = string[/\A\d+\.\d+\.\d+\.\d+\z/].split(/\./)
  array.each do |num|
    if  0 < num.to_i && num.to_i < 255
    else
      return false
    end
  end
  return true
end

# MYSTERY INSTRUCTOR
def valid_ip(string)

  num_array = string.split(".")
  return false if num_array.length != 4
  num_array.each do |num|
    if num.to_i > 255 || num.to_i < 0
      return false
    end
  end
  true
end

# PUAL HIAM

def valid_ip(string)
  faults = 0
  string.split('.').each { |n| faults += 1 if n > '255'}
  faults == 0
end























