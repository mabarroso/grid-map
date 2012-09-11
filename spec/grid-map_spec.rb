root = File.expand_path('../..', __FILE__)
require File.join(root, %w[lib grid-map])

require 'mathn'

describe GridMap do
	describe "to_rad" do
	  it "should be 0" do
	  	GridMap::to_rad(0).should == 0
	  end

	  it "should be PI" do
	  	GridMap::to_rad(180).should == Math::PI
	  end

	  it "should be 2PI" do
	  	GridMap::to_rad(360).should == 2*Math::PI
	  end
	end

	describe "distance" do
	  it "should be 0" do
	  	GridMap::distance(0, 0, 0, 0).ceil.should == 0
	  end

	  it "should be 0" do
	  	GridMap::distance(45, 90, 45, 90).ceil.should == 0
	  end

	  it "should be 0" do
	  	GridMap::distance(90, 180, 90, 180).ceil.should == 0
	  end

	  it "should be 10018754" do
	  	GridMap::distance(0, 0, 90, 180).ceil.should == 10018755
	  end

	  it "should be 10018754" do
	  	GridMap::distance(0, 0, 90, 0).ceil.should == 10018755
	  end

	  it "should be 20037508" do
	  	GridMap::distance(0, 0, 0, 180).ceil.should == 20037509
	  end
	end

	describe "square" do
	  it "should be [500938, 1001876]" do
	  	GridMap::square(30, 0, 0)[:x].should == 500938
	  	GridMap::square(30, 0, 0)[:y].should == 1001876
	  end

	  it "should be [0, 500938]" do
	  	GridMap::square(30, 90, 0)[:x].should == 0
	  	GridMap::square(30, 90, 0)[:y].should == 500938
	  end

	  it "should be [500938, 0]" do
	  	GridMap::square(30, 0, 180)[:x].should == 500938
	  	GridMap::square(30, 0, 180)[:y].should == 0
	  end

	  it "should be [0, 500938]" do
	  	GridMap::square(30, 90, 180)[:x].should == 0
	  	GridMap::square(30, 90, 180)[:y].should == 500938
	  end

	  it "should be [300563, 601126]" do
	  	GridMap::square(50, 0, 0)[:x].should == 300563
	  	GridMap::square(50, 0, 0)[:y].should == 601126
	  end

	  it "should be [150282, 300563]" do
	  	GridMap::square(100, 0, 0)[:x].should == 150282
	  	GridMap::square(100, 0, 0)[:y].should == 300563
	  end

	  it "should be [75141, 150282]" do
	  	GridMap::square(200, 0, 0)[:x].should == 75141
	  	GridMap::square(200, 0, 0)[:y].should == 150282
	  end

	  it "should be [50094, 100188]" do
	  	GridMap::square(300, 0, 0)[:x].should == 50094
	  	GridMap::square(300, 0, 0)[:y].should == 100188
	  end

	  it "should be [30057, 60113]" do
	  	GridMap::square(500, 0, 0)[:x].should == 30057
	  	GridMap::square(500, 0, 0)[:y].should == 60113
	  end

	  it "should be [15029, 30057]" do
	  	GridMap::square(1000, 0, 0)[:x].should == 15029
	  	GridMap::square(1000, 0, 0)[:y].should == 30057
	  end

	  it "should be [7515, 15029]" do
	  	GridMap::square(2000, 0, 0)[:x].should == 7515
	  	GridMap::square(2000, 0, 0)[:y].should == 15029
	  end

	  it "should be [5010, 10019]" do
	  	GridMap::square(3000, 0, 0)[:x].should == 5010
	  	GridMap::square(3000, 0, 0)[:y].should == 10019
	  end

	  it "should be [3006, 6012]" do
	  	GridMap::square(5000, 0, 0)[:x].should == 3006
	  	GridMap::square(5000, 0, 0)[:y].should == 6012
	  end

	end
end
