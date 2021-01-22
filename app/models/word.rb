# frozen_string_literal: true

class Word < ApplicationRecord
end

# == Schema Information
#
# Table name: words
#
#  id         :bigint           not null, primary key
#  ebody      :string
#  cbody      :string
#  status     :integer
#  level      :integer
#  user_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
