require 'spec_helper'

RSpec.describe "EcipValidator::Loader"  do
  let(:category) { 'Core' }
  let(:type) { 'Standards Track' }
  let(:status) { 'Final' }
  let(:eip){
    {
      "ecip" => 145,
      "lang" => 'en',
      "license" => 'MIT',
      "title" => 'Bitwise shifting instructions in EVM',
      "author" => 'Alex Beregszaszi, Paweł Bylica',
      "type" => type,
      "category" => category,
      "status" =>   status,
      "created" =>  Date.parse('2017-02-13')
    }
  }
  let(:file_name) {
   'spec/fixtures/valid/eip-145.md'
  }

  subject(:loader){ EcipValidator::Loader.load(file_name)}

  describe "valid" do
    it "should have required fields" do
      expect(loader).to eq(eip)
    end
  end
end