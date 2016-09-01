/*
 * generated by Xtext 2.10.0
 */
package org.example.hellomaven.tests

import com.google.inject.Inject
import org.eclipse.xtext.junit4.InjectWith
import org.eclipse.xtext.junit4.XtextRunner
import org.eclipse.xtext.junit4.util.ParseHelper
import org.example.hellomaven.helloMaven.Model
import org.junit.Assert
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(XtextRunner)
@InjectWith(HelloMavenInjectorProvider)
class HelloMavenParsingTest{

	@Inject
	ParseHelper<Model> parseHelper

	@Test 
	def void loadModel() {
		val result = parseHelper.parse('''
			Hello Xtext!
		''')
		Assert.assertNotNull(result)
	}

}