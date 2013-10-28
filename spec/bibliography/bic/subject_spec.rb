require 'spec_helper'

describe Bibliography::BIC::Subject do
  context "valid Subject" do
    let(:subject) { Bibliography.subjects.new("AB") }

    describe ".description" do
      it "returns a string" do
        expect(subject.description).to eq("The arts: general issues")
      end
    end

    describe ".code" do
      it "returns a string matching the original code" do
        expect(subject.code).to eq("AB")
      end
    end

    describe ".valid?" do
      it "returns true" do
        expect(subject.valid?).to eq(true)
      end
    end
  end

  context "invalid Subject" do
    let(:subject) { Bibliography.subjects.new("invalid key") }

    describe ".description" do
      it "returns nil" do
        expect(subject.description).to be_nil
      end
    end

    describe ".code" do
      it "returns a string matching the original code" do
        expect(subject.code).to be_nil
      end
    end

    describe ".valid?" do
      it "returns false" do
        expect(subject.valid?).to eq(false)
      end
    end
  end
end
