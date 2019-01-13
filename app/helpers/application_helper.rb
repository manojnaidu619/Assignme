module ApplicationHelper

  def get_deadline(work)
    @work = work
    if work.work_end_at
     day = @work.work_end_at.strftime("%A")
     date = @work.work_end_at.day
     month = @work.work_end_at.strftime("%b")
     return [day,date,month].join(' ')
    # Datetime formatting : https://hackhands.com/format-datetime-ruby/
    end
  end
  
end
