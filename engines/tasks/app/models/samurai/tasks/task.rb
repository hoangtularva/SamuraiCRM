module Samurai::Tasks
  class Task < ApplicationRecord
    belongs_to :user
    belongs_to :contact
  end
end
