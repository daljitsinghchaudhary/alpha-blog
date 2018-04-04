class ArticleCategory < ActiveRecord::Base
# Note Rails 5 -> class ArticleCategory < ApplicationRecord
	belongs_to :article
	belongs_to :category
end