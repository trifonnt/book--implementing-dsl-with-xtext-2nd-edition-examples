/*
 * generated by Xtext 2.10.0
 */
package org.example.helloidea.idea

import com.google.inject.Guice
import org.eclipse.xtext.util.Modules2
import org.example.helloidea.HelloIdeaRuntimeModule
import org.example.helloidea.HelloIdeaStandaloneSetupGenerated

class HelloIdeaStandaloneSetupIdea extends HelloIdeaStandaloneSetupGenerated {
	override createInjector() {
		val runtimeModule = new HelloIdeaRuntimeModule()
		val ideaModule = new HelloIdeaIdeaModule()
		val mergedModule = Modules2.mixin(runtimeModule, ideaModule)
		return Guice.createInjector(mergedModule)
	}
}
