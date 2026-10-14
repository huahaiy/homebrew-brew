class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/datalevin/datalevin"
  version "1.2.4"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/datalevin/datalevin/releases/download/1.2.4/dtlv-1.2.4-ubuntu-22.04-amd64.zip"
    sha256 "2b3ac79803c3789b248c3c926b660b830728592309d65a06bbff0e580c3154e0"
  else
    url "https://github.com/datalevin/datalevin/releases/download/1.2.4/dtlv-1.2.4-macos-14-aarch64.zip"
    sha256 "7f5c8e97dd92feeb18c9eeb390d4f4266b70349e59a503eb2c71bbc853e6143a"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
