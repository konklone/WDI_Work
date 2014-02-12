# <a name="toc"></a>Workflow Process for Second Project

## Table of Contents

1. [Toolkit Description](#toolkit)
2. [Setting Up Your Git Repo](#setup)
3. [GitHub Collaboration Workflow](#githubcollab)
4. [Managing Collaboration with Pivotal Tracker](#pivotal)

<!-- 6. Shorthand Workflow (Recap) ... a reiteration ...  # TODO -->

## <a name="toolkit"></a>Part I: Toolkit Description
([Return to Top &uarr;](#toc))

#### Git

Keep in mind, Git is the revision control and code management system we refer to when we talk about the suite of programs sharing the command-line-tool name `git`. We group the source code of a project into a folder called a **repo** (or *repository*), and then we make changes to the code. If we want to save these changes (or no longer save changes to them), we **add** or **remove** with the commands `git add ...` and `git rm ...`, and then we take a "snapshot" of the code using the command `git commit ...`. Each of our repos has a history where each commit has (ideally) one previous commit, and we can view that history using `git log` (and the differences between two commits using `git diff`).

One of the most important aspects of Git is its distributed nature. We know how to split up our repo in to multiple, simultaneous **branches** using `git branch`, moving between them using `git checkout`, and merging them back into one another using `git merge`. This way we can test out changes to code in a way that is safe and doesn't affect the working state of the **master** branch of the repo.

We also know how to mirror a repo across multiple computers (referred to as **remotes**, in relation to whichever repo is **local** to your computer) and work with these versions (really just branches) using `git remote`. We can also merge changes across these remotes by using `git push` and `git pull`.

There is a lot more that you can do with Git, once you understand the structure and nature of Git and how to use it's tools to manage your repo and it's history, but it takes time and experience to get there... :)

#### GitHub

GitHub is a host for Git repos. Its website allows many users to branch (on GitHub, branches completely local to GitHub but have different "owners" are known as **forks**) one another's repos in a safe way (controlling who can merge whom's work). We've worked extensively with GitHub-hosted remotes that we call (by convention) **origin** and **upstream**: origin being a branch (ie fork) of the repo that we own and that is meant to mirror the current state of our local repo, and upstream being a branch (ie fork) that is owned by the person who originally created the repo and "owns," or manages, the project.

For this project, we will assume that all of the team members have ownership rights to the repo, and thus needn't fork the project. Instead, each team member can make simple, team-owned GitHub branches that they push their changes to, and the project manager (**projman** below) will be in charge of managing the *master* GitHub repo branch and merging each team member's changes so that they can be shared with each local copy, or **clone**, of that repo.

#### Pivotal Tracker

[Pivotal Tracker](https://www.pivotaltracker.com) is the industry standard Rails- and [agile](http://en.wikipedia.org/wiki/Agile_management)-focused project management software. It should be used to both plan the project and to manage its development. You create a new project there, add collaborators, and then enumerate the user stories for the project. User stories can then be rated and broken down into workable units, and "checked out" by team members. The project manager has the ability to accept or reject a user story once the team member assigned to it submits their changes to the GitHub repo.

## <a name="setup"></a>Part II: Setting up Your Git Repo
([Return to Top &uarr;](#toc))

#### 1. (projman) Create a Git Repository

A. Initialize your repo by creating a new directory (`mkdir appname`)*, `cd`ing into it, and running:

```bash
git init
```

**&#42;** &mdash; if your new project involves a generated file structure, do that instead. Eg, with Rails:

```bash
rails new appname --database=postgres
cd appname
git init
```

B. Create a Readme file in your repo's base.

```bash
touch README.md
```

C. Stage the Readme (and the newly generated file structure, if necessary*); commit the change.

```bash
git add --all .
git commit -m "First commit."
```

D. Add files you don't want tracked by git to the `.gitignore` file. [Reference](https://help.github.com/articles/ignoring-files)

#### 2. (projman) Add a New Remote (*origin*) to GitHub and Add "Collaborators"

A. Create a new GitHub repo.

B. Link and upload ("push") your local repo.

```bash
git remote add origin ...link...
git push origin master
```

C. On GitHub, add collaborators from the repo's settings page.

#### 3. (team) Collaborators Can Now Clone the GitHub Repo

A. On GitHub, get the link from the repo's page.

B. Clone the repo locally.

`git clone ...link...`

## <a name="githubcollab"></a>Part III: Git & GitHub Collaboration
([Return to Top &uarr;](#toc))

#### 1. (team & projman) Plan Out and Assign "Features"

Using Pivotal Tracker, create user stories and break them down into tasks. Prioritize them, and then have team members choose which to work on, in order...

***[See the feature development and project tracking workflow below.](#pivotal)***

#### 2. (team) Create a local "Feature" Branch for each new feature

A. Get the most updated version of the repo.

```bash
git pull origin master
```

B. New local branch
```bash
  git branch feature-name
  git checkout feature-name
```

**&#42;** &mdash; They should be relevant to *features*, not to team members, or dates, or anything else. It makes more sense for the projman when they know they are merging a feature into the application, rather than adding "Some changes made by PJ today..."

#### 3. (team & projman) Work on the Feature!

A. **Write some code!** (Sigh... If only programming were all about writing code...)

B. Commit often! Not just when you're "done" or ready to push the feature!

`git add ...` & `git commit -m "..."` again and again!

***[See the feature development and project tracking workflow below.](#pivotal)***

#### 4. (team & projman) Push Local Feature Branch to GitHub Repo Feature Branch

A. Ensure that you are not in your master branch, and then push to the requisite GitHub Repo feature branch*.

```bash
git checkout feature-name
git push origin feature-name
```

**&#42;** &mdash; DO NOT PUSH TO MASTER! :) It's not the end of the world, but it will be frustrating for the projman.

B. **IF** you can't push because there are outstanding changes, you may have to update your local repo. ***[See the merging conflicts workflow below.](#merging)***

#### 5. (team & projman) Send a Pull Request to the Master Branch from the Feature Branch

A. On GitHub, send a pull request from the updated feature branch.

#### 6. (projman) Review and Accept or Reject the Pull Request

A. Fetch all current branches from GH
```bash
  git fetch origin
  git branch -a
```
B. Checkout the new feature locally
`git checkout new-feature`

C. Run the code and make sure it works as outlined in the user story. Merge the pull request and ACCEPT the story in Pivotal Tracker if so, otherwise REJECT the story with comments.

<a name="merging"></a>**MERGE CONFLICTS**: You may need to resolve merge conflicts from when trying to accept the pull request. 
- [Resolving merge conflicts in Git](http://genomewiki.ucsc.edu/index.php/Resolving_merge_conflicts_in_Git)

## <a name="pivotal"></a>Part IV: Managing Collaboration with Pivotal Tracker
([Return to Top &uarr;](#toc))

(Recap of workflow from Friday's lesson)


A. Write user stories into Pivotal Tracker.
  - As a *role*, I want to *goal*, in order to *reason*
  - Each story should represent incremental value to the end-user
  - Stories should be Independent, Valuable, and Small

B. Prioritize.

C. Estimate (1 - 3 pts)

D. Story Breakdown (in description of story)

E. Work on a feature

  1. Click `Start`
  2. When done working locally, click `Finish` 
  3. When pushed to feature branch and created pull request, click `Deliver`
  4. Project Manager reviews and `Accepts`/`Rejects`

<!-- 
## <a name="recap"></a>Part VI: Shorthand Workflow
([Return to Top &uarr;](#toc))

# TODO ... here we put the process for each team member in an easy order, focusing on what to do with each feature (check it out on pivotal, branch, update status on pivotal, scrum, work, etc., commiting and adding the whole while, push, pull request, mark as finished on pivotal, and then repeat) -->