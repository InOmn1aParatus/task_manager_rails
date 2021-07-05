require 'rails_helper'

RSpec.describe Task, type: :model do
  describe 'instance methods' do
    describe '#laundry?' do
      it "returns true if task title is 'laundry'" do
        task = Task.create!(title: 'laundry', description: 'clean the clothes')

        expect(task.laundry?).to be(true)
      end
    end
  end
  describe 'class methods'
  describe 'relationship'
  describe 'validations'
end