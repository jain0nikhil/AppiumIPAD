require_relative '../pages/base_page'
class FlashScreen < BasePage





 def click_done
   # wait { text 'Done' }
   _click_ 'Done' #find('Done').click
 end




end
