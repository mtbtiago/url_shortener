class Url < ActiveRecord::Base
  def short
    # converts @id in url
    return 'http://localhost/'+self.id.to_s
  end

  def ellipsis_long
    # returns "http://www.lavanguardia.com/economia/marketing-publicidad/20150112/54423278382/ambito-digital-comercial-concentraran-demanda-profesionales-2015.html"
    # shortened as "http://www.lavanguardia.com/...2015.html
    ellipsis(self.long)
  end

  private
    MAX = 40
    def ellipsis(value)
      if value.size > MAX
        left = value[0,(MAX/2)-3]
        right = value[-(MAX/2),value.size]
        # right = value.reverse.slice(0,(MAX/2)).reverse
        result = left+'...'+right
      else
        result = value
      end
      result  
    end

end
