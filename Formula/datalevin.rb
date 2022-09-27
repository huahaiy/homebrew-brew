class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.6.20"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.6.20/dtlv-0.6.20-ubuntu-latest-amd64.zip"
    sha256 "a8347021c8c14d42142d358ada13d2dfeb817d44a847a910de315e1c16120f3f"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.6.20/dtlv-0.6.20-macos-latest-amd64.zip"
    sha256 "85dfb5dcd48e9573d19dc8a947efb93f4b9fa6ab0c1288c4797888008cb40a19"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
