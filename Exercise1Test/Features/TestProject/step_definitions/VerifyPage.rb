Given (/^I am on Exercise1 page/)do
  @exe1 = Exercise1Page.new()
  @exe1.initialize("https://www.exercise1.com/values")
  
end
 
When (/^I access the elements on exercise1 page/)do
  @exe1.getElements()
end
 
Then (/^Verify All number of values appear on the screen/)do
  @exe1.verifyAllValues()
end

And(/^Verify All the values on the screen are greater than 0/)do
  @exe1.verifyValueGreaterThanZero()
end

And(/^Verify value in totalbalane is equal to sum of values in text values/)do
  @exe1.verifyTotal1()
end

And(/^Verify the values are formatted as currencies/)do
  @exe1.verifyValueFormat()
end

And(/^Verify value in totalbalance is equal to sum of values in text values/)do
  @exe1.verifyTotal2()
end
