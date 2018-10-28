require 'open-uri'
require 'nokogiri'
class Imbd
  def initalize(node, key)

  def data_title_genre_votes_poster(node, key)
    @data = Hash.new
    html_content = open("https://www.imdb.com/list/ls057823854/?sort=list_order,asc&st_dt=&mode=detail&page=1").read
    doc = Nokogiri::HTML(html_content).class
    binding.pry
    doc.search(node) do  |genre|
      array = @data << genre.text.strip
      hash = array.to_h
    end
  end
  # #name
  # data_title_genre_votes_poster(".lister-item-header/a")
  # #genre
  # data(".genre")
  # #votes
  # data("div.lister-item-content > p.text-muted > span[name = nv]:nth-child(2)")
  # #poster
  # data(".lister-item-image/a/@src")

  # def data_rating(node, key)
  #   html_content = open("https://www.imdb.com/list/ls057823854/?sort=list_order,asc&st_dt=&mode=detail&page=99").read
  #   doc = Nokogiri::HTML(html_content)
  #   doc.search(node).each do |rating|
  #     @data << rating.text.strip
  #   end
  #   @data = ratings.reject do |i|
  #     ["Rate","0","1","2","3","4","5","6","7","8","9","10"].include? i
  #    end
  # end
  # #rating
  # data_rating(".ipl-rating-star__rating")

  # def data_year(node, key)
  #   @year = []
  #   html_content = open("https://www.imdb.com/list/ls057823854/?sort=list_order,asc&st_dt=&mode=detail&page={page}").read
  #   doc = Nokogiri::HTML(html_content)
  #   doc.css(node).each do |i|
  #     @year << i.text.strip.to_s.gsub(/[(),I]/, "")
  #   end
  # end
  # #year
  # data_year("a.flat-button.lister-page-next.next-page")
end

