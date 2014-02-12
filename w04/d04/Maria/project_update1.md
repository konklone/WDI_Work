#Mechanical Bird 
Update 1

This weekend I was able to use Twilio to send me a peom.

The poet I want to use for project has a soundcloud acct with him reading his poems. However, Twilio doesnotwork with the .ma4 files soundcloud uses so I downloaded the .m4a and I converted it to .mp3 using a site called media.io

Then I uploaded the mp3 to my server and changed the code on the .rb file I was using (make_call.rb) and when I ran it, it called me and I could listen to the poem being read to me by the poet! Pretty cool!
This is my rb file that makes the call

require 'twilio-ruby'
 
# put your own credentials here - from twilio.com/user/account
account_sid = 'my acct sid'
auth_token = 'myauth token'
 
# set up a client to talk to the Twilio REST API
@client = Twilio::REST::Client.new account_sid, auth_token

@call = @client.account.calls.create(
  :from => '+13479605724',   # From your Twilio number
  :to => '+13475632424',     # To any number
  # Fetch instructions from this URL when the call connects
  :url => 'http://durganesh.com/recording1.mp3'
)

###Next Steps:

begin to flesh out the models and controllers...
