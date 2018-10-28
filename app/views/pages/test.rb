def title
  @title = []
  html_content = open("https://www.imdb.com/list/ls057823854/?sort=list_order,asc&st_dt=&mode=detail&page=#{number}").read
  doc = Nokogiri::HTML(html_content)
  doc.search(".lister-item-header/a").each do |title|
    @title << title.text.strip
  end
end
age.css('a.title').each do |link|
        if link['href'].include?('http')
          @headline << { content: link.content, href: link['href'] }
        else
          @headline << { content: link.content, href: "http://reddit.com" + link['href'] }
        end
      end
      @headline
