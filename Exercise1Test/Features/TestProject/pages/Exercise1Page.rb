class Exercise1Page
  @@value
  @@driver
  @@elements 
  @@totbalance  
  
  def initialize(url)                 # code to load the Exercise1 page
     @@driver=Selenium::WebDriver.for :firefox
     @@driver.manage.window.maximize
     @@driver.navigate.to url
  end
  
  def getElements                    #To get all the values the in the text box 
    @@elements = @@driver.find_elements(:id,"txt_val_*") 
    @@totbalance = @@driver.find_elements(:id,"txt_ttl_val")    
  end
   
  def verifyAllValues                 #objective1
     @@elements.each do |i|
      @@value = i.getText()
      if(@@value.isEmpty())
        assert(!@@value,"All values are not filled in textbox")
      end
    end
  end  
  
  def verifyValueGreaterThanZero     #objective2
    @@elements.each do |i|
      @@value = i.getText()
      if((@@value.to_i) < 0)
         assert(!@@value,"few values entered are less than zero")
       end
    end
  end 
  
  def verifyTotal1                  #objective3
    @@elements.each do |i|
          @sum+= i.getText().to_i
    end
   assert_equal(@sum,@@totbalance,"total balance is not correct based on values entered") 
  end
  
  
  
  def verifyValueFormat            #objective4   
    @@elements.each do |i|
      @@value = i.getText()
      assert_equal(@@value.slice(0),"$","Values entered are not formatted in Dollar"  )
      
    end
  end
  
  
  def verifyTotal2                  #objective5
      @@elements.each do |i|
            @sum1+= i.getText().to_i
      end
     assert_equal(@sum1,@@totbalance,"total balance does not matches the sum of the values") 
  end
   
end