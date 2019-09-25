# encoding: UTF-8
# frozen_string_literal: true

module SampleEngine
  module Api
    module V2
      module Public
        class PollsController < BaseController
          def index
            json_response({ polls: Poll.all }, 200)
          end

          def show
            poll = Poll.find_by_id(params[:id])

            result = poll.vote_options.each_with_object({}) do |option, result|
              result.merge!(option.title => poll.normalized_votes_for(option))
            end
            if poll.present?
              json_response({ poll.topic => result }, 200)
            else
              json_response({}, 200)
            end
          end
        end
      end
    end
  end
end
