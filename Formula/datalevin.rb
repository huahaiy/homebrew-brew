class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.5.27"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.5.27/dtlv-0.5.27-ubuntu-latest-amd64.zip"
    sha256 "3ad2cc5f8b4c4b391a31a689c10b597fc729f523c0872e971e83dfca1de3406e"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.5.27/dtlv-0.5.27-macos-latest-amd64.zip"
    sha256 "7ba195f469ac69b4774263d15cbd7d385421012d1143371ac65ecf3871993263"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
