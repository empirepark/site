# == Schema Information
#
# Table name: programs
#
#  id             :integer          not null, primary key
#  slug           :string           not null
#  sort_order     :integer          not null
#  status         :string           default("draft")
#  title          :string           not null
#  cost           :string
#  audience       :string
#  media_asset_id :integer
#  excerpt        :text
#  content        :text
#  published_at   :datetime
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_programs_on_media_asset_id  (media_asset_id)
#  index_programs_on_slug            (slug) UNIQUE
#
# Foreign Keys
#
#  fk_rails_d9ffc886c0  (media_asset_id => media_assets.id)
#

require 'test_helper'

class ProgramTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
