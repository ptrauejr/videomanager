class Directory < ApplicationRecord
  enum :type, [ :tv, :movie, :music, :video ]
end
