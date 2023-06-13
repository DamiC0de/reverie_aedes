class AdminMailer < ApplicationMailer
    default :from => 'MONTITRE@gmail.com'

    def confirmation_email(order)
        #on récupère l'instance order pour ensuite pouvoir la passer à la view en @user
        @order = order
    
        #on définit une variable @url qu'on utilisera dans la view d’e-mail
        @url  = 'http://MONSITE/login' 
    
        # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
        mail(to: @user.email, subject: 'Nouvelle rêverie sur le site') 
 

      end
end
