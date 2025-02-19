# frozen_string_literal: true

module Workflows
  class NestedForms::ApplicationController < ApplicationController
    before_action :set_nested_form

    protected

      # Use callbacks to share common setup or constraints between actions.
      def set_nested_form
        @nested_form = @workflow.nested_forms.find(params[:nested_form_id])
      end
  end
end
