plugins {
    kotlin("jvm") version "2.2.20"
}

group = "ca.uottawa.cairn"
version = "1.0.0"

repositories {
    mavenCentral()
}

kotlin {
    jvmToolchain(17)
}
