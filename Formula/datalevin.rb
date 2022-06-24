class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.6.15"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.6.15/dtlv-0.6.15-ubuntu-latest-amd64.zip"
    sha256 "7c16a8496e5a5d65c1a1ffa85a8fe9d9bac0b9bf37ad3fa2abcd24058e7c3420"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.6.15/dtlv-0.6.15-macos-latest-amd64.zip"
    sha256 "1a6bd49ccc5ef7ae0baf8ebc9078f05405e50dd1223032bd6384fb75e02473f1"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
