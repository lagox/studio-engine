#encoding:utf-8
module JobsHelper

  #site_navigation
  
  def next_job
    Ourportfolio.find(:first, :conditions => ["created_at < ?", @job.created_at], :limit => 1)
  end
  
  def prev_job
    Ourportfolio.find(:last, :conditions => ["created_at > ?", @job.created_at], :limit => 1)
  end
  
end
