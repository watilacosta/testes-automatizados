# frozen_string_literal: true

require 'student'
require 'course'

describe 'stub' do
  let!(:student) { Student.new }
  let!(:course)  { Course.new }

  it '#student_finished' do
    # permite que student receba um metodo finished?,
    # passando o parametro course
    allow(student).to receive(:finished?).with(an_instance_of(Course))
                                         .and_return(true)

    student_finished_course = student.finished?(course)

    expect(student_finished_course).to be_truthy
  end

  it 'Argumento dinâmico' do
    allow(student).to receive(:foo) do |arg|
      if arg.eql?(:hello)
        'olá'
      elsif arg.eql?(:hi)
        'oi'
      end
    end

    expect(student.foo(:hello)).to eq('olá')
    expect(student.foo(:hi)).to eq('oi')
  end
end
