class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.8.24"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.8.24/dtlv-0.8.24-ubuntu-latest-amd64.zip"
    sha256 "81c65769bfe09a6183b3ded2576dcb7e2c830cbf855b5ccb3b306bc61bf2d8c2"
  else
    if Hardware::CPU.arm?
      url "https://github.com/juji-io/datalevin/releases/download/0.8.24/dtlv-0.8.24-macos-latest-aarch64.zip"
      sha256 "9f18834e39b62bd153ac4d6682c796ca516752da560b8efb69135a9b3057aead"
    else
      url "https://github.com/juji-io/datalevin/releases/download/0.8.24/dtlv-0.8.24-macos-latest-amd64.zip"
      sha256 "39efd2e52f1b7959104d72a3ea25a1484d0556bd895be4baf467108452338f3d"
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
