class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.5.19"
  license "EPL-1.0"

  bottle :unneeded

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.5.19/dtlv-0.5.19-ubuntu-latest-amd64.zip"
    sha256 "3f987edf8cf696cf88687817c387287c93d4bc1dbd201e1122a66780a60e5b26"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.5.19/dtlv-0.5.19-macos-latest-amd64.zip"
    sha256 "0cf90cb0769ea69ca3214185d3ffa7daa4e205ebcab48b116bf245b10fab79ec"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
