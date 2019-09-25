module SampleEngine
  class VoteOption < ApplicationRecord
    belongs_to :poll
    validates :title, presence: true
    has_many :votes, dependent: :destroy
  end
end
