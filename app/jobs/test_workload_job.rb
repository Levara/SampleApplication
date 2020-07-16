class TestWorkloadJob < ApplicationJob
  queue_as :urgent

  def perform(*args)
    puts "======================================"
    puts args

    # Do something later
  end
end
