class Admin::PreferencesController < ApplicationController

  def index
    @preference = Preference.first_or_create(allow_create_songs: true, allow_create_artists: true, song_sort_order: "DESC", artist_sort_order: "DESC")
  end

  def update
    @preference = Preference.find(params[:id])
  end
end
