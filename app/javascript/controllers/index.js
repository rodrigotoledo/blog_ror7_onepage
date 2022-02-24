// Import and register all your controllers from the importmap under controllers/*

import { application } from "controllers/application"

// Eager load all controllers defined in the import map under controllers/**/*_controller
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
eagerLoadControllersFrom("controllers", application)

// Lazy load controllers as they appear in the DOM (remember not to preload controllers in import map!)
// import { lazyLoadControllersFrom } from "@hotwired/stimulus-loading"
// lazyLoadControllersFrom("controllers", application)

import StimulusReflex from 'stimulus_reflex'
import CableReady from 'cable_ready'

import consumer from '../channels/consumer'
import controller from '../controllers/application_controller'

StimulusReflex.initialize(application, { consumer, controller, isolate: true })
CableReady.initialize({ consumer })
