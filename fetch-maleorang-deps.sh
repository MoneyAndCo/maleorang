source $stdenv/setup
header "fetching Apache Mesos maven repo"

function fetchArtifactDef {
    fetchArtifact http://repo.maven.apache.org/maven2/ $1
}

function fetchArtifact {
    repoPath="$2"
    echo "Fetching $repoPath"
    url="$1$repoPath"
    mkdir -p $(dirname $out/$repoPath)
    curl --fail --location --insecure --retry 3 --max-redirs 20 "$url" --output "$out/$repoPath"
}

fetchArtifactDef org/jetbrains/kotlin/kotlin-gradle-plugin/1.0.3/kotlin-gradle-plugin-1.0.3.pom
fetchArtifactDef org/jetbrains/kotlin/kotlin-project/1.0.3/kotlin-project-1.0.3.pom
fetchArtifactDef org/jetbrains/kotlin/kotlin-project/1.0.3/kotlin-project-1.0.3.pom
fetchArtifact https://jcenter.bintray.com/ org/jetbrains/dokka/dokka-gradle-plugin/0.9.9/dokka-gradle-plugin-0.9.9.pom
fetchArtifact https://jcenter.bintray.com/ org/jetbrains/dokka/dokka-fatjar/0.9.9/dokka-fatjar-0.9.9.pom
fetchArtifactDef org/jetbrains/kotlin/kotlin-stdlib/1.0.3/kotlin-stdlib-1.0.3.pom
fetchArtifactDef org/jetbrains/kotlin/kotlin-android-extensions/1.0.3/kotlin-android-extensions-1.0.3.pom
fetchArtifactDef org/jetbrains/kotlin/kotlin-gradle-plugin-api/1.0.3/kotlin-gradle-plugin-api-1.0.3.pom
fetchArtifactDef org/jetbrains/kotlin/kotlin-gradle-plugin-core/1.0.3/kotlin-gradle-plugin-core-1.0.3.pom
fetchArtifactDef org/jetbrains/kotlin/kotlin-runtime/1.0.3/kotlin-runtime-1.0.3.pom
fetchArtifactDef org/jetbrains/kotlin/kotlin-compiler-embeddable/1.0.3/kotlin-compiler-embeddable-1.0.3.pom
fetchArtifactDef commons-io/commons-io/2.4/commons-io-2.4.pom
fetchArtifactDef org/jetbrains/kotlin/kotlin-annotation-processing/1.0.3/kotlin-annotation-processing-1.0.3.pom
fetchArtifactDef commons-lang/commons-lang/2.6/commons-lang-2.6.pom
fetchArtifactDef org/apache/commons/commons-parent/17/commons-parent-17.pom
fetchArtifactDef org/apache/commons/commons-parent/25/commons-parent-25.pom
fetchArtifactDef org/apache/apache/7/apache-7.pom
fetchArtifactDef org/apache/apache/9/apache-9.pom
fetchArtifactDef org/apache/apache/7/apache-7.pom
fetchArtifactDef org/apache/commons/commons-parent/17/commons-parent-17.pom
fetchArtifactDef org/apache/apache/9/apache-9.pom
fetchArtifactDef org/apache/commons/commons-parent/25/commons-parent-25.pom
fetchArtifactDef org/jetbrains/kotlin/kotlin-gradle-plugin/1.0.3/kotlin-gradle-plugin-1.0.3.jar
fetchArtifactDef org/jetbrains/kotlin/kotlin-gradle-plugin-api/1.0.3/kotlin-gradle-plugin-api-1.0.3.jar
fetchArtifactDef org/jetbrains/kotlin/kotlin-stdlib/1.0.3/kotlin-stdlib-1.0.3.jar
fetchArtifact https://jcenter.bintray.com/ org/jetbrains/dokka/dokka-gradle-plugin/0.9.9/dokka-gradle-plugin-0.9.9.jar
fetchArtifactDef org/jetbrains/kotlin/kotlin-android-extensions/1.0.3/kotlin-android-extensions-1.0.3.jar
fetchArtifact https://jcenter.bintray.com/ org/jetbrains/dokka/dokka-fatjar/0.9.9/dokka-fatjar-0.9.9.jar
fetchArtifactDef org/jetbrains/kotlin/kotlin-gradle-plugin-core/1.0.3/kotlin-gradle-plugin-core-1.0.3.jar
fetchArtifactDef org/jetbrains/kotlin/kotlin-annotation-processing/1.0.3/kotlin-annotation-processing-1.0.3.jar
fetchArtifactDef org/jetbrains/kotlin/kotlin-compiler-embeddable/1.0.3/kotlin-compiler-embeddable-1.0.3.jar
fetchArtifactDef commons-io/commons-io/2.4/commons-io-2.4.jar
fetchArtifactDef commons-lang/commons-lang/2.6/commons-lang-2.6.jar
fetchArtifactDef org/jetbrains/kotlin/kotlin-runtime/1.0.3/kotlin-runtime-1.0.3.jar
fetchArtifactDef org/jetbrains/kotlin/kotlin-reflect/1.0.3/kotlin-reflect-1.0.3.pom
fetchArtifactDef joda-time/joda-time/2.9.4/joda-time-2.9.4.pom
fetchArtifactDef org/apache/httpcomponents/httpclient/4.5.2/httpclient-4.5.2.pom
fetchArtifactDef com/google/code/gson/gson/2.7/gson-2.7.pom
fetchArtifactDef com/google/guava/guava/19.0/guava-19.0.pom
fetchArtifactDef com/google/code/gson/gson-parent/2.7/gson-parent-2.7.pom
fetchArtifactDef org/apache/httpcomponents/httpcomponents-client/4.5.2/httpcomponents-client-4.5.2.pom
fetchArtifactDef com/google/guava/guava-parent/19.0/guava-parent-19.0.pom
fetchArtifactDef org/sonatype/oss/oss-parent/7/oss-parent-7.pom
fetchArtifactDef org/sonatype/oss/oss-parent/7/oss-parent-7.pom
fetchArtifactDef org/apache/httpcomponents/project/7/project-7.pom
fetchArtifactDef org/sonatype/oss/oss-parent/7/oss-parent-7.pom
fetchArtifactDef org/sonatype/oss/oss-parent/7/oss-parent-7.pom
fetchArtifactDef com/google/code/gson/gson-parent/2.7/gson-parent-2.7.pom
fetchArtifactDef com/google/guava/guava-parent/19.0/guava-parent-19.0.pom
fetchArtifactDef org/apache/apache/13/apache-13.pom
fetchArtifactDef org/apache/apache/13/apache-13.pom
fetchArtifactDef org/apache/httpcomponents/project/7/project-7.pom
fetchArtifactDef org/apache/httpcomponents/httpcomponents-client/4.5.2/httpcomponents-client-4.5.2.pom
fetchArtifactDef commons-codec/commons-codec/1.9/commons-codec-1.9.pom
fetchArtifactDef org/apache/httpcomponents/httpcore/4.4.4/httpcore-4.4.4.pom
fetchArtifactDef commons-logging/commons-logging/1.2/commons-logging-1.2.pom
fetchArtifactDef org/apache/httpcomponents/httpcomponents-core/4.4.4/httpcomponents-core-4.4.4.pom
fetchArtifactDef org/apache/commons/commons-parent/34/commons-parent-34.pom
fetchArtifactDef org/apache/commons/commons-parent/32/commons-parent-32.pom
fetchArtifactDef org/apache/commons/commons-parent/32/commons-parent-32.pom
fetchArtifactDef org/apache/httpcomponents/httpcomponents-core/4.4.4/httpcomponents-core-4.4.4.pom
fetchArtifactDef org/apache/commons/commons-parent/34/commons-parent-34.pom
fetchArtifactDef org/jetbrains/kotlin/kotlin-reflect/1.0.3/kotlin-reflect-1.0.3.jar
fetchArtifactDef org/apache/httpcomponents/httpcore/4.4.4/httpcore-4.4.4.jar
fetchArtifactDef com/google/code/gson/gson/2.7/gson-2.7.jar
fetchArtifactDef commons-codec/commons-codec/1.9/commons-codec-1.9.jar
fetchArtifactDef commons-logging/commons-logging/1.2/commons-logging-1.2.jar
fetchArtifactDef org/apache/httpcomponents/httpclient/4.5.2/httpclient-4.5.2.jar
fetchArtifactDef joda-time/joda-time/2.9.4/joda-time-2.9.4.jar
fetchArtifactDef com/google/guava/guava/19.0/guava-19.0.jar

stopNest
