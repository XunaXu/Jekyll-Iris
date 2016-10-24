---
layout: post
title:  "How to Set Up a Blog Site Using Jekyll and Github"
permalink:  "How to set up your blog site using Jekyll and Github"
date:   2016-10-21
---

Here is a step by step guide to set up a Jekyll site and host on github as github page. It covers from starting with a generic theme to deploying on your site. Here we are using Jekyll Iris Theme as an example.

<br/>

##Step 1: Set Up and Run a Jekyll Site Locally
You can clone Jekyll Iris theme by following commands below, or you can find a theme you like from [Jekyll Theme website](http://jekyllthemes.org/)
```git clone http://github.com/XunaXu/Jeykll-Iris.git
cd Jeykll-Iris
bundle install
jekyll serve
```
Open a web broswer at this address: http://127.0.0.1:4000/Jekyll-Iris/

{{site.div-expand}}
<img src="{{site.baseurl}}/assets/images/setup_jekyll" alt="Set up and run a jekyll theme">
{{site.end-div-expand}}

<br/>

##Step 2: Customise The Site
Now you have a generic site up running, it it the time to make it yours.

* ###Update _config.yml
	Open the jekyll iris project using an IDE or whatever way you prefer. there is _config.yml located at on the top level of directory. There are a list of variables in _config.yml we need to change. *Any changes in this file requires to run 'jekyll serve' to take effects*.

	{{site.div-expand}}
	<img src="{{site.baseurl}}/assets/images/config.jpg" alt="_config.yml file">
	{{site.end-div-expand}}

	* ####Update Site Title
	![the title section in _config.yml]({{site.baseurl}}/assets/images/title.jpg)
	Update the title variable to your name or whatever you like. This will impact on the site title and also the site logo which is located at the right hand side of the navigation bar. Currently it displays as my name.


	* ####Update Contact Information
	![the author section in _config.yml]({{site.baseurl}}/assets/images/author.jpg)
	Social media accounts are your contact details in footer, so people can connect with you via github, twiiter and linkedin. To change avatar, you need to replace avatar.jpg located at Jekyll-Iris/source/assets/images. The rest are not being used and only for house keeping.

	* ####Add Google Analytics
	![Set up google analytics for your site]({{site.baseurl}}/assets/images/google_analytics.jpg)
	Here is a [google analytics blog post](https://support.google.com/analytics/answer/1032385?hl=en) for getting your tracking id. Once you have the tracking id, you can replace the dummy value here.

	* ####Add Disqus Comment
	![Set up comments using disqus]({{site.baseurl}}/assets/images/disqus.jpg)
	If comments variable is set to false, the comment section is not displayed.
	Disqus_shortname is your disqus user name, you can register one from the [Disqus site](https://disqus.com/profile/signup/)

	* ####Add Mail Chimps Subscribe Form
	![Set up a subscribe form using mail chimps]({{site.baseurl}}/assets/images/mail_chimps.jpg)
	If subscribe variable is set to false, the subscribe form is not displayed.
	Here is the [blog post](http://kb.mailchimp.com/lists/signup-forms/add-a-signup-form-to-your-website) from mail chimps for getting a subscribe form. Once you have the embed form code, copy and paste into Jekyll-Iris/source/_includes/subscribe.html.

	* ####Configurate which social media account can share your blog post
	![Configurate social media accounts for your blog post]({{site.baseurl}}/assets/images/post_share.jpg)
	You can simply change the value true or false, you can turn share icons on or off for your blog posts.

	* ####Configurate how many post in one page
	![Configurate the post number per page]({{site.baseurl}}/assets/images/post_per_page.jpg)
	Currently it only displays two posts per page. If it is more than two posts in the post folder, 'Order Post' button will appear and navigate users to more posts. You can just change it to the suitable number for your site.

	* ####Configurate the intro text
	![Configurate the dynamic-typing text in intro]({{site.baseurl}}/assets/images/intro_text.jpg)
	Leave \<span\> in and replace any text you want, you can also add more lines too.

* ### Update Color Theme
	Not everyone likes pink and purple. You certainly can change them. The file is located at Jekyll-Iris/source/_sass/_variables.scss
	You only need to run 'jekyll serve' for _config.yml. For others files, you need to refresh the web broswer to see changes.

	{{site.div-expand}}
	<img src="{{site.baseurl}}/assets/images/sass_variables.jpg" alt="Find variables.sass file in source folder">
	{{site.end-div-expand}}

	![Change primary and secondary color]({{site.baseurl}}/assets/images/color.jpg)
You can change primary and secondary color here. Primary color is purple, and secondary color is pink in this theme. Blue and green may go well too.


##Step 3: Write your first post
You may be happy with the site and decide to write a first blog post, or you may want to customise more, useful tips down the bottom of the page may help you to get started.

Navigate to the _post folder located at Jekyll-Iris/source/_posts,


##Step 3:  Get a custom domain and host on github

Now you have customised a local website running on your local pc. you may want to have your own web domain, such as www.xunaxu.com instead of xunaxu.github.io. Here is a youtube tutorial which helped me to set up my site.

[How to: Free Website Hosting + Custom Domain with Github Pages](https://www.youtube.com/watch?v=CJLb8UUIJPg)

<br/>

## Step 4: Production and Deployment
In the production, you probably don't need a base url as http://[your site]/Jekyll-Iris/. so base url in _config.yml should be empty.

The deploy command lines are below, you just need to change the github repo to yours.

{% highlight bash %}
cd _site
git init
git add --all
git commit -m "Deploy to GitHub Pages"
git push --force --quiet "https://github.com/yourAccountName/your.git" master:gh-pages
{% endhighlight %}

<br/>

---

###Useful Tips

* Debugging: Printing out variables using inspect
```
\{\{ page.url | inspect \}\}
```

* Commenting
```
\{\% comment \%\}
	...adfasdf..
\{\% endcomment \%\}
```

* Don't forget to run 'jekyll serve' if there are changes in _config.yml

* Links
	* [The official Jekyll documentation](https://jekyllrb.com/docs/quickstart/) is highly recommend to have a look if you want to edit the source folder.
	* [A Markdown Guide - Mastering Markdown](https://guides.github.com/features/mastering-markdown/) is always handy. :)

<br/>


---

###Disclaimers
I am not a rubyist, just wanna to set up a git hub page with a minimum cost and more
##Step 2: A quick guide for Jekyll using Jekyll Iris

###_config.yml

This is a file with global variables. There are detailed comments to explain all variables in the actual file. Some variables are for toggle features on and off, some are for defining your disqus account, your google analytics id. etc.  So Take a look at _config.yml file to begin with is a good start, and don't forget to run `Jekyll Serve` on the terminal if there are some change in this file.

All global variable can be referred in your source file, here is an example. `\{\{site.author.name\}\}`

<br/>

###Source folder

Source folder is where you should do modifications and put your posts in. It auto generates _site folder for you when the 'jekyll serve' command is runing. You do need to understand this folder if you want to customise your website. Here are basic explanations.

Source folders has five folders, four private, one public.

* #### _includes
It divides a webpage into separated html sections: a build block for all pages.
	* footer
	* header (nav bar in this case)
	* comments (for disqus),
	* social (as social icons, your linked in, facebook, github accounts)
	* share (as allow other to share your posts via twitter, google, etc)
	* subscribe ( mail chimp in this case)
	* scripts (All javascripts file links)
	* head (as <head> in html section)


* ####_layouts
Here are only two layouts defined, one for all post pages and about page. It requires html sections from _includes folder to build a webpage.
	* default layout: a standard webpage with header and footer. it is used for other pages, such as about, index and post pages.
	* about layout: it is based on the post layout.
	* post layout: post layout which defines your blog post.


* ####_posts
A folder containing markdown files for blog posts. This is the only folder you need to change once you are happy with the website functions and looks. You need to define these variables on the top for each post.
	* layout: post as an example, you refer any layout from _layout folder.
	* title:  "Consectetuer adipiscing elit-1"
	* permalink:  "consectetuer-adipiscing-elit-1" (this needs to be unique, it will become a part of the url)
	* date: the post normally are sorted by the date in decent order
	* categories: (it is not used here, but you can define tags to category your posts.)


* ####_sass
	It has all scss files for the site. Your cool makedown style and unique website looks are beginning from here.


* ####assets
	* js folder - Js libraries and packages you are using, copy and paste here.
	* fonts folder - we are using foundation here.
	* images folder - this is where put your avatar
	* css folder - it refers to _sass folder.
	* 404 page
	* about page
	* index page
	* feed.xml  - not being used here.

<br/>
