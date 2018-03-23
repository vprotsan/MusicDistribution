module SearchableByName
  extend ActiveSupport::Concern
  included do
    scope :search, ->(term) { where("name iLIKE ?", "%#{term}%") }
  end
end
