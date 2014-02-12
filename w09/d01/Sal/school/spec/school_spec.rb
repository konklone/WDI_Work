# School has students
# Each student has a GPA
# The school has an average GPA

require 'spec_helper'
require_relative '../lib/school'

describe School do
  let(:school) { School.new("Springfield Elementary") }

  describe '::new' do
    it 'creates a new school' do
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
    it "adds a student to the school" do
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

      it "doesn't find non existing students" do
        expect(school.find_student("Shmee Johnson")).to eq(nil)
      end
    end

    context "no students enrolled" do
      it "doesn't find anyone" do
        expect(school.find_student("Baloney Sandwich")).to eq(nil)
      end
    end
  end

  describe '#average_gpa' do
    context "multiple enrolled students" do
      before do
        school.enroll_student("Bart Simpson", 2.0)
        school.enroll_student("Lisa Simpson", 4.0)
      end

      it 'gives an average' do
        expect(school.average_gpa).to eq(3.0)
      end
    end
  end
end




