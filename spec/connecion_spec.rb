require File.expand_path(File.dirname(__FILE__) + '/spec_helper.rb')

describe 'Connecting' do
  
  it "should be possible to list actions" do
    # Basically this works in ruby 1.9.3 and not 1.9.2 as near as I can tell
    lambda{
      client=Savon.client do |wsdl, http|
        wsdl.document = "https://w6.iconnectdata.com:443/cows/services/RealTimeOnline/wsdl/RealTimeOnline.wsdl"
        http.auth.ssl.verify_mode = :none
      end

      puts client.wsdl.soap_actions
      
      }.should_not raise_error
  end
end