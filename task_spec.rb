require "rails_helper"

RSpec.describe Task do
  describe "instance methods" do
    describe "#laundry?" do
      it "returns true when title is laundry" do
        task = Task.create!(title: "laundry", desciption: "clean clothes")

        expect(task.laundry?).to be true
      end

      it "returns false when title is not laundry" do
        task = Task.create!(title: "cook", desciption: "make dinner")

        expect(task.laundry?).to be false
      end
    end
  end
end