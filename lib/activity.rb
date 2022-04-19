class Activity
  attr_reader :name,
              :participants

  def initialize(name)
    @name = name
    @participants = {}
  end

  def add_participant(participant, cost)
    @participants[participant] = cost
  end

  def total_cost
    cost = 0
    @participants.each do |key, value|
      cost += value
    end
    cost
  end

end


# For the `split` method, it is assumed that the cost is evenly distributed amongst participants. It should be the total cost divided by the number of participants.

# For the `owed` method, the amount each person owes is the difference between what they paid and the `split`. If a participant paid less than their fair share they owe a positive amount. If a participant paid more than their fair share they owe a negative amount (meaning they are owed money).
