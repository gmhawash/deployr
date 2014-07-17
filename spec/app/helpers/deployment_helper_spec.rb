require 'spec_helper'

describe "Deployr::App::DeploymentHelper" do
  let(:helpers){ Class.new }
  before { helpers.extend Deployr::App::DeploymentHelper }
  subject { helpers }

  it "should return nil" do
    expect(subject.foo).to be_nil
  end
end
