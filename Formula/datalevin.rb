class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.8.14"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.8.14/dtlv-0.8.14-ubuntu-latest-amd64.zip"
    sha256 "79d67de83fadaf5a8cbcac62725308b33578366bbc956043453b8a59d27a5e0c"
  else
    if Hardware::CPU.arm?
      url "https://github.com/juji-io/datalevin/releases/download/0.8.14/dtlv-0.8.14-macos-latest-aarch64.zip"
      sha256 "b6781de525107efd33125d3783c8e1228528b02be426a8516df8ee5cf44ca3ba"
    else
      url "https://github.com/juji-io/datalevin/releases/download/0.8.14/dtlv-0.8.14-macos-latest-amd64.zip"
      sha256 "4ecf29d31ee0c4d6a1874f417f43d3acbd81a0e7654c008be489816c053f8336"
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
