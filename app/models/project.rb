# frozen_string_literal: true

class Project < ApplicationRecord
  after_create_commit { broadcast_prepend_to 'projects' }
  after_update_commit { broadcast_replace_to 'projects' }
  after_destroy_commit { broadcast_remove_to 'projects' }

  validates :title, presence: true
end
