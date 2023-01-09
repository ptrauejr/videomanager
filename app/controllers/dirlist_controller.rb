class DirlistController < ApplicationController
  def index
    @dirs = Dir.children("/array/videos/tv")
  end
end
