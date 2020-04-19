class PostTag < ApplicationRecord
  belongs_to :tag
  belongs_to :project, optional: true
  belongs_to :blog, optional: true
end
