# frozen_string_literal: true

namespace :recipes do
  desc 'Seed recipes'
  task seed: :environment do
    100.times do
      Recipe.create!(title: Faker::Food.dish, description: Faker::Food.description)
    end
  end
end
