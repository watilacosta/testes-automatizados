# frozen_string_literal: true

require_relative '../helpers/composicao_helper'

RSpec.configure do |config|
  config.include ComposicaoHelper

  config.define_derived_metadata do |meta|
    meta[:aggregate_failures] = true
  end

  # config.before(:suite) do
  #   puts 'Rodando antes de toda suite de testes'
  # end

  # config.after(:suite) do
  #   puts 'Rodando depois de toda suite de testes'
  # end

  # config.before(:context) do
  #   puts 'Rodando antes de todos os contextos'
  # end

  # config.after(:all) do
  #   puts 'Rodando depois de todos os contextos'
  # end

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end
