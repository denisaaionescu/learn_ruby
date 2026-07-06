def measure(n = 1)
  if n <=0 
    puts "Error: n must be greater than 0"
    return nil
  end
  start_time = Time.now
  n.times { yield }
  end_time = Time.now
  (end_time - start_time) / n
end 