def valid_ip(ip_string)
  ip_elements = ip_string.split('.')
  return false if ip_elements.size != 4 #guard clause
  ip_elements.all? { |x| x.to_i.between?(0,255)}
end
