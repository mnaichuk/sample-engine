# encoding: UTF-8
# frozen_string_literal: true

module SampleEngine
  module Api
    module V2
      module Admin
        class PollsController < BaseController
          def index
            json_response({ polls: Poll.all }, 200)
          end

          def show
            poll = Poll.find_by_id(params[:id])

            if poll.present?
              json_response({ result: poll }, 200)
            else
              json_response({}, 200)
            end
          end

          def create
            poll = Poll.new(poll_params)

            if poll.save
              json_response({ result: poll }, 201)
            else
              json_response({ error: poll.errors.full_messages }, 422)
            end

          end

          def update
            poll = Poll.find_by_id(params[:id])

            if poll.update_attributes(poll_params)
              json_response({ result: poll }, 201)
            else
              json_response({ error: poll.errors.full_messages }, 422)
            end

          end

          def destroy
            poll = Poll.find_by_id(params[:id])

            if poll.destroy
              json_response({ result: poll }, 201)
            else
              json_response({ error: 'applogic.poll.destroy_failed' }, 422)
            end
          end

          private

          def poll_params
            params.permit(:topic, vote_options_attributes: [:id, :title, :_destroy])
          end
        end
      end
    end
  end
end
