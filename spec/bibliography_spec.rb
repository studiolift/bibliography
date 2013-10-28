require 'spec_helper'

describe Bibliography do
  describe ".subjects" do
    it "accepts a standards body name" do
      expect(Bibliography.subjects(:bic)).to eq(Bibliography::BIC::Subject)
    end

    it "defaults to BIC::Subject" do
      expect(Bibliography.subjects).to eq(Bibliography::BIC::Subject)
    end
  end
end
