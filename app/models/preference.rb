class Preference < ActiveRecord::Base
  validates :artist_sort_order, inclusion: { in: [ "ASC", "DESC" ] }
  validates :song_sort_order, inclusion: { in: [ "ASC", "DESC" ] }

<<<<<<< HEAD
  def self.allow_create_songs
    Preference.find(1).allow_create_songs
  end
  def self.allow_create_artists
    Preference.find(1).allow_create_artists
  end
=======
>>>>>>> 0eacd1094e02ce396fcbaa5690b575752e22754b
end
