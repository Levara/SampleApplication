class TestWorkloadJob < ApplicationJob
  queue_as :urgent

  def perform(user: nil, duration: 20)
    if user.nil? 
      puts  "TODO: bacanje greske ako nema useraa"
    end
      
    job = user.my_jobs.create(title: "Task od #{duration} sekundi", start: DateTime.now)

    `sleep #{duration}`

    job.end = DateTime.now
    job.save
  end

end
