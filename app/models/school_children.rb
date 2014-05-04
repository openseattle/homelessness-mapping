class SchoolChildren < ActiveResource::Base
  self.site = 'http://opendata.socrata.com/'
  self.element_name = "resource"

  def self.get_all
    __get_all
  end

private
  def self.__get_all(param=nil)
    if(param.nil?)
      get("3ngx-mw5p")
    else
      get("3ngx-mw5p?#{param}")
    end
  end
end
