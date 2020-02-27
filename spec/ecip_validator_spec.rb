RSpec.describe EcipValidator do
  it "has a version number" do
    expect(EcipValidator::VERSION).not_to be nil
  end

  it "raises exception if it includes invalid ecips" do
    expect{
      EcipValidator::Runner.run Dir["spec/fixtures/valid/*md"]
    }.not_to raise_error
  end

  it "raises exception if it includes invalid ecips" do
    expect{
      EcipValidator::Runner.run Dir["spec/fixtures/invalid/*md"]
    }.to raise_error
  end
end
