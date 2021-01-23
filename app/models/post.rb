# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :user
  has_rich_text :content
  before_save :set_count

  def set_count
    Rails.logger.info self
    Rails.logger.info self.count

    self.count = content.body.to_plain_text.scan(/\w+/).size
  end
end

# == Schema Information
#
# Table name: posts
#
#  id         :bigint           not null, primary key
#  status     :integer
#  user_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  count      :integer
#
