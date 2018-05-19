require 'rails_helper'

RSpec.describe Article, type: :model do
  it { should have_db_column(:published).of_type(:boolean).with_options(null: false, default: true) }
  it { should have_db_column(:title).of_type(:string) }
  it { should have_db_column(:content).of_type(:text) }
  it { should have_db_column(:created_at).of_type(:datetime).with_options(null: false) }
  it { should have_db_column(:updated_at).of_type(:datetime).with_options(null: false) }

  context 'published' do
    subject { build(:article) }
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:content) }
  end

  context 'not published' do
    subject { build(:article, :unpublished) }
    it { should_not validate_presence_of(:title) }
    it { should_not validate_presence_of(:content) }
  end
end
