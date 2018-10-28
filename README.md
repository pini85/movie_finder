Good to learn about scrapping with Nokogiri, open-uri and Mechanize gems before proceeding.<br>

-Nokogiri and open-uri basics in Le Wagon lecture.<br>
-Nokogiri tutorials:<br>
<a href = "http://ruby.bastardsbook.com/chapters/html-parsing/"><br>
http://www.nokogiri.org/tutorials/searching_a_xml_html_document.html<br>

-Mechanize tutorials:
http://ruby.bastardsbook.com/chapters/mechanize/
http://tutorials.jumpstartlab.com/topics/mechanize.html

**1)The idea of this app is to scrape movie data from across Imbd, Rotten Tomatoes and Meta-critic.

*There are API's that give you this service. But want to create my own for practising purposes.

Something like this website. But much more user-friendly:
https://www.allmovie.com/advanced-search

***I put all the scrapping logic in the pages controller just for testing. After that need to make a new project with the proper models.***

- The following objects to scrape to create a potentially good algorithim

Title |
Genre |
Rating |
Votes |
Movie critics/Reviews |
Year |
Duration |
Movie image |
Link to Imbd | <br>
<em>Anything else?</em>

**2) After you can get all of this data. Need to build models to store the data with Active Record to help retrieve that data to make algoritihims.

<em>- A user can login and get his saved search algorithims by name.</em>

Also option of programs default search algorithims. For different criterias for example:

- To get lesser known movies that have a good rating:

Genre: Comedy <br>
Votes: between 40-400 <em><== Votes after 400 become to main stream. Need to find the sweet spot.</em>
Imbd Rating: 7.0 <em><== Comedy usually is okay of a rating 6.8 in Imbd</em>
  Rotten Tomatoes Rating: 60 <em><== Rotten Tomatoes is much harsher rating movies</em>
  Meta Critic Rating: 70 <em><== I'm not sure with meta-critic. Need to find the sweet spot.</em>

<strong>*</strong>Thriller,Sci-fi needs to have at least a 7.5 rating
<strong>*</strong>Horror at least a 7

**------ PROBLEMS ------

<strong>1)</strong> I cannot scrape Imbd images. It is encrypted. Need to find a way to get the images of each searched movie
<strong>2)</strong> I cannot scrape multiple pages at the same time. Need to learn Mechanize gem.
