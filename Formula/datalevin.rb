class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.6.22"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.6.22/dtlv-0.6.22-ubuntu-latest-amd64.zip"
    sha256 "a4318aedbfd15206d366982314a64549081cd4367a391ef61b41124246640a2a"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.6.22/dtlv-0.6.22-macos-latest-amd64.zip"
    sha256 "0d278026aa39169ae1df6a52efd60c0c78e631477b93d6bd7cc4a3751b6028ca"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
