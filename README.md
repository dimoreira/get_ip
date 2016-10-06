# GetIp
[![Build Status](https://travis-ci.org/dimoreira/get_ip.png?branch=master)](https://travis-ci.org/dimoreira/get_ip)

A ruby gem to provide you an easy way to return your local and remote ip addresses.

## Installation

Add this line to your application's Gemfile:

    gem 'get_ip'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install get_ip

## Usage

	# Call directly from class or instance
	GetIp.local
	=> "192.168.0.32"

	ip = GetIp
	ip.remote
	=> "177.33.167.196"
