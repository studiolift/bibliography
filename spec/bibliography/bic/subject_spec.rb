require 'spec_helper'

describe Bibliography::BIC::Subject do
  context "Class" do
    describe ".all" do
      it "is an array of all subjects" do
        all = described_class.all
        expect(all).to have(described_class::Data.length).items
        expect(all.first.code).to eq("A")
      end
    end
  end

  context "Instance" do
    context "valid" do
      let(:subject) { Bibliography.subjects.new("AB") }

      describe ".description" do
        it "is a string" do
          expect(subject.description).to eq("The arts: general issues")
        end
      end

      describe ".code" do
        it "is a string, matching the original code" do
          expect(subject.code).to eq("AB")
        end
      end

      describe ".valid?" do
        it "is true" do
          expect(subject.valid?).to be_true
        end
      end

      describe ".children?" do
        it "is true" do
          expect(subject.children?).to be_true
        end
      end

      describe ".children" do
        it "returns an array of child subjects" do
          expect(subject.children).to have(4).items
        end
      end

      describe ".parent?" do
        it "is true" do
          expect(subject.parent?).to be_true
        end
      end

      describe ".parent" do
        it "returns the parent Subject" do
          expect(subject.parent.code).to eq("A")
        end
      end
    end

    context "invalid" do
      let(:subject) { Bibliography.subjects.new("invalid key") }

      describe ".description" do
        it "is nil" do
          expect(subject.description).to be_nil
        end
      end

      describe ".code" do
        it "is a string matching the original code" do
          expect(subject.code).to be_nil
        end
      end

      describe ".valid?" do
        it "is false" do
          expect(subject.valid?).to be_false
        end
      end

      describe ".children?" do
        it "is false" do
          expect(subject.children?).to be_false
        end
      end

      describe ".children" do
        it "is an empty array" do
          expect(subject.children).to be_empty
        end
      end

      describe ".parent?" do
        it "is false" do
          expect(subject.parent?).to be_false
        end
      end

      describe ".parent" do
        it "is nil" do
          expect(subject.parent).to be_nil
        end
      end
    end
  end
end
