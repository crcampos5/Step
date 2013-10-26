package step

import org.springframework.dao.DataIntegrityViolationException

class TutorialController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
	
	def beforeInterceptor = [action:this.&auth, except:["index", "list", "show"]]
	
	def auth() {
		if(!session.user) {
		  redirect(controller:"user", action:"login")
		  return false
		}
	}
	

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [tutorialInstanceList: Tutorial.list(params), tutorialInstanceTotal: Tutorial.count()]
    }

    def create() {
        [tutorialInstance: new Tutorial(params)]
    }

    def save() {
        def tutorialInstance = new Tutorial(params)
        if (!tutorialInstance.save(flush: true)) {
            render(view: "create", model: [tutorialInstance: tutorialInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'tutorial.label', default: 'Tutorial'), tutorialInstance.id])
        redirect(action: "show", id: tutorialInstance.id)
    }

    def show(Long id) {
        def tutorialInstance = Tutorial.get(id)
        if (!tutorialInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tutorial.label', default: 'Tutorial'), id])
            redirect(action: "list")
            return
        }

        [tutorialInstance: tutorialInstance]
    }

    def edit(Long id) {
        def tutorialInstance = Tutorial.get(id)
        if (!tutorialInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tutorial.label', default: 'Tutorial'), id])
            redirect(action: "list")
            return
        }

        [tutorialInstance: tutorialInstance]
    }

    def update(Long id, Long version) {
        def tutorialInstance = Tutorial.get(id)
        if (!tutorialInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tutorial.label', default: 'Tutorial'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (tutorialInstance.version > version) {
                tutorialInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'tutorial.label', default: 'Tutorial')] as Object[],
                          "Another user has updated this Tutorial while you were editing")
                render(view: "edit", model: [tutorialInstance: tutorialInstance])
                return
            }
        }

        tutorialInstance.properties = params

        if (!tutorialInstance.save(flush: true)) {
            render(view: "edit", model: [tutorialInstance: tutorialInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'tutorial.label', default: 'Tutorial'), tutorialInstance.id])
        redirect(action: "show", id: tutorialInstance.id)
    }

    def delete(Long id) {
        def tutorialInstance = Tutorial.get(id)
        if (!tutorialInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tutorial.label', default: 'Tutorial'), id])
            redirect(action: "list")
            return
        }

        try {
            tutorialInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'tutorial.label', default: 'Tutorial'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'tutorial.label', default: 'Tutorial'), id])
            redirect(action: "show", id: id)
        }
    }
}
