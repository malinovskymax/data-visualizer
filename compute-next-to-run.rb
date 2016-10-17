require 'json'

File.open("solano-plan-variables.json", "w") do |f|
     if ENV["PROFILE"] == "one"
         f.write(JSON.dump({"next_profile" => "two"}))
     end
     if ENV["PROFILE"] == "two"
         f.write(JSON.dump({"next_profile" => "three"}))
     end
     if ENV["PROFILE"] == "three"
         f.write(JSON.dump({"next_profile" => "four"}))
     end
     if ENV["PROFILE"] == "four"
         f.write(JSON.dump({"next_profile" => "five"}))
     end
end
