---
layout: post
title:  "How to set up your blog using Github and Jekyll"
permalink:  "How to set up your blog using Github and Jekyll"
date:   2016-10-21
categories: jekyll doco
---


##Step 1: Get a jekyll theme
You can Download or clone repo Jekyll Iris `git clone https://github.com/XunaXu/Jeykll-Iris.git` 
or find a theme you like from [Jekyll Theme website](http://jekyllthemes.org/)

<br/>

##Step 2: A quick guide for Jekyll Theme using Jekyll Iris

###_config.yml 

This is a file with global variables. There are detailed comments to explain all variables in the actual file. Some variables are for toggle features on and off, some are for defining your disque account, your google analystic id. etc.  So Take a look at _config.yml file to begin with is a good start, and don't forget to run 'Jekyll Serve' on the terminal if there are some change in this file.

All global variable can be referred in your source file. such as {{site.author.name}} as an example.


<br/>

###Source folder

Source folder is where you should do modificaions and put your posts in. It auto generates _site folder for you when the 'jekyll serve' command is runing. You do need to understand this folder if you want to customise your website. Here are basic explanations.

Source folders has five folders, four private, one public.

* #### _includes
It divides a webpage into separated html sections: a build block for all pages.

	* footer 
	* header (nav bar in this case)
	* comments (for disque), 
	* social (as social icons, your linked in, facebook, github accounts) 
	* share (as allow other to share your posts via twiiter, google, etc) 
	* subscribe ( mail chimp in this case)
	* scripts (All javescripts file links)
	* head (as <head> in html section)

<br/>

* ####_layouts
Here are only two layouts defined, one for all post pages and about page. It requires html sections from _includes folder to build a webpage.

	* default layout: a standard webpage with header and footer. it is used for other pages, such as about, index and post pages.
	* about layout: it is based on the post layout.
	* post layout: post layout which defines your blog post.

<br/>

* ####_posts
A folder containing markdown files for blog posts. This is the only folder you need to change once you are happy with the website functions and looks.  

	You need to define these variables on the top for each post.
	* layout: post as an example, you refer any layout from _layout folder.
	* title:  "Consectetuer adipiscing elit-1"
	* permalink:  "consectetuer-adipiscing-elit-1" (this needs to be unique, it will become a part of the url)
	* date: the post normally are sorted by the date in decent order
	* categories: (it is not used here, but you can define tags to category your posts.)

<br/>

* ####_sass
	All your scss files for the site.

<br/>

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

##Step 3:  Get a custom domain and host on github

Now you have customised a local website running on your local pc. you may want to have your own web domain, such as www.xunaxu.com instead of xunaxu.github.io. Here is a youtube tutorial which helped me to set up my site.

[How to: Free Website Hosting + Custom Domain with Github Pages](https://www.youtube.com/watch?v=CJLb8UUIJPg)

<br/>

## Step 4: Production and Deloy
In the production, you probably don't need base url as http://[your site]/Jekyll-Iris/. so in _config.yml, base url should be just empty.

The deploy command lines should be like this below, just need to change the github repo to yours.

{% highlight bash %}
cd _site
git init
git add --all
git commit -m "Deploy to GitHub Pages"
git push --force --quiet "https://github.com/yourName/your.git" master:gh-pages
{% endhighlight %}

<br/>

---

###Debugging Tips

* Printing out variables using inspect
{% highlight bash %} 
\{\{ page.url | inspect \}\} 
{% endhighlight %}


* Commenting 
{% highlight bash %} 
\{\% comment \%\}
	...adfasdf..
\{\% endcomment \%\}
{% endhighlight %}


<br/>

###Usefull Links

[The official Jekyll documenation](https://jekyllrb.com/docs/quickstart/) is highly recommend to have a look.

[Markdown cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) is always handy.
