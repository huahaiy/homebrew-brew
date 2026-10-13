class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/datalevin/datalevin"
  version "1.2.3"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/datalevin/datalevin/releases/download/1.2.3/dtlv-1.2.3-ubuntu-22.04-amd64.zip"
    sha256 "9355764fda05d3de07df3f1de23265adc9557aaa9bb424a7675c7301af95a9da"
  else
    url "https://github.com/datalevin/datalevin/releases/download/1.2.3/dtlv-1.2.3-macos-14-aarch64.zip"
    sha256 "6b83a42f0396d6a804926c50ccebd1c65d08d738c1a6b29f327b639e4a8a032e"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
