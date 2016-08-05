

def get_chore_data
  chore_data =
  {"Fred Fredson" => [{:task=>"Car", :description=>"wash car"}, {:task=>"Toilet", :description=>"scrub toilet"}],
  "Sally Sallyson" => [{:task=>"Dishes", :description=>"wash dishes"}, {:task=>"Yard", :description=>"mow grass"}],
  "Gary Garyson" => [{:task=>"Gutters", :description=>"clean gutters"}, {:task=>"Carpet", :description=>"vacuum carpets"}],
  "Michele Micheleson" => [{:task=>"Laundry", :description=>"fold laundry"}, {:task=>"Recycling", :description=>"take out recycling"}],
  "Pookie Pookieson" => [{:task=>"Kitchen", :description=>"mop floor"}, {:task=>"Pandas", :description=>"pet the pandas"}]}

  return chore_data
end
