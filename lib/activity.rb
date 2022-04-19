# For the `add_participant` method, the first argument represents the name of someone who participated in the activity, and the second argument represents how much they paid for the activity.

class Activity
  attr_reader :name,
              :participants

  def initialize(name)
    @name = name
    @participants = {}
  end

  def add_participant(participant, cost)
    @participants = {participant => cost}
  end

  def total_cost
    cost = 0
    @participants.each do |key, value|
      cost += value
    end
    cost
  end

end
