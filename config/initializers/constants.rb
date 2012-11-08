localserver = "http://localhost:3000"
rackspaceserver= "http://198.101.236.20:3000"

SERVER = Rails.env == "development" ? localserver:rackspaceserver

localfaye = 'http://localhost:9292/faye'
rackspacefaye = 'http://198.101.236.20:9292/faye'

FAYE = Rails.env == "development" ? localfaye:rackspacefaye