require 'net/http'
require 'uri'

class PagesController < ApplicationController
  def home
    @spotify_embed = get_spotify_oembed("https://open.spotify.com/track/4QreGo9Ivksjv4c3Bnk5f3")
    if params[:member]
      @members = @members.select { |member| member.start_with?(params[:member]) }
    end
  end

  def about
  end

  def contact
    @members = ["bob", "ana", "jack", "john"]


  end

  private

  def get_spotify_oembed(url)
    uri = URI("https://open.spotify.com/oembed")
    params = { :url => url }
    uri.query = URI.encode_www_form(params)

    response = Net::HTTP.get_response(uri)
    return JSON.parse(response.body)["html"] if response.is_a?(Net::HTTPSuccess)

    nil
  end

end
