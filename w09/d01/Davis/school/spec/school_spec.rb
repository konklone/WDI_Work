# school has students
# each student has a gpa
# school has average gpa

require 'spec_helper'
require_relative '../lib/school'

describe School do
  # let block defines 'variable' for use within testing
    # let sets up value
  # whenever test calls on block below, it is initializing everytime
  let(:school) { School.new("Springfield Elementary") }

  # :: for class method
  describe '::new' do

    it 'creates a new school' do
      # code example inside it block
      expect(school).to_not eq nil
    end

    it 'has a name' do
      expect(school.name).to eq("Springfield Elementary")
    end

    it 'has no students' do
      expect(school.students.count).to eq(0)
    end
  end

  describe '#enroll_student' do
    it 'adds a student to the school' do
      school.enroll_student("Bart Simpson", 2.5)
      expect(school.students.count).to eq(1)
    end
  end

  describe '#find_student' do
    context "Bart is enrolled" do
      before do
        school.enroll_student("Bart Simpson", 2.5)
      end

      it 'finds the student' do
        bart = school.find_student("Bart Simpson")
        expect(bart).to eq({name: "Bart Simpson", gpa: 2.5})
      end
    end

    it 'doesnt find non existing students' do
      expect(school.find_student("Shmee Johnson")).to eq(nil)
    end
  end

  describe '#average_gpa' do

  end
end