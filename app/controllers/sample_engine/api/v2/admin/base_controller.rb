# encoding: UTF-8
# frozen_string_literal: true

module SampleEngine
  module Api
    module V2
      module Admin
        class BaseController < ApplicationController
          include Applogic::AdminHelper
          before_action :auth_admin!
        end
      end
    end
  end
end
