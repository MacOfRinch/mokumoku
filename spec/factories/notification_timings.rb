# frozen_string_literal: true
TIMING = 1
FactoryBot.define do
  factory :notification_timing do
    timing { TIMING }
  end
end
