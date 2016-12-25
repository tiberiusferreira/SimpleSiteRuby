require 'csv'
namespace :import_shops_csv do
  task :create_shops => :environment do
        csv_text = File.read('shops.csv')
        csv = CSV.parse(csv_text, :headers => true)
        csv.each do |row|

          Shop.create!(:chain => row['chain'], :name => row['name'], :latitude => row['latitude'],
          :longitude => row['longitude'], :address => row['address'], :city => row['city'],
          :zip => row['zip'], :phone => row['phone'], :country_code => row['country_code'])


        end
  end
end
