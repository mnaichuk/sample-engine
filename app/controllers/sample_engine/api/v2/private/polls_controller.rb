# encoding: UTF-8
# frozen_string_literal: true

module SampleEngine
  module Api
    module V2
      module Private
        class PollsController < BaseController
          def index
            json_response({ polls: Poll.all }, 200)
          end
        end
      end
    end
  end
end
