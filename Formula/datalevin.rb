class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.5.14"
  license "EPL-1.0"

  bottle :unneeded

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.5.14/dtlv-0.5.14-ubuntu-latest-amd64.zip"
    sha256 "c93a1b75ac2f45f2754505521381400d220ec12a626713cb0b893f379691e22a"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.5.14/dtlv-0.5.14-macos-latest-amd64.zip"
    sha256 "30416d0b6f261e483a5b081f9d5ac35b2fbf2e3bbd9931f133fa4cb314571e35"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
