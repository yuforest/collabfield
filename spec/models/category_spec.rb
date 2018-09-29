require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'Associations' do
    it 'has_many posts' do
      association = described_class.reflect_on_association(:post)
      expect(association).to eq :has_many
    end
  end
end
