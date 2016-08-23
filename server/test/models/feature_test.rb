# == Schema Information
#
# Table name: features
#
#  id             :integer          not null, primary key
#  sort_order     :integer          not null
#  status         :string           default("draft")
#  title          :string           not null
#  content        :text
#  media_asset_id :integer          not null
#  published_at   :datetime
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_features_on_media_asset_id  (media_asset_id)
#
# Foreign Keys
#
#  fk_rails_1dafc4d421  (media_asset_id => media_assets.id)
#

require 'test_helper'

class FeatureTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
