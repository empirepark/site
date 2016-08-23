class StaticPage < ApplicationRecord
  belongs_to :media_asset, inverse_of: nil
end
