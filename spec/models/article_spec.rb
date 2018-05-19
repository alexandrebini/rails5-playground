RSpec.describe Article, type: :model do
  it { should have_db_column(:published?).of_type(:boolean).with_options(default: true) }
  it { should have_db_column(:title).of_type(:string) }
  it { should have_db_column(:content).of_type(:text) }
  it { should have_db_column(:created_at).of_type(:datetime).with_options(null: false) }
  it { should have_db_column(:updated_at).of_type(:datetime).with_options(null: false) }
end
