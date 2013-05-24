require 'spec_helper'

describe GetIp do

	it "should return the remote ip address" do
		get_ip = GetIp.remote
		get_ip.should_not be_nil
	end

	it "should return the local ip address" do
		get_ip = GetIp.local
		get_ip.should_not == 0
		get_ip.should_not be_nil
	end

end