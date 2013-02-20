using build

class Build : BuildPod {
  new make() {
    podName = "ukkonen"
    summary = "Ukkonen algorithm implementation"
    version = Version("0.0.1")
    srcDirs = [`fan/`,`test/`]
  }
}