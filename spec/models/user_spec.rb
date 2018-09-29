require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'Associations' do
    it 'has_many posts' do
      association = described_class.reflect_on_association(:posts)
      expect(association).to eq :belongs_to
      expect(association.options[:dependent]).to eq :destroy
    end
  end
end
