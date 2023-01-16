class Directory < ApplicationRecord
  enum :dir_type, { video: 0, tv_show: 1, movie: 2, music: 3 }, suffix: true, default: :video
end
