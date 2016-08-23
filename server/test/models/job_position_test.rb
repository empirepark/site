# == Schema Information
#
# Table name: job_positions
#
#  id                 :integer          not null, primary key
#  slug               :string           not null
#  status             :string           default("draft")
#  title              :string           not null
#  job_category_id    :integer          not null
#  labels             :string
#  time_commitment    :string
#  description        :text
#  responsibilities   :text
#  requirements       :text
#  apply_instructions :text
#  published_at       :datetime
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
# Indexes
#
#  index_job_positions_on_job_category_id  (job_category_id)
#  index_job_positions_on_slug             (slug) UNIQUE
#
# Foreign Keys
#
#  fk_rails_c28ec4ee07  (job_category_id => job_categories.id)
#

require 'test_helper'

class JobPositionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
