module Samurai::Tasks
  class Task < ApplicationRecord
    belongs_to :user

    if Samurai::Core.available?(:contacts)
      belongs_to :contact, class_name: 'Samurai::Contacts::Contact'
    end
  end
end
