# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :user
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
#
