class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/datalevin/datalevin"
  version "1.2.2"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/datalevin/datalevin/releases/download/1.2.2/dtlv-1.2.2-ubuntu-22.04-amd64.zip"
    sha256 "5d9f9b8183d9a6deba62ae7d59790487fca4143d9b1eab50d5fdbff96dc9edbb"
  else
    url "https://github.com/datalevin/datalevin/releases/download/1.2.2/dtlv-1.2.2-macos-14-aarch64.zip"
    sha256 "cd833d2c2503d4a76750f2d94899bcef281317da8430d284683c301e69b73a87"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
