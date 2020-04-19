class TechTag < ApplicationRecord
  belongs_to :technology
  belongs_to :project, optional: true
  belongs_to :blog, optional: true
end
