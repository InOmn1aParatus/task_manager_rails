require 'rails_helper'

RSpec.describe Task, type: :model do
  describe 'instance methods' do
    describe '#laundry?' do
      it "returns true if task title is 'laundry'" do
        task = Task.create!(title: 'laundry', description: 'clean the clothes')

        expect(task.laundry?).to be(true)
      end

      it 'returns true when the description is laundry' do
        task = Task.create!(title: 'Clean my clothes', description: 'laundry')

        expect(task.laundry?).to be(true)
      end

      it 'returns false when neither the description nor title is laundry' do
        task = Task.create!(title: 'Whirly', description: 'Dirly')

        expect(task.laundry?).to be(false)
      end

      it 'returns true when the title contains the word laundry' do
        task = Task.create!(title: 'Do the laundry', description: 'And do it well')

        expect(task.laundry?).to be(true)
      end

      it 'is case insensitive when checking if the title contains the word laundry' do
        task = Task.create!(title: 'LaUnDrY', description: 'Do the laundry')

        expect(task.laundry?).to be(true)
      end

      it 'returns true when the description contains the word laundry' do
        task = Task.create!(title: 'Laundry', description: 'Do the laundry')

        expect(task.laundry?).to be(true)
      end

      it 'is case insensitive when checking if the description contains the word laundry' do
        task = Task.create!(title: 'Laundry', description: 'LaUnDrY must be done')

        expect(task.laundry?).to be(true)
      end
    end
  end
  describe 'class methods'
  describe 'relationship'
  describe 'validations'
end