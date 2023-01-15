require 'spec_helper'

describe "students/index" do
  it "has a list of student names" do
    fake_student = stub_model Student, name: 'Lichard'
    assign(:students, [fake_student])
    render
    expect(rendered).to include('Lichard')
  end
end

describe 'students/show' do
  it 'has the name of the student' do
    fake_student = stub_model Student, name: 'Lichard'
    time1 = "2001-01-01 13:13:13".to_datetime
    time2 = "2014-01-01 12:12:12".to_datetime
    fake_check_ins = [
      stub_model(CheckIn, time: time1),
      stub_model(CheckIn, time: time2)
    ]
    assign(:student, fake_student)
    assign(:check_ins, fake_check_ins)
    render
    expect(rendered).to include('Lichard')
    expect(rendered).to include(time1.to_s(:db))
  end
end
