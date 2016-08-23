# == Schema Information
#
# Table name: static_pages
#
#  id             :integer          not null, primary key
#  sort_order     :integer          not null
#  slug           :string           not null
#  status         :string           default("draft")
#  title          :string           not null
#  content        :text
#  media_asset_id :integer
#  published_at   :datetime
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_static_pages_on_media_asset_id  (media_asset_id)
#  index_static_pages_on_slug            (slug) UNIQUE
#
# Foreign Keys
#
#  fk_rails_d1f8aee58d  (media_asset_id => media_assets.id)
#

require 'test_helper'

class StaticPageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
