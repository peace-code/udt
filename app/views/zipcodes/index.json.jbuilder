json.array!(@zipcodes) do |json, zipcode|
  json.label zipcode.value
  json.value zipcode.value
  json.address zipcode.address
  json.zipcode zipcode.zipcode
  json.sido zipcode.sido
  json.gugun zipcode.gugun
  json.dong zipcode.dong
  json.ri zipcode.ri
  json.bldg zipcode.bldg
  json.bunji zipcode.bunji
  json.seq zipcode.seq
end
