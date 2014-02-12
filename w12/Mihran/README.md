#Oulipo 

====

Oulipo is a **web application for writers that enforces a user's duty to practice writing every day.**

The interface is a minimal browser-based word processor, where users are expected to complete a piece of writing with a minimum word count each day, or else face the shame of a public low score. 

While working on their daily composition, users can submit a 'blacklist': a list of banned expressions or words - perhaps given to them by their editor - which, if present in their composition, will bar them from submitting their work. 

If, by midnight in the server's time zone, the assignment is left incomplete, the incomplete 'draft' is deleted, and the failure reflected in the user's public score.

Users are allowed one day off from their task each week, but no more. 

##*User stories*
====

As a user, I want to be write and submit a piece of writing with a minimum word count each day, so that I may practice and develop good writing habits.

As a user, I want to be able to do my work in many sittings as I wish within the 24 hours allowed, without losing any work I did earlier that day, so that I may take my time and be given a fair chance. 

As a user, I want to be penalized for every day that I fail to write, so that I may feel pressure to write.

As a user, I want to see my past failures and successes represented in a "success" bar which accompanies my username in the application, so that I may be reminded at all times of my standing as a writer, and influence myself to keep the work up.

As a user, I want my success bar to be visible to all users, so that I may feel social pressure to keep the work up.

As a user, I want to take a day off from writing each week without my score suffering, so that I may have a healthy day of rest.

As a user, I want to look at my past entries, so that I may read over my work and track my progress as a writer.

As a user, I want to impose a blacklist of words and expressions on my writing, so that I may avoid using clichés, and improve my writing.

As a user, I want to sign up to the application so that I have my own personal account.

As a user, I want to log in with a password and log out, so that I alone can build on my work. 

As a user, I want to be able to click on a button that will make a random word or phrase appear on the page, so that I may draw writing inspiration from that phrase.

As a user, when I use forbidden words and try to submit my work, I want those words to be highlighted in red, so that I am warned not to use them.

##*Technologies*
====

**Backbone** for front-end MVC.

**[Timecop](https://github.com/travisjeffery/timecop) ** gem for time-dependent code.

**Underscore.js** 

**Sweet libs/plugins **from [Unheap](http://www.unheap.com/) to (possibly) use:

- [jQuery Fullscreen Editor](http://burakson.github.io/fseditor/)
- [Lightweight RTE jQuery plugin](http://batiste.dosimple.ch/blog/posts/2007-09-11-1/rich-text-editor-jquery.html)
- find others for nice buttons, tab view, etc.

**Heroku** to host my rails server.


##*Data model*
====

### **Users**
	-	id
	- 	username
	-	email
	-	password_digest
	-	standing
	-	timestamps


### **Entries**
	-	id
	- 	user_id
	-	text
	-	draft_status

	
### **Qualifications**
	-	id
	-	user_id
	-	name
	-	regex
	-	timestamps
	
## **Oulipo** ***(join table: Entries and Qualifications)***
	-	entry_id
	-	qualification_id
	-	pass_status
	

###ERD:
<img src="http://i.imgur.com/kcAp9PE.png">

====

##Wireframes
====
[wireframes tk]