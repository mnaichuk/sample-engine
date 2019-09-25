# encoding: UTF-8
# frozen_string_literal: true

module SampleEngine
  module Api
    module V2
      module Private
        class BaseController < ApplicationController
          include Applogic::UserHelper
          before_action :auth_user!
        end
      end
    end
  end
end
