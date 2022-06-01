# frozen_string_literal: true

require 'action_controller'

module UnderscorizeParams
  module Controller
    extend ActiveSupport::Concern

    included do
      before_action :underscore_params!
    end

    private

    def underscore_params!
      params.instance_variable_get(:@parameters).deep_transform_keys!(&:underscore)
    end
  end
end

ActionController::Base.include UnderscorizeParams::Controller if defined?(ActionController::Base)
