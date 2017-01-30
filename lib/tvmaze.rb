require 'rest-client'
require 'json'
require 'tvmaze/show'
require 'tvmaze/episode'
require 'tvmaze/season'

module TVMaze
  @@api_base = 'http://api.tvmaze.com'

  def self.request(path, params = {})
    url = @@api_base + path
    res = RestClient.get(url, params: params)
    JSON.parse(res)
  end
end
