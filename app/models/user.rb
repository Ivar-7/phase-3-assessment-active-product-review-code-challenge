class User < ActiveRecord::Base
    has_many :reviews
    has_many :products, through: :reviews

    def favorite_product
        favorite = self.reviews.maximum(:star_rating)
        self.reviews.where(star_rating: favorite).first&.product
    end
      
    def remove_reviews(product)
        self.reviews.where(product: product).destroy_all
    end
end