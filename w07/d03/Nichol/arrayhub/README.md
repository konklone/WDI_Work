g#Arrayhub

Warmup to practice AJAX using XMLHttpRequest & review JavaScript

###Commit 1

* Get your AJAX request working in the console like we did yesterday with the Open Movie Database. When you enter a username and make a GET request to an address like this: `https://api.github.com/users/peterylai`, you should be able to get response text that looks like this:

```json
{
  "login": "peterylai",
  "id": 1940258,
  "avatar_url": "https://0.gravatar.com/avatar/4053f280a55ea718b238d3116b6a627a?d=https%3A%2F%2Fidenticons.github.com%2Fdb486e14f5d3617c0a08b61015e56d3d.png&r=x",
  "gravatar_id": "4053f280a55ea718b238d3116b6a627a",
  "url": "https://api.github.com/users/peterylai",
  "html_url": "https://github.com/peterylai",
  "followers_url": "https://api.github.com/users/peterylai/followers",
  "following_url": "https://api.github.com/users/peterylai/following{/other_user}",
  "gists_url": "https://api.github.com/users/peterylai/gists{/gist_id}",
  "starred_url": "https://api.github.com/users/peterylai/starred{/owner}{/repo}",
  "subscriptions_url": "https://api.github.com/users/peterylai/subscriptions",
  "organizations_url": "https://api.github.com/users/peterylai/orgs",
  "repos_url": "https://api.github.com/users/peterylai/repos",
  "events_url": "https://api.github.com/users/peterylai/events{/privacy}",
  "received_events_url": "https://api.github.com/users/peterylai/received_events",
  "type": "User",
  "site_admin": false,
  "name": "Peter Lai",
  "company": null,
  "blog": null,
  "location": null,
  "email": null,
  "hireable": false,
  "bio": null,
  "public_repos": 10,
  "followers": 18,
  "following": 3,
  "created_at": "2012-07-09T02:18:22Z",
  "updated_at": "2013-11-05T20:57:54Z",
  "public_gists": 1
}
```

###Commit 2

* Still using the console, you should be able to use the information in the response to create a div containing a new user. Check out the hard coded example for the HTML structure for a user. Make sure to include the image and github handle. The github handle should link to the corresponding github page.

###Commit 3

* Hook up your form so that you can enter a github handle in the input, hit submit, and perform the actions you were previously doing in the console to add that user to the page.

###Commit 4

* When I double click on the image of a user, remove that entire user from the page.

###Bonus

* When I mouse over on the image of a user, console log what their name is. (ie mine would be "Peter Lai" NOT "peterylai")