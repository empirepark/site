# == Schema Information
#
# Table name: job_categories
#
#  id          :integer          not null, primary key
#  title       :string           not null
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class JobCategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
