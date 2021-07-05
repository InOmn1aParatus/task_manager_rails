class Task < ApplicationRecord
  # create an instance method
  # which returns 'true' if task title is 'laundry'
  def laundry?
    if title == 'laundry'
      return true
    else
      return false
    end
  end
end