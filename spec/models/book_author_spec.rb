require 'rails_helper'

describe BookAuthor, type: :model do
  describe 'Relationships' do
    it {should belong_to(:book)}
    it {should belong_to(:author)}
  end
end
