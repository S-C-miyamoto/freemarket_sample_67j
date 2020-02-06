class Category < ApplicationRecord
  has_many :items
  has_ancestry
  # has_many :sizes
  
  def search
    if self.depth == 0
      result_categories_ids = self.indirect_ids
    elsif self.depth == 1
      result_categories_ids = self.child_ids
    else
      result_categories_ids = self.id
    end

    Item.where(category_id: result_categories_ids).order('created_at DESC')
  end
end
