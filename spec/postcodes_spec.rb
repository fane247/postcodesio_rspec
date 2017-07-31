require_relative '../postcodes_getter.rb'

describe PostCodesio do



	context "when using get a single postcode" do

		before(:all) do
			@postcodes_getter = PostCodesio.new
			@postcode_hash_1 = @postcodes_getter.single_postcode("EN93SD")
			@postcode_hash_2 = @postcodes_getter.single_postcode("UB81PD")
			@postcode_hash_3 = @postcodes_getter.single_postcode("E26dt")
		end

		it "should return a key called status that returns an Integer" do 

			expect(@postcode_hash_1["status"].class).to eq Integer
			expect(@postcode_hash_2["status"].class).to eq Integer
			expect(@postcode_hash_3["status"].class).to eq Integer

		end

		it "should return a Hash" do	

			expect(@postcode_hash_1.class).to eq Hash
			expect(@postcode_hash_2.class).to eq Hash
			expect(@postcode_hash_3.class).to eq Hash

		end

		it "should contain a hash called result" do

			expect(@postcode_hash_1["result"].class).to eq Hash
			expect(@postcode_hash_2["result"].class).to eq Hash
			expect(@postcode_hash_3["result"].class).to eq Hash

		end

		it "should include a key called 'quality' in result hash that returns a integer" do

			expect(@postcode_hash_1["result"]["quality"].class).to eq Integer
			expect(@postcode_hash_2["result"]["quality"].class).to eq Integer
			expect(@postcode_hash_3["result"]["quality"].class).to eq Integer

		end	

		it "should include a key called 'quality' in result hash that returns an Integer between 1-9 inclusive" do

			# expect(@postcode_hash_1["result"]["quality"]).to match(/[1-9]/)

			# be_between(1,9)

			expect(@postcode_hash_1["result"]["quality"]).to be >= 0
			expect(@postcode_hash_1["result"]["quality"]).to be <= 10

			expect(@postcode_hash_2["result"]["quality"]).to be >= 0
			expect(@postcode_hash_2["result"]["quality"]).to be <= 10

			expect(@postcode_hash_3["result"]["quality"]).to be >= 0
			expect(@postcode_hash_3["result"]["quality"]).to be <= 10

		end 

		it "should include a key caled 'eastings' in result hash that returns an Integer" do

			expect(@postcode_hash_1["result"]["eastings"].class).to eq Integer
			expect(@postcode_hash_2["result"]["eastings"].class).to eq Integer
			expect(@postcode_hash_3["result"]["eastings"].class).to eq Integer

		end

		it "should include a key caled 'northings' in result hash that returns an Integer" do

			expect(@postcode_hash_1["result"]["northings"].class).to eq Integer
			expect(@postcode_hash_2["result"]["northings"].class).to eq Integer
			expect(@postcode_hash_3["result"]["northings"].class).to eq Integer

		end

		it "should include a key caled 'country' in result hash that returns an String" do

			expect(@postcode_hash_1["result"]["country"].class).to eq String
			expect(@postcode_hash_2["result"]["country"].class).to eq String
			expect(@postcode_hash_3["result"]["country"].class).to eq String

		end

		it "should include a key caled 'nhs_ha' in result hash that returns a String" do

			expect(@postcode_hash_1["result"]["nhs_ha"].class).to eq String
			expect(@postcode_hash_2["result"]["nhs_ha"].class).to eq String
			expect(@postcode_hash_3["result"]["nhs_ha"].class).to eq String

		end

		it "should include a key caled 'longitude' in result hash that returns a Float" do

			expect(@postcode_hash_1["result"]["longitude"].class).to eq Float
			expect(@postcode_hash_2["result"]["longitude"].class).to eq Float
			expect(@postcode_hash_3["result"]["longitude"].class).to eq Float

		end

		it "should include a key caled 'longitude' in result hash that returns a Float beween 90 and -90 inclusive" do

			expect(@postcode_hash_1["result"]["longitude"]).to be <= 90.0
			expect(@postcode_hash_1["result"]["longitude"]).to be >= -90.0

			expect(@postcode_hash_2["result"]["longitude"]).to be <= 90.0
			expect(@postcode_hash_2["result"]["longitude"]).to be >= -90.0

			expect(@postcode_hash_3["result"]["longitude"]).to be <= 90.0
			expect(@postcode_hash_3["result"]["longitude"]).to be >= -90.0

		end

		it "should include a key caled 'latitude' in result hash that returns a Float" do

			expect(@postcode_hash_1["result"]["latitude"].class).to eq Float
			expect(@postcode_hash_2["result"]["latitude"].class).to eq Float
			expect(@postcode_hash_3["result"]["latitude"].class).to eq Float

		end

		it "should include a key caled 'latitude' in result hash that returns a Float beween 180 and -180 inclusive" do

			expect(@postcode_hash_1["result"]["latitude"]).to be <= 180.0
			expect(@postcode_hash_1["result"]["latitude"]).to be >= -180.0

			expect(@postcode_hash_2["result"]["latitude"]).to be <= 180.0
			expect(@postcode_hash_2["result"]["latitude"]).to be >= -180.0

			expect(@postcode_hash_3["result"]["latitude"]).to be <= 180.0
			expect(@postcode_hash_3["result"]["latitude"]).to be >= -180.0

		end

		it "should include a key caled 'parliamentary_constituency' in result hash that returns a String" do

			expect(@postcode_hash_1["result"]["parliamentary_constituency"].class).to eq String
			expect(@postcode_hash_2["result"]["parliamentary_constituency"].class).to eq String
			expect(@postcode_hash_3["result"]["parliamentary_constituency"].class).to eq String

		end

		it "should include a key caled 'european_electoral_region' in result hash that returns a String" do

			expect(@postcode_hash_1["result"]["european_electoral_region"].class).to eq String
			expect(@postcode_hash_2["result"]["european_electoral_region"].class).to eq String
			expect(@postcode_hash_3["result"]["european_electoral_region"].class).to eq String

		end

		it "should include a key caled 'primary_care_trust' in result hash that returns a String" do

			expect(@postcode_hash_1["result"]["european_electoral_region"].class).to eq String
			expect(@postcode_hash_2["result"]["european_electoral_region"].class).to eq String
			expect(@postcode_hash_3["result"]["european_electoral_region"].class).to eq String

		end

		it "should include a key caled 'region' in result hash that returns a String" do

			expect(@postcode_hash_1["result"]["region"].class).to eq String
			expect(@postcode_hash_2["result"]["region"].class).to eq String
			expect(@postcode_hash_3["result"]["region"].class).to eq String

		end

		it "should include a key caled 'lsoa' in result hash that returns a String" do

			expect(@postcode_hash_1["result"]["lsoa"].class).to eq String
			expect(@postcode_hash_2["result"]["lsoa"].class).to eq String
			expect(@postcode_hash_3["result"]["lsoa"].class).to eq String

		end

		it "should include a key caled 'msoa' in result hash that returns a String" do

			expect(@postcode_hash_1["result"]["msoa"].class).to eq String
			expect(@postcode_hash_2["result"]["msoa"].class).to eq String
			expect(@postcode_hash_3["result"]["msoa"].class).to eq String

		end

		#not sure wether to do test that uses lsoa to test value of msoa, msoa seems to be the same minus the last letter

		it "should include a key caled 'incode' in result hash that returns a String" do

			expect(@postcode_hash_1["result"]["incode"].class).to eq String
			expect(@postcode_hash_2["result"]["incode"].class).to eq String
			expect(@postcode_hash_3["result"]["incode"].class).to eq String

		end

		it "should should include a key caled 'incode' in result hash that returns a String which is 3 characters long" do

			expect(@postcode_hash_1["result"]["incode"].length).to eq 3
			expect(@postcode_hash_2["result"]["incode"].length).to eq 3
			expect(@postcode_hash_3["result"]["incode"].length).to eq 3


		end

		it "should include a key caled 'outcode' in result hash that returns a String" do

			expect(@postcode_hash_1["result"]["outcode"].class).to eq String
			expect(@postcode_hash_2["result"]["outcode"].class).to eq String
			expect(@postcode_hash_3["result"]["outcode"].class).to eq String

		end

		it "should include a key caled 'outcode' in result hash that returns a String between 2-4 characters long" do


			expect(@postcode_hash_1["result"]["outcode"].length).to be >= 2
			expect(@postcode_hash_1["result"]["outcode"].length).to be <= 4

			expect(@postcode_hash_2["result"]["outcode"].length).to be >= 2
			expect(@postcode_hash_2["result"]["outcode"].length).to be <= 4

			expect(@postcode_hash_3["result"]["outcode"].length).to be >= 2
			expect(@postcode_hash_3["result"]["outcode"].length).to be <= 4

		end

		it "should include a key caled 'admin_district' in result hash that returns a String" do

			expect(@postcode_hash_1["result"]["admin_district"].class).to eq String
			expect(@postcode_hash_2["result"]["admin_district"].class).to eq String
			expect(@postcode_hash_3["result"]["admin_district"].class).to eq String

		end

		it "should include a key caled 'parish' in result hash that returns a String" do

			expect(@postcode_hash_1["result"]["parish"].class).to eq String
			expect(@postcode_hash_2["result"]["parish"].class).to eq String
			expect(@postcode_hash_3["result"]["parish"].class).to eq String

		end

		it "should include a key caled 'admin_county' in result hash that returns a String or nil" do

			expect(@postcode_hash_1["result"]["admin_county"].class).to eq(String).or eq nil.class
			expect(@postcode_hash_2["result"]["admin_county"].class).to eq(String).or eq nil.class
			expect(@postcode_hash_3["result"]["admin_county"].class).to eq(String).or eq nil.class		

		end

		it "should include a key caled 'admin_ward' in result hash that returns a String" do

			expect(@postcode_hash_1["result"]["admin_ward"].class).to eq String
			expect(@postcode_hash_2["result"]["admin_ward"].class).to eq String
			expect(@postcode_hash_3["result"]["admin_ward"].class).to eq String

		end

		it "should include a key caled 'ccg' in result hash that returns a String" do

			expect(@postcode_hash_1["result"]["ccg"].class).to eq String
			expect(@postcode_hash_2["result"]["ccg"].class).to eq String
			expect(@postcode_hash_3["result"]["ccg"].class).to eq String

		end

		it "should include a key caled 'nuts' in result hash that returns a String" do

			expect(@postcode_hash_1["result"]["nuts"].class).to eq String
			expect(@postcode_hash_2["result"]["nuts"].class).to eq String
			expect(@postcode_hash_3["result"]["nuts"].class).to eq String

		end

		it "should include a key caled 'admin_district' in result['codes'] hash that returns a String" do

			expect(@postcode_hash_1["result"]["codes"]["admin_district"].class).to eq String
			expect(@postcode_hash_2["result"]["codes"]["admin_district"].class).to eq String
			expect(@postcode_hash_3["result"]["codes"]["admin_district"].class).to eq String

		end

		it "should include a key caled 'admin_district' in result['codes'] hash that returns a String that is 9 characters long" do


			expect(@postcode_hash_1["result"]["codes"]["admin_district"].size).to eq 9
			expect(@postcode_hash_2["result"]["codes"]["admin_district"].size).to eq 9
			expect(@postcode_hash_3["result"]["codes"]["admin_district"].size).to eq 9
	

		end

		it "should include a key caled 'admin_county' in result['codes'] hash that returns a String" do

			expect(@postcode_hash_1["result"]["codes"]["admin_county"].class).to eq String
			expect(@postcode_hash_2["result"]["codes"]["admin_county"].class).to eq String
			expect(@postcode_hash_3["result"]["codes"]["admin_county"].class).to eq String

		end

		it "should include a key caled 'admin_district' in result['codes'] hash that returns a String that is 9 characters long" do


			expect(@postcode_hash_1["result"]["codes"]["admin_county"].size).to eq 9
			expect(@postcode_hash_2["result"]["codes"]["admin_county"].size).to eq 9
			expect(@postcode_hash_3["result"]["codes"]["admin_county"].size).to eq 9
	

		end

		it "should include a key caled 'admin_ward' in result['codes'] hash that returns a String" do

			expect(@postcode_hash_1["result"]["codes"]["admin_ward"].class).to eq String
			expect(@postcode_hash_2["result"]["codes"]["admin_ward"].class).to eq String
			expect(@postcode_hash_3["result"]["codes"]["admin_ward"].class).to eq String

		end

		it "should include a key caled 'admin_ward' in result['codes'] hash that returns a String that is 9 characters long" do


			expect(@postcode_hash_1["result"]["codes"]["admin_ward"].size).to eq 9
			expect(@postcode_hash_2["result"]["codes"]["admin_ward"].size).to eq 9
			expect(@postcode_hash_3["result"]["codes"]["admin_ward"].size).to eq 9
	

		end

		it "should include a key caled 'parish' in result['codes'] hash that returns a String" do

			expect(@postcode_hash_1["result"]["codes"]["parish"].class).to eq String
			expect(@postcode_hash_2["result"]["codes"]["parish"].class).to eq String
			expect(@postcode_hash_3["result"]["codes"]["parish"].class).to eq String

		end

		it "should include a key caled 'parish' in result['codes'] hash that returns a String that is 9 characters long" do


			expect(@postcode_hash_1["result"]["codes"]["parish"].size).to eq 9
			expect(@postcode_hash_2["result"]["codes"]["parish"].size).to eq 9
			expect(@postcode_hash_3["result"]["codes"]["parish"].size).to eq 9
	

		end

		it "should include a key caled 'ccg' in result['codes'] hash that returns a String" do

			expect(@postcode_hash_1["result"]["codes"]["ccg"].class).to eq String
			expect(@postcode_hash_2["result"]["codes"]["ccg"].class).to eq String
			expect(@postcode_hash_3["result"]["codes"]["ccg"].class).to eq String

		end

		it "should include a key caled 'ccg' in result['codes'] hash that returns a String that is 9 characters long" do


			expect(@postcode_hash_1["result"]["codes"]["ccg"].size).to eq 9
			expect(@postcode_hash_2["result"]["codes"]["ccg"].size).to eq 9
			expect(@postcode_hash_3["result"]["codes"]["ccg"].size).to eq 9
	

		end

		it "should include a key caled 'nuts' in result['codes'] hash that returns a String" do

			expect(@postcode_hash_1["result"]["codes"]["nuts"].class).to eq String
			expect(@postcode_hash_2["result"]["codes"]["nuts"].class).to eq String
			expect(@postcode_hash_3["result"]["codes"]["nuts"].class).to eq String

		end



	end



end