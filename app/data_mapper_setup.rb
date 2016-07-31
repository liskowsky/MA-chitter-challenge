require 'data_mapper'
require 'dm-postgres-adapter'
require_relative '../app/models/user'
require_relative '../app/models/peep'
require 'sinatra/flash'

DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/chitter_#{ENV['RACK_ENV']}")
DataMapper.finalize
DataMapper.auto_upgrade!
