class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.8.8"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.8.8/dtlv-0.8.8-ubuntu-latest-amd64.zip"
    sha256 "553146e8eb92ade542cbf08886643f1c88e1528a1b4cca76252b762a4badfde6"
  else
    if Hardware::CPU.arm?
      url "https://github.com/juji-io/datalevin/releases/download/0.8.8/dtlv-0.8.8-macos-latest-aarch64.zip"
      sha256 "f62a5d2b773e54a9805b8bb4037f58eaf187c78438a7060dd274ab07761dc67c"
    else
      url "https://github.com/juji-io/datalevin/releases/download/0.8.8/dtlv-0.8.8-macos-latest-amd64.zip"
      sha256 "b274023c7e5d999465fa9501fd228c5ff9695be40c2b35269e18ab493edb31d9"
    end
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
