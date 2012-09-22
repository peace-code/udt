require 'csv'
require 'open-uri'
require 'json'

namespace :data do

	DATAFILE = "#{Rails.root.to_s}/db/address.txt"

	desc "load data"
	task :load_file => :environment do
		Zipcode.delete_all
		CSV.parse(File.read(DATAFILE), { :headers => true, :col_sep => "\t", :skip_blanks => true }) do |row|
			p row
			# code, name, category, phone, zipcode, address, antibiotics, injections = row
			# Hospital.create( code: code, name: name, category: category, phone: phone, zipcode: zipcode, address: address, antibiotics: antibiotics)
			Zipcode.create(row.to_hash)
		end
	end	

end