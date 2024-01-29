require "rails_helper"

RSpec.describe Task do
  describe "instance methods" do
    describe "#laundry?" do
      it "returns true when title is laundry" do
        task = Task.create!(title: "laundry", description: "clean clothes")

        expect(task.laundry?).to be true
      end

      it "returns false when title is not laundry" do
        task = Task.create!(title: "cook", description: "make dinner")

        expect(task.laundry?).to be false
      end

      it "returns false when neither the description nor title is laundry" do
        task = Task.create!(title: "cook", description: "make dinner")

        expect(task.laundry?).to be false
      end

      it "returns true when the title contains the word laundry" do
        task = Task.create!(title: "cook", description: "make dinner")

        expect(task.laundry?).to be false
      end

      it "is case insensitive when checking if the title contains the word laundry" do
        task = Task.create!(title: "cook", description: "make dinner")

        expect(task.laundry?).to be false
      end

      it "returns true when the description contains the word laundry" do
        task = Task.create!(title: "cook", description: "make dinner and do laundry")

        expect(task.laundry?).to be true
      end

      it "is case insensitive when checking if the description contains the word laundry" do 
        task = Task.create!(title: "cook", description: "Make dinner and do Laundry")

        expect(task.laundry?).to be true
      end
    end
  end
end