# For the `breakout` method,
# the key is a person's name and
# the value is what they owe for the whole reunion. T
#his should be the combination of what they owe from all activities.
# Again, a negative value means they are owed money. In the following example, `"Maria"` owes 10 from brunch and is owed 20 from drinks, so her final amount owed in the breakout is -10.

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
end
