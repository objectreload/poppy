class Playlist
  extend ActiveModel::Naming

  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def self.all
    Player.instance.listplaylists
  end

  def songs
    Player.instance.listplaylistinfo(@name)
  end

end