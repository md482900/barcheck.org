#exportiert aktuelle Daten in seeds.rb




namespace :export do
  desc "Prints Bar.all in a seeds.rb way."
  task :seeds_format => :environment do
    Bar.order(:id).all.each do |x|
      puts "Bar.create(#{x.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end
end