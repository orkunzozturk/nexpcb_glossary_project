require 'google_drive'

session = GoogleDrive::Session.from_service_account_key("client_secret.json")

spreadsheet = session.spreadsheet_by_url("https://docs.google.com/spreadsheets/d/1swpGmgFcG6Hv_hjjezyayl8S_GbV2cBUNG11S_prKQU")

WORKSHEET = spreadsheet.worksheets.first
