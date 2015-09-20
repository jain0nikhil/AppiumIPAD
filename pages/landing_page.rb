require_relative '../pages/base_page'
class LandingPage < BasePage
  
Login_Button ='LOG IN TO MY DELTA'
Continue_As_Guest_Button ='CONTINUE AS GUEST'
Create_account_button ='SIGN UP NOW'
Privacy_Policy_Link = 'PRIVACY POLICY >'


 def click_login_button
   button("#{Login_Button}").click
 end

 def click_continue_as_guest
   button("#{Continue_As_Guest_Button}").click
 end

 def click_privacy_policy_link
   find("#{Privacy_Policy_Link}").click
 end

 def click_sign_up_now
   find("#{Create_account_button}").click
 end


end