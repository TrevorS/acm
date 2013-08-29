json.array!(@members) do |member|
  json.extract! member, :name, :email, :phone, :major, :fees_paid, :campus_resident, :volunteer, :referrer, :recruiter_id, :interests, :position_id
  json.url member_url(member, format: :json)
end
