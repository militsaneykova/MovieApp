class Song < ApplicationRecord
    belongs_to :movie, optional: true
end
