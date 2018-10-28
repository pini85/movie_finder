  require 'open-uri'
  require 'nokogiri'
  require 'mechanize'

# require_relative "services/imbd.rb"
class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def title
  mechanize = Mechanize.new
  @title = []
  html_content = open("https://www.imdb.com/list/ls057823854/?sort=list_order,asc&st_dt=&mode=detail&page=1").read
  doc = Nokogiri::HTML(html_content)
  doc.search(".lister-item-header a").each do |title|
    @title << title.text.strip
  end
end


  def rating
    @ratings = []
    html_content = open("https://www.imdb.com/list/ls057823854/?sort=list_order,asc&st_dt=&mode=detail&page=1").read
    doc = Nokogiri::HTML(html_content)
    doc.css("div.ipl-rating-star.small").each do |rating|
     #doc.css('p.class1.class2') ==> access a specific attribute with 2 classes
      @ratings << rating.text.strip
    end
  end

  def poster
     @poster = []
     html_content = open("https://www.imdb.com/list/ls057823854/?sort=list_order,asc&st_dt=&mode=detail&page=1").read
     doc = Nokogiri::HTML(html_content)
     doc.xpath('.//img[@width = 140]/@src').each do |i|
      @poster << i
     end
  end
  def votes
     @votes = []
     html_content = open("https://www.imdb.com/list/ls057823854/?sort=list_order,asc&st_dt=&mode=detail&page=1").read
     doc = Nokogiri::HTML(html_content)
    doc.css('div.lister-item-content p.text-muted span[name = nv]:nth-child(3)').map do |i|
    #to understand more about what is a "nth-child92)"
    #https://stackoverflow.com/questions/52817074/how-to-scrape-a-span-name-in-nokogiri-in-ruby
      @votes << i.text.strip
    end
  end

  def year
    @year = []
    html_content = open("https://www.imdb.com/list/ls057823854/?sort=list_order,asc&st_dt=&mode=detail&page=1").read
    doc = Nokogiri::HTML(html_content)
    doc.css(".lister-item-year").each do |i|
      @year << i.text.strip.to_s.gsub(/[(),I]/, "")
    end
  end

  def genre
    @genre = []
    html_content = open("https://www.imdb.com/list/ls057823854/?sort=list_order,asc&st_dt=&mode=detail&page=1").read
    doc = Nokogiri::HTML(html_content)
    doc.search(".genre").each do |genre|
      @genre << genre.text.strip
    end
  end

  def time
    @time = []
    html_content = open("https://www.imdb.com/list/ls057823854/?sort=list_order,asc&st_dt=&mode=detail&page=1")
    doc = Nokogiri::HTML(html_content)
    doc.css("div.lister-item-content p.text-muted.text-small span.runtime").each do |i|
      @time << i.text.strip
    end
  end

  def meta_critic
    @meta_critic = []
    html_content = open("https://www.imdb.com/list/ls057823854/?sort=list_order,asc&st_dt=&mode=detail&page=1")
    doc = Nokogiri::HTML(html_content)
    doc.css("div.ratings-metascore span.metascore").each do |i|
      @meta_critic << i.text.strip
    end
  end

  def test
    html_content = open("https://www.imdb.com/list/ls057823854/?sort=list_order,asc&st_dt=&mode=detail&page=1").read
    doc = Nokogiri::HTML(html_content)
    @test = doc.css("div.list-description p b a")[0]["href"]
  end
end
