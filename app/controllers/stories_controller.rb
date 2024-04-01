class StoriesController < ApplicationController
  def show
    story_id = '1500'
    public_key = ENV['PUBLIC_KEY']
    private_key = ENV['PRIVATE_KEY']
    ts = Time.now.to_i 
    hash = Digest::MD5.hexdigest("#{ts}#{private_key}#{public_key}")

    service = MarvelApiService.new(public_key: public_key, hash: hash, ts: ts)
    service.fetch_data(story_id)

    if service.story_data["data"]["results"].empty?
      render :not_found
    else
      story = service.story_data["data"]["results"][0]
      attributionText = service.attributionText
      render :show, locals: { characters: service.characters, story: story, attributionText: attributionText }
    end
  end
end