# require 'bundler'
require 'google_drive'
# require 'date'
# Bundler.require

session = GoogleDrive::Session.from_service_account_key("client_secret.json")

spreadsheet = session.spreadsheet_by_url("https://docs.google.com/spreadsheets/d/1swpGmgFcG6Hv_hjjezyayl8S_GbV2cBUNG11S_prKQU")

worksheet = spreadsheet.worksheets.first
# worksheet.rows.last(4).each { |row| puts row.last(1).join(" | ")}

worksheet.rows.last(2).each do |row|
  chinese = row[2]
  english = row[3]
  puts "Chinese: #{chinese}"
  puts "english: #{english}"
end




# worksheet.rows.first(10).each { |row| puts row.last(2).join(" | ")}

# user_word = gets.chomp
# worksheet.insert_rows(worksheet.num_rows + 1,
# [
#   [Date.today, user_word]
# ])

# worksheet.save
