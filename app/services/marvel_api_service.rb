class MarvelApiService
    def initialize(public_key:, hash:, ts:)
      @public_key = public_key
      @hash = hash
      @ts = ts
    end
  
    def fetch_story_details(story_id)
      url = "https://gateway.marvel.com/v1/public/stories/#{story_id}?apikey=#{@public_key}&hash=#{@hash}&ts=#{@ts}"
      response = RestClient.get(url)
      JSON.parse(response.body)
    end
  
    def fetch_characters(story_id)
      data = fetch_story_details(story_id)
      if data["data"]["results"][0]["characters"]["returned"] > 0
        data["data"]["results"][0]["characters"]["items"].map do |character|
          character["name"] = get_character_details(character["resourceURI"])["name"]
          character["thumbnail_url"] = get_character_details(character["resourceURI"])["thumbnail"]["path"]
          character
        end
      else
        []
      end
    end
  
    private
  
    def get_character_details(resource_uri)
      url = "#{resource_uri}?apikey=#{@public_key}&hash=#{@hash}&ts=#{@ts}"
      response = RestClient.get(url)
      data = JSON.parse(response.body)
      character = data["data"]["results"][0]
    
      thumbnail_path = character["thumbnail"]["path"]
      thumbnail_extension = character["thumbnail"]["extension"]
    
      character["thumbnail_url"] = "#{thumbnail_path}/portrait_small.#{thumbnail_extension}"
      character
    end
end