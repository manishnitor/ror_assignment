require 'csv'

class ReportsController < ApplicationController

	def download_csv
		csv_data = CSV.generate(headers: true) do |csv|
		    csv << ["S. No",'Coordinator', 'Participant Name', 'Participant Date of Birth'] # Add column headers
		    
		    Coordinator.all.each_with_index do |c,i|
		      csv << [i+1,c.email] # Add data rows
		      c.enrollments.each do |e|
		      	csv << ["","",e.participant.name,e.participant.date_of_birth ]
		      end
		    end
		end
		send_data csv_data, filename: "Participants-for-each-coordinator-#{Date.today}.csv"
	end
end
