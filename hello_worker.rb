# Worker code can be anything you want.
puts "Starting HelloWorker at #{Time.now}"
puts 'Simulating hard work...'
5.times do |i|
  puts "Sleep #{i}..."
  sleep 0.5
end
puts "HelloWorker completed at #{Time.now}"
