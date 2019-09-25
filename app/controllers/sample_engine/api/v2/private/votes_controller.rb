# encoding: UTF-8
# frozen_string_literal: true

module SampleEngine
  module Api
    module V2
      module Private
        class VotesController < BaseController
          def create
            if params['poll'] && params['poll']['id'] && params['vote_option'] && params['vote_option']['id']
              poll = Poll.find_by_id(params[:poll][:id])
              option = poll.vote_options.find_by_id(params[:vote_option][:id])

              vote = Vote.new(vote_option_id: option.id)

              if vote.save
                json_response({ result: 'ok' }, 201)
              else
                json_response({ error: vote.errors.full_messages }, 200)
              end
            end
          end
        end
      end
    end
  end
end
