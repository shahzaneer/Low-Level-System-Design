# 🚩 Bad Example: Fail Slow Jenkins Pipeline (Anti-pattern)

``` groovy
node {
    stage('Checkout') {
        checkout scm
    }

    stage('Build Docker Image') {
        echo 'Building Docker image...'
        sh 'docker build -t myapp:latest .'
    }

    stage('Deploy to Staging') {
        echo 'Deploying to staging...'
        sh './deploy.sh staging'
    }

    stage('Run Unit Tests') {
        echo 'Running unit tests after deploy...'
        def testStatus = sh(script: 'pytest tests/integration', returnStatus: true)
        if (testStatus != 0) {
            error('Tests failed! But too late now.')
        }
    }
}

```

# ✅ Good Example: Fail Fast Jenkins Pipeline (Fixed)

``` groovy
node {
    stage('Checkout') {
        checkout scm
    }

    stage('Lint') {
        echo 'Running lint checks...'
        def lintStatus = sh(script: 'flake8 .', returnStatus: true)
        if (lintStatus != 0) {
            error('Lint failed! Failing fast.')
        }
    }

    stage('Unit Tests') {
        echo 'Running unit tests...'
        def testStatus = sh(script: 'pytest tests/unit', returnStatus: true)
        if (testStatus != 0) {
            error('Unit tests failed! Failing fast.')
        }
    }

    stage('Build Docker Image') {
        echo 'Building Docker image...'
        sh 'docker build -t myapp:latest .'
    }

    stage('Deploy to Staging') {
        echo 'Deploying to staging...'
        sh './deploy.sh staging'
    }
}

```

