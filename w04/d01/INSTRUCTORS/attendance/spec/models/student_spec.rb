require 'spec_helper'

describe Student do
  it 'has a name' do
    student = Student.new name: 'Deremy'
    expect(student.name).to eq 'Deremy'
  end

  it 'has many check-ins' do
    student = Student.create name: 'Lichard'
    5.times do
      CheckIn.create student: student, time: Time.now
    end
    expect(student.check_ins.length).to eq 5
  end

  it 'can add a check-in' do
    student = Student.create name: 'Lichard'
    check_in = student.check_in!
    expect(check_in).to be_instance_of CheckIn
  end
end
