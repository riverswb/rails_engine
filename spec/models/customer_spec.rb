require 'rails_helper'

RSpec.describe Customer, type: :model do
  it { is_expected.to validate_presence_of(:first_name)}
  it { is_expected.to validate_presence_of(:last_name)}

  describe "relationships" do
    it { should have_many :invoices }
  end
end
