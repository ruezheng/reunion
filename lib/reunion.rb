class Reunion
  attr_reader :name,
              :activities

  def initialize(name)
    @name = name
    @activities = []
  end

  def add_activity(activity)
    @activities << activity
  end

  def total_cost
    reunion_cost = 0
    @activities.each do |activity|
      reunion_cost += activity.total_cost
    end
    reunion_cost
  end

  def breakout
    breakout_hash = {}
    @activities.each do |activity|
      breakout_hash[activity.participants] = (activity.owed + activity.total_cost)
    end
    breakout_hash
  end
end
