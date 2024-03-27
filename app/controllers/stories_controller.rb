class StoriesController < ApplicationController
    def show
      story_id = '1500'
      public_key = ENV['PUBLIC_KEY']
      private_key = ENV['PRIVATE_KEY']
      ts = Time.now.to_i 
      hash = Digest::MD5.hexdigest("#{ts}#{private_key}#{public_key}")
  
      service = MarvelApiService.new(public_key: public_key, hash: hash, ts: ts)
      story_data = service.fetch_story_details(story_id)
      characters = service.fetch_characters(story_id)
  
      if story_data["data"]["results"].empty?
        render :not_found
      else
        story = story_data["data"]["results"][0]
        attributionText = story_data["attributionText"]
      end
    end
end