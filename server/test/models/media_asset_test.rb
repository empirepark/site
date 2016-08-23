# == Schema Information
#
# Table name: media_assets
#
#  id             :integer          not null, primary key
#  title          :string           not null
#  description    :text
#  internal_notes :text
#  url            :string           not null
#  asset_type_id  :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_media_assets_on_asset_type_id  (asset_type_id)
#
# Foreign Keys
#
#  fk_rails_885090f3bb  (asset_type_id => asset_types.id)
#

require 'test_helper'

class MediaAssetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
