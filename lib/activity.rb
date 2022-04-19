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

  def split
    total_cost.to_f / @participants.count
  end

  def owed
    amount_owed = {}
    @participants.each do |participant, value|
      amount_owed[participant] = (split - value)
    end
    amount_owed
  end
end
