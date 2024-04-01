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
      characters = data["data"]["results"][0]["characters"]["items"] || []
      characters.map do |character|
        enrich_character(character)
      end
    end

    private
  
    def enrich_character(character)
      details = JSON.parse(RestClient.get("#{character["resourceURI"]}?apikey=#{@public_key}&hash=#{@hash}&ts=#{@ts}").body)
      character["name"] = details["data"]["results"][0]["name"]
      character["thumbnail_url"] = build_thumbnail_url(details["data"]["results"][0]["thumbnail"])
      character
    end
  
    def build_thumbnail_url(thumbnail_data)
      "#{thumbnail_data['path']}/portrait_small.#{thumbnail_data['extension']}"
    end
  end
  