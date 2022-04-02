class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.6.6"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.6.6/dtlv-0.6.6-ubuntu-latest-amd64.zip"
    sha256 "f157e750192fd546cfb91b009528122e3c665cc2bb3e15815b9c639cac78cc6d"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.6.6/dtlv-0.6.6-macos-latest-amd64.zip"
    sha256 "933e5b75ac148467a405ab1fb2498f0f0c5dc8cbec8ee2ee0c4baf29e0ea5723"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
