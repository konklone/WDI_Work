Dependency.destroy_all
Student.destroy_all

s = Student.create( name: "PJ Hughes", project_description: "I want to turn the whole process of knowing what students' projects are into a a simple, interactive web application. Students will be able to add their personal and project information into the application and then list the frameworks that their project will depend on (APIs and libraries/modules). Other users will be able to browse (or even search) that data.", github_link: "https://github.com/h4w5/projectio")

s.dependencies.create( name: "GitHub API", dep_type: "API", is_gem: true, documentation_link: "http://developer.github.com/v3/", other_link: "http://rubygems.org/gems/github_api" )

s = Student.create( name: "Jeff Konowitch", project_description: "Pastey interfaces with your PasteBin account, and helps you to quickly copy and share problematic code with collaborators. Just identify a file on the command line and quickly get back a short URL that you can send to anyone.", github_link: "https://github.com/jkonowitch/pastey" )

s.dependencies.create( name: "PasteBin API", dep_type: "API", is_gem: false, documentation_link: "http://pastebin.com/api", other_link: "" )

s = Student.create( name: "Peter Lai", project_description: "Basically, it's Facebook. But for dogs. Dogs post photos and play Farmville, and most everything is about bones and toys and walkies... I kinda think maybe we can let cats on, but that's down the road. Really what I want to focus on is allowing dogs to poke ('sniff'?) each other, post photos of their bones and stuff, and have the whole thing just get a crazy overpriced IPO and then I'll retire.", github_link: "https://github.com/peterylai/facebookfordogs" )

s.dependencies.create( name: "facebooker2 (Facebook API)", dep_type: "API", is_gem: true, documentation_link: "https://github.com/mmangino/facebooker2", other_link: "https://developers.facebook.com/docs/reference/apis/" )
s.dependencies.create( name: "Nokogiri", dep_type: "library", is_gem: true, documentation_link: "http://nokogiri.org/", other_link: "http://rubygems.org/gems/nokogiri" )

s = Student.create( name: "Remy Hô", project_description: "Ruff ruff ruff. Ahem, sorry: something in my throat... My idea is Twitter, but for birds. And I'm building it from the ground up. No dependencies yet! I'm still fleshing out the details a bit. There will be lots of chirping.", github_link: "" )
