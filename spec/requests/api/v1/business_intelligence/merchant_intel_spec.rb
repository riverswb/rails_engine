require 'rails_helper'

describe 'Single Merchant Business Intelligence' do
  before(:each) do
    invoice = create(:invoice)
    invoice_items = create_list(:invoice_item, 3, invoice_id: invoice.id)
    transactions = create_list(:transaction, 3, invoice_id: invoice.id)
  end

  it 'returns total revenue accross all transactions' do
    merchant = Invoice.first.merchant

    get "/api/v1/merchants/#{merchant.id}/revenue"

    found = JSON.parse(response.body)

    expect(response).to be_success
    expect(found).to have_key("revenue")
    expect(found["revenue"]).to be_a(String)
  end
end
