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
	  it "should match" do
	  	GridMap::square(30, 0, 0, true).should == [0, 0]
	  end

	  it "should match" do
	  	GridMap::square(30, 90, 0, true).should == [1001876, 0]
	  end

	  it "should match" do
	  	GridMap::square(30, 0, 180, true).should == [0, 2003751]
	  end

	  it "should match" do
	  	GridMap::square(30, 90, 180, true).should == [1001876, 2003751]
	  end

	  it "should match" do
	  	GridMap::square(50, 90, 180, true).should == [601126, 1202251]
	  end

	  it "should match" do
	  	GridMap::square(100, 90, 180, true).should == [300563, 601126]
	  end

	  it "should match" do
	  	GridMap::square(200, 90, 180, true).should == [150282, 300563]
	  end

	  it "should match" do
	  	GridMap::square(300, 90, 180, true).should == [100188, 200376]
	  end

	  it "should match" do
	  	GridMap::square(500, 90, 180, true).should == [60113, 120226]
	  end

	  it "should match" do
	  	GridMap::square(1000, 90, 180, true).should == [30057, 60113]
	  end

	  it "should match" do
	  	GridMap::square(2000, 90, 180, true).should == [15029, 30057]
	  end

	  it "should match" do
	  	GridMap::square(3000, 90, 180, true).should == [10019, 20038]
	  end

	  it "should match" do
	  	GridMap::square(5000, 90, 180, true).should == [6012, 12023]
	  end

	  it "should match" do
	  	GridMap::square(100, 40.4245895, -3.6494852, true).should == [135002, 12188]
	  end
	end
end
