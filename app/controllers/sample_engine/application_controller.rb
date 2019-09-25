module SampleEngine
  class ApplicationController < ActionController::Base
    include Applogic::ApplicationHelper
    skip_before_action :verify_authenticity_token
    # protect_from_forgery unless: -> { request.format.json? }
    # protect_from_forgery with: :exception
  end
end
