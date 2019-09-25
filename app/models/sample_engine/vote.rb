module SampleEngine
  class Vote < ApplicationRecord
    belongs_to :vote_option
  end
end
