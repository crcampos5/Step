import step.User

class BootStrap {

    def init = { servletContext ->
		
		def user = new User(
			name:"Cristian",
			email:"crcampos5@gmail.com",
			password:"12345678"
			)
		user.save(failOnError: true);
    }
    def destroy = {
    }
}
