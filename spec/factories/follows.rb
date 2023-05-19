FOLLOWER_ID = 1
FOLLOWING_ID = 1

FactoryBot.define do
  factory :follow do
    follower_id { FOLLOWER_ID }
    following_id { FOLLOWING_ID }
  end
end
