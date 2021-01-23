# frozen_string_literal: true

module ApplicationHelper
  def nav_active(data)
    params[:controller] == data ? ' active' : ''
  end

  def post_count
    current_user&.posts&.sum(:count) || 0
  end
end
