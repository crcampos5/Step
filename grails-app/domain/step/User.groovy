package step

class User {
	static hasMany = [tutorials:Tutorial]
	
	String email
	String password
	String name
    static constraints = {
		email(email:true)
		email(unique:true)
		password(password:true)
		name()
    }
	
	String toString(){
		name
	}
	
	/*def scaffold = User
	
	def login = {}
	
	def authenticate = {
		def user = User.findByLoginAndPassword(params.login, params.password)
		if(user){
			session.user = user
			flash.message = "hola  ${user.name}"
			redirect(controller:"tutorial",action:"list")
		}else{
			flash.message = "Lo sentimos , ${params.login} "
			redirect(action:"login")
		}
		
	}
	def logout = {
		flash.message = "Adios ${session.user.name}"
		session.user = null
		redirect(controller:"tutorial",action:"list")
	}*/
	
}
