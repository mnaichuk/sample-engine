# encoding: UTF-8
# frozen_string_literal: true

module SampleEngine
  class PollGeneratorWorker
    include Sidekiq::Worker
    DISHES = %i[ice-cream burger banana apple pasta fried-rice bread pizza pancakes bagel muffins cheese potato]

    def perform
      logger.info { 'Generate new vote' }

      Poll.create!("topic": "Do you like ice #{DISHES.sample}?", "vote_options_attributes": [{"title": "yes"}, {"title": "no"}, {"title": "I don't know"}])
    end
  end
end
