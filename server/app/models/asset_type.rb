# == Schema Information
#
# Table name: asset_types
#
#  id                   :integer          not null, primary key
#  name                 :string           not null
#  description          :string
#  thumbnail_dimensions :string           default("100x100")
#  min_dimensions       :string
#  max_dimensions       :string
#  optimize             :boolean
#  allowed_filetypes    :string           not null
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class AssetType < ApplicationRecord
end
