class Url < ActiveRecord::Base
  def short
    return Url.make_url(self.id)
  end

  def ellipsis_long
    # returns "http://www.lavanguardia.com/economia/marketing-publicidad/20150112/54423278382/ambito-digital-comercial-concentraran-demanda-profesionales-2015.html"
    # shortened as "http://www.lavanguardia.com/...2015.html
    ellipsis(self.long)
  end

  def self.make_url(num)
    # converts num in url
    # ToDo: in which port we are?
    'http://localhost:3000/url/'+num.to_s
  end

  #ToDo: move this kind of stuff to a gem
  private
    MAX = 60
    def ellipsis(value)
      if value.size > MAX
        left = value[0,(MAX/2)-5]
        right = value[-(MAX/2),value.size]
        # right = value.reverse.slice(0,(MAX/2)).reverse
        result = left+' ... '+right
      else
        result = value
      end
      result  
    end

end
