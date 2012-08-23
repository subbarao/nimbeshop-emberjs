class PictureSerializer < ActiveModel::Serializer
  attributes :id

  def attributes
    hash = super

    %w(small medium tiny large tiny_plus).inject(hash) do | hash, size |
      hash.update("#{size}_url" => object.send(:picture_url, size))
    end
  end
end
