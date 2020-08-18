# frozen_string_literal: true

class Contador # :nodoc:
  @qtd = 0

  def self.quantidade
    @qtd
  end

  def self.incrementa
    @qtd += 1
  end
end
