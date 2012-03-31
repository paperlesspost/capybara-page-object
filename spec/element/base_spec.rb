require File.dirname(__FILE__) + '/../helper'

describe "Base" do
  before do
    @tag = CapybaraPageObject::Anchor.from_string '<foo id="bar">content</foo>'
  end

  context "#key" do
    it "default to the ID if not overridden" do
      @tag.key.should == 'bar'
    end
  end

  context "#value" do
    it "default to the text if not overridden" do
      @tag.value.should == 'content'
    end
  end
end
