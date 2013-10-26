package step

class Tutorial {
	
	String titulo
	String step1
	String step2
	String step3
	String step4
	String step5
	
	static belongsTo = [author:User]

    static constraints = {
    }
}
