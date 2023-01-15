run_true = Proc.new { puts "Success! #{Time.now - 1_500}" }
run_false = Proc.new { puts "Failure! #{puts Time.now + 1_500_000}" }

def do_it on_success, on_failure
  success = rand(10) < 5
  if success
    on_success.call
  else
    on_failure.call
  end
end

do_it(run_true, run_false)


### MOAR COMPLICATED!

require 'thread'

on_success = "Success!"
on_failure = "Failure!"
callback = Proc.new { |msg, time| puts "#{msg} at #{time}" }
def do_it on_success, on_failure, callback
  def perform_operation
    sleep rand*5
  end
  Thread.new do
    success = rand(10) < 5
    # A wild operator appears! Google "ternary operator"
    message = success ? on_success : on_failure
    perform_operation
    callback.call(message, Time.now)
  end
  puts "Be patient, this may take a few seconds."
end

do_it(on_success, on_failure, callback)

# Try to describe what is going on!
