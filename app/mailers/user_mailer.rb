class UserMailer < ApplicationMailer
  include Resque::Mailer
  def mensagem_de_confirmacao(user)
    @user = user
    @url = 'http://www.cruxhs.com'
    mail(to: @user.email, subject: 'CruxHS - Pedido Recebido')
    mail(to: 'hs.crux@gmail.com', subject: 'CruxHS - Pedido Recebido')
    mail(to: 'hiquercc@gmail.com', subject: 'CruxHS - Pedido Recebido')
  end
  def notificacao(user)
    @user = user
    @url = 'http://www.cruxhs.com'
    mail(to: 'hs.crux@gmail.com', subject: 'CruxHS - Pedido Recebido')
  end
  def notificacao1(user)
    @user = user
    @url = 'http://www.cruxhs.com'
    mail(to: 'hiquercc@gmail.com', subject: 'CruxHS - Pedido Recebido')
  end
  def notificacao3(user)
    @user = user
    @url = 'http://www.cruxhs.com'
    mail(to: 'contato@cruxhs.com', subject: 'CruxHS - Pedido Recebido')
  end
end
