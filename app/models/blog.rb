class Blog < ApplicationRecord
    has_many: tech_tags
    has_many: post_tags
end
