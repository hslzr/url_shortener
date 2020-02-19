require 'rails_helper'

RSpec.describe Link, type: :model do
  before { @link = Link.new }

  describe 'Basic model validations' do
    it 'validates presence of url' do
      @link.url = nil
      @link.slug = 'not empty'

      expect(@link).not_to be_valid
    end

    it 'validates presence of slug' do
      @link.url = 'not empty'
      @link.slug = nil

      expect(@link).not_to be_valid
    end
  end
end

