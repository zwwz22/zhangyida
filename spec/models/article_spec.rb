require 'rails_helper'

RSpec.describe Article, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"

  describe 'add a new article' do
     it 'be valid' do
       article = build(:article)
       expect(article).to be_valid
     end

      it 'need titile' do
        article = build(:article,:title => nil)
        article.valid?
        expect(article.errors[:title]).to include("can't be blank" )
      end
  end
end
