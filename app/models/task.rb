class Task < ApplicationRecord

  def laundry?
    self.title.downcase.include?("laundry") || description.downcase.include?("laundry")
  end
end