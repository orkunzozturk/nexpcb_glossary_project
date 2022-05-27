require 'bundler'
require 'google_drive'
require 'date'
Bundler.require

session = GoogleDrive::Session.from_service_account_key("client_secret.json")

spreadsheet = session.spreadsheet_by_url("https://docs.google.com/spreadsheets/d/1swpGmgFcG6Hv_hjjezyayl8S_GbV2cBUNG11S_prKQU")

worksheet = spreadsheet.worksheets.first
worksheet.rows.first(10).each { |row| puts row.last(2).join(" | ")}

user_word = gets.chomp
worksheet.insert_rows(worksheet.num_rows + 1,
[
  [Date.today, user_word]
])

worksheet.save
