---
layout: post
title:  "How to Set Up a Blog Site Using Jekyll and GitHub Pages"
permalink:  "How_To_Set_Up_Your_Blog_Site_Using_Jekyll_and_GitHub_Pages"
date:   2016-10-21
---

Since I set up this site using Jekyll and Github Pages, why not write a post? There is no hosting cost and it is easy to use. Here is a step by step guide to set up a Jekyll site using GitHub. It covers from the basic such as starting with a generic theme to deployment. We are using Jekyll Iris Theme as an example here because that is what I am familiar with the most. With this guide you will be able to quickly and easily have a blog ready to go!

<br/>		

##Step 1: Setting Up and Running a Jekyll Site Locally
You can clone Jekyll Iris theme by following the commands below, or you can find a theme you like at [Jekyll Theme website](http://jekyllthemes.org/)
```
git clone http://github.com/XunaXu/Jekyll-Iris.git
cd Jekyll-Iris
gem install bundle (if you don't have bundle installed in your computer)
bundle install
jekyll serve
```
Open a web browser at this address: http://127.0.0.1:4000/Jekyll-Iris/.
Note: I am using a Mac which has a 2.3.0 Ruby pre-installed. You may need to download [Ruby](https://www.ruby-lang.org/en/downloads/) if you don't have it.

{{site.div-expand}}
<img src="{{site.baseurl}}/assets/images/setup_jekyll.jpg" alt="Set up and run a jekyll theme"/>
{{site.end-div-expand}}


<br/>

##Step 2: Customising The Site
Now you have a generic site up running, it is time to make it yours.

* ###Update _config.yml
	Open the jekyll iris project using an IDE or whatever way you prefer. There is _config.yml located at the top level of the directory. There are a list of variables in _config.yml we need to change. **Any changes in this file requires to run 'jekyll serve' to take effect**.

	{{site.div-expand}}
	<img src="{{site.baseurl}}/assets/images/config.jpg" alt="_config.yml file">
	{{site.end-div-expand}}

	* ####Update Site Title
	```
	title: Xuna Xu
	```
Update the title variable to your name or whatever you like. This will impact on the site title and also the site logo which is located at the right hand side of the navigation bar. Currently it displays as my name.

	* ####Update Contact Information
	```
	github    : http://github.com/xunaxu
	twitter   : http://twitter.com/xuna_x
	linkedin  : https://au.linkedin.com/in/xuna-xu-8a135094
	avatar    : /assets/images/my_avatar.jpg
	```
	Social media accounts are your contact details in the footer, so people can connect with you via github, twitter and linkedin. To change the avatar, you need to replace my_avatar.jpg located at Jekyll-Iris/source/assets/images. The rest are not being used and are there only for house keeping.

	* ####Add Google Analytics
	```
	# google analytics
	google_analytics: UA-819232-**
	```
Here is a [google analytics blog post](https://support.google.com/analytics/answer/1032385?hl=en) for getting your tracking id. Once you have the tracking id, you can replace the dummy value here.

	* ####Add Disqus Comment
	```
	# comments
	comments: true
	disqus_shortname: "xunaxu"
	```
If comments variable is set to false, the comment section is not displayed.
Disqus_shortname is your disqus user name, you can register one from the [Disqus site](https://disqus.com/profile/signup/)

	* ####Add Mail Chimps Subscribe Form
	```
	# subscribe
	subscribe: true
	```
If subscribe variable is set to false, the subscribe form is not displayed.
Here is the [blog post](http://kb.mailchimp.com/lists/signup-forms/add-a-signup-form-to-your-website) from mail chimps for getting a subscribe form. Once you have the embeded form code, copy and paste into Jekyll-Iris/source/_includes/subscribe.html.

	* ####Configurate which social media account can share your blog post
	```
	#share
	email-share: true
	fb-share: true
	twitter-share: true
	linkedin-share: true
	reddit-share: false
	google-plus-share: true
	tumblr-share: false
	pinterest-share: false
	```
You can simply change the value to true or false, you can turn share icons on or off for your blog posts.

	* ####Configurate how many posts in one page
	```
	paginate: 2
	```
Currently it only displays two posts per page. If it is more than two posts in the post folder, 'Order Post' button will appear and navigate users to more posts. You can just change it to the suitable number for your site.

	* ####Configurate the dynamic typing text at home page

		```
		lines:
			- text: "<span>The best preparation for tomorrow is doing your best today.</span>"
			- text: "<span>Without documentation and test cases, my 'masterpiece' is my own graveyard. -xunaxu</span>"
		```
Leave \<span\> in and replace any text you want, you can also add more lines too.

* ### Update Color Theme
Not everyone likes pink and purple. You certainly can change them. The file is located at Jekyll-Iris/source/_sass/_variables.scss
You only need to run 'jekyll serve' for _config.yml. For others files such as sass files, all you need to do is to refresh the web browser to see changes.

	{{site.div-expand}}
	<img src="{{site.baseurl}}/assets/images/sass_variables.jpg" alt="Find variables.sass file in source folder">
	{{site.end-div-expand}}

	```
	$primary-color: #7E57C2;
	$secondary-color: #F48FB1;
	```
You can change primary and secondary color here. Primary color is purple, and secondary color is pink in this theme. Blue and green may go well too.



##Step 3: Writing Your First Post
You may be happy with the site and decide to write a first blog post, or you may want to customise more, useful tips down the bottom of the page may help you to get started.

1. ####Make a new file
Navigate to the _post folder located at Jekyll-Iris/source/_posts, then create a new file named in a format as 'yyyy-mm-dd-fileName.md' or 'yyyy-mm-dd-fileName.markdown', For example, '2016-10-21-how to set up a blog site using Jekyll and GitHub.md'. **The date in the file name is important, can not be omitted**.

	{{site.div-expand}}
	<img src="{{site.baseurl}}/assets/images/new_file.jpg" alt="Create a blog post in _post folder">
	{{site.end-div-expand}}

2. ####All posts begin with this exact format:

			---
			layout: post
			title: "how to blah"
			permalink: "how to blah"
			date: 2016-10-21
			---
			your post content starts here!


	layout: You can refer any layout from Jekyll-Iris/source/_layout folder. In this theme, you only use the post layout.
title: Post title
permalink: This needs to be unique, it will become a part of the url
date: Posts are sorted by the date in a descendant order.

3. ####Write the content
	You can use markdown syntax and/or a normal html syntax to write blog content. Once you are familiar with markdown syntax, it is faster to write your posts compared with html syntax.   
	{{site.div-expand}}
	<img src="{{site.baseurl}}/assets/images/syntax.jpg" alt="Markdown and html syntax as an example">
	{{site.end-div-expand}}

	{{site.hint}}
	<a href="https://guides.github.com/features/mastering-markdown/">A Markdown Guide - Mastering Markdown</a> is always handy.
	{{site.end-hint}}
	To highlight code syntax, please using Jekyll highlight below (no '\\' required ).
	```\{\% highlight css %}
	\{\% endhighlight %}
	```

<br/>


## Step 4: Deployment

1. ####Get a GitHub Pages
	Create a GitHub repository named yourUserName.github.io. Having trouble? Follow steps at [GitHub Pages](https://pages.github.com/).

2. ####Update Variables in _config.yml
	Now you have a web page hosted at GitHub. There are a couple of more things we need to do before deploying your Jekyll site into the repository.  Back to _config.yml, we need to change two variables: url and baseurl. url should be your GitHub page as yourUserName.github.io. and baseurl should be empty. Your site will be hosted at this url 'yourUserName.github.io' after deployment.

3. ####Deploy to GitHub
	Finally, it is deployment time. How exciting! The site will be published and we will find out if it s going to work or not. The deploy command lines are below, you just need to replace 'yourAccountName' in the repository address.
	```cd _site
	git init
	git add --all
	git commit -m "Deploy to GitHub Pages"
	git push --force --quiet "https://github.com/yourAccountName/yourAccountName.github.io.git" master
	```

Congratulations! Your site should be live at this address, http://yourUserName.github.io.

<br/>


##Step 5:  Getting a Customised Domain

Great news, you have spent absolutely zero money to own a blog site so far. You maybe happy with a generic github domain, as yourUserName.github.io, but you may want to have a domain ending with .com, .net, .org etc. Here is a youtube tutorial which helped me to set it up. [How to: Free Website Hosting + Custom Domain with Github Pages](https://www.youtube.com/watch?v=CJLb8UUIJPg)

Don't forget to update the url variable in _config.yml to whatever domain name you decided to buy.

<br/>

---

###Useful Tips
* Referring global variables from _config.yml in the source folder using site.variableName. Here is an example, delete any '\\' in the code.
	```
	\{\{ site.author.name }}
	```


* Debugging: Printing out variables using inspect in Jekyll 3, here is an example, delete any '\\' in the code.
	```
	\{\{ page.url | inspect }}
	```

* Commenting syntax, delete any '\\' in the code example below.
	```
	\{\% comment %}
	blah blah blah
	\{\% endcomment %}
	```

* [The official Jekyll documentation](https://jekyllrb.com/docs/quickstart/) is highly recommend to have a look if you want to edit the source folder.

<br/>
