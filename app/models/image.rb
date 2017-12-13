class Image < ApplicationRecord
    #makes sure the url and alt is actually written in
    validates :url, presence: true
    validates :alt, presence: true
end
