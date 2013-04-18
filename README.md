# Twilio Workshop: Presenter Edition

So you want to give a Twilio workshop?  Awesome!  I hope these materials can help.  Team Twilio wants your workshop to be extremely successful - if you have any questions or concerns, feel free to reach out to me (Kevin - kwhinnery at twilio dot com).  I'll be happy to help get your event off the ground :)

The Twilio workshop has four main educational objectives:

* Developers should be understand how communications APIs could be employed for their unique business/use case
* Developers should successfully write code that uses the Twilio APIs independently
* Developers should be exposed to the support resources, logs, helper libraries, and third party tools available to help them
* Developers should have fun hacking and making phones ring

The workshop is designed to run over a half day, approximately three hour session.  This workshop is not intended to "certify" a developer on Twilio, but rather to give the developer a solid grounding for further exploration.

## Preparing for your workshop
There's a lot of ground work that goes in to running a successful workshop.  This guide is intended to help call out some of the major deliverables, and help you put together a great experience.

### Workshop registration and attendance
I would suggest running registration for your event through a software platform built for one-off events, such as Eventbrite.  You should start promoting your event about a month prior to running it if you have enough lead time.  I usually cap registration at 30 people - for me, 30 is the absolute maximum number of attendees one instructor can handle while giving enough attention to individual developers.

Eventbrite has the ability to create a waitlist - I would reccommend making use of this, as spots at these workshops have tended to fill up.  In the days before the event, it is common to get a handful of cancellations.  These seast should be redistributed to members of the wait list.  Even on top of that, it is common to have a handful of people not show up for the workshop (if you're running your workshop for free).  For a "sold out" class of 30, it is reasonable to expect ~25 attendees.

### Finding a venue
Your presentation venue needs to have a few core features:

* Solid wifi network
* Table space for up to 30 people with laptops, phones, and other paraphenalia
* Power outlets (3 hours might be more juice than folks have in their batteries)
* Nearby parking or convenient transit

Co-working spaces make excellent workshop venues.  They are typically centrally located, have "business quality" wifi, and professional presentation spaces (sometimes even dedicated classrooms).  If you can, attempt to negotiate free usage of the space in exchange for plugging the co-working space to your attendees, and in your pre-event mailings.  The workshop usually attracts several freelancers and small businesses who might make use of a co-working space themselves.

### Preparing Attendees

The way this workshop is structured, attendees will need to have a few bits of software set up prior to arrival.  This is an example welcome letter you could send to attendees:

"""
Hi everybody!

Thanks for registering for the upcoming Twilio workshop at Joule this Friday, 4/5.  I'm looking forward to meeting you all (or meeting you again, in some cases)!  Please excuse the length of the e-mail to follow, but I'd like to share a few instructions with you to ensure we can hit the ground running when the workshop begins.

Notes on Class Structure

For the purposes of teaching the core concepts of the Twilio API to a class of students with varied backgrounds, we have chosen to teach "lab sessions" in a single programming language, with the simplest possible web framework.  The language will be Ruby, and the web framework we will use is Sinatra.

If you've never used Ruby or Sinatra before, fear not!  The exercises are structured to get you started very quickly, with "starter code" that contains a lot of the boilerplate for handling HTTP requests and rendering HTML (or XML) in response.

However, if you are confident in your ability to *very quickly* create simple web applications on your local machines that render HTML and XML in your framework of choice (node.js, PHP, ruby, python, Java, .NET), you can use those too. Please note that if you use these frameworks/platforms, you will need to write all code from scratch in every exercise.

If you choose to use a platform other than Ruby, please make sure to have the Twilio helper library for your platform downloaded (maybe even run through a quick start tutorial) prior to class:

http://www.twilio.com/docs/libraries

Also, the exercises in class will require that our applications be made available on the public internet.  A great tool to use for this purpose is Forward.  Forward temporarily exposes local ports (for example, Sinatra serves local web applications on port 4567) on publicly accessible URLs on the internet.  I will provide you with login credentials to use this service free of charge in class.  Unless you have a hosting setup you prefer to use, you should plan on installing Forward prior to class (see instructions below).

To actually write code in class, any text editor will do.  You probably have your favorite installed already, but across all platforms, a lot of people seem to really like Sublime Text 2.

Install and Setup Instructions

To install Forward and Sinatra for use during the workshop, you will first need to install Ruby and RubyGems.  If you're running on a Mac, these items are likely already installed.  If you don't have these items installed, Cloud Foundry has a really good set of install instructions:

http://docs.cloudfoundry.com/frameworks/ruby/installing-ruby.html

Next, you will need to install the Sintra, Twilio and Forward Ruby gems. In a terminal window or command prompt, issue the following commands.  You may need to use "sudo" depending on your system configuration:

[sudo] gem install sinatra
[sudo] gem install twilio-ruby
[sudo] gem install forward

This should be all the software you need prior to arriving in class.  To ensure you are able to write a Sinatra application and serve it to the internet, create a file called "hello.rb" and place the following code inside it:

https://gist.github.com/kwhinnery/5285329

And run this file using "ruby hello.rb" in ther terminal/command window.  This should launch "hello.rb" as a Sinatra web application, running on port 4567.

In another terminal or command window, enter the command "forward 4567".  This will use the Forward Ruby gem to expose port 4567 to the internet on a URL that looks something like https://qrp-1337.fwd.wf.

The first time you run this command, you will be prompted for a username and password.  Use the following credentials:

kwhinnery+workshop@foo.com
foopassword

Visit the URL that is output in the terminal to confirm that you see our welcome message.  If you have any problems with this configuration, please send me a note for help at kevin.whinnery@foo.com.

Thanks for Reading! 

Thanks for taking a few moments to prepare for the Twilio workshop!  Can't wait to see you there.  If you have any questions in the meantime, reply to this e-mail and I will be happy to assist you.
"""

## After Your Workshop

Collecting feedback from attendees is a critical element of the workshop.  After conducting your workshop, send out a Google Form survey to your attendees via e-mail, asking for their feedback.  Read and incorporate any feedback as necessary.  The format the survey takes is a brief 4 question survey:

* What did you think worked well about the workshop format, content, and presentation?
* What could be improved about the workshop?
* (use a 1-10 radio button form) On a scale of 1-10, with 10 being very likely, how likely are you to recommend this workshop to a friend or colleague?
* (use a 1-10 radio button form) On a scale of 1-10, with 10 being very likely, how likely are you to recommend that a friend or colleague use the Twilio APIs?
