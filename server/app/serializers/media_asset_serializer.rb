class MediaAssetSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :internal_notes, :url, :created_at, :updated_at
end
