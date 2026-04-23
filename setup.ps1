$wrapperJarPath = ".mvn/wrapper/maven-wrapper.jar"
$wrapperUrl = "https://repo.maven.apache.org/maven2/org/apache/maven/wrapper/maven-wrapper/3.2.0/maven-wrapper-3.2.0.jar"

if (!(Test-Path ".mvn/wrapper")) {
    New-Item -ItemType Directory -Path ".mvn/wrapper" -Force
}

if (!(Test-Path $wrapperJarPath)) {
    Write-Host "Downloading Maven Wrapper..."
    Invoke-WebRequest -Uri $wrapperUrl -OutFile $wrapperJarPath
}

Write-Host "Setup complete. You can now run the project."
