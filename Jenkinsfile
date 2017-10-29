node {

	stage 'Checkout'
	checkout scm
	
	stage 'Bake'
	runGradle('clean build')
	
	stage 'Deploy'
	runGradle('deploy')
}

void runGradle(String tasks) {
	withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: '31e7bef9-9bf6-4a11-b89d-edcad0ba7b57', usernameVariable: 'DEPLOY_USERNAME', passwordVariable: 'DEPLOY_PASSWORD']]) {
		sh 'set +x'
		sh "./gradlew ${tasks} -Puk.me.eddies.personal-website.deploy.user=\$DEPLOY_USERNAME -Puk.me.eddies.personal-website.deploy.password=\$DEPLOY_PASSWORD"
	}
}
