class Language < ApplicationRecord
  with_options precence: true do
    validates :gem_name
    validates :about_gem
    validates :syntax_name
    validates :version
    validates :how_to_use
    # validates :description
    # validates :reference_url
  end
end
