placeholder :count do
  match /\d+/ do |count|
    count.to_i
  end
end
