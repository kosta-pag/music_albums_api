class Album < ApplicationRecord
  def url
    Rails.application.routes.url_helpers.album_url(self, format: :json)
  end
end
