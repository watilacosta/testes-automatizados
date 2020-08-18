# frozen_string_literal: true

class Pessoa # :nodoc:
  attr_accessor :nome, :idade
  attr_reader :status

  def feliz!
    @status = 'Sentindo-se feliz!'
  end

  def irritada!
    @status = 'Sentindo-se irritada!'
  end
end
