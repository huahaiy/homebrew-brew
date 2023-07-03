class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.8.18"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.8.18/dtlv-0.8.18-ubuntu-latest-amd64.zip"
    sha256 "0aae7f8f3e3c1b941fe837a7683f00180ca0e3a0234c5c45a2df7c5afd8e062b"
  else
    if Hardware::CPU.arm?
      url "https://github.com/juji-io/datalevin/releases/download/0.8.18/dtlv-0.8.18-macos-latest-aarch64.zip"
      sha256 "86ce5d9095571e55110ae49bc9b78a9db6a2f57672638f507970ca84cc250fed"
    else
      url "https://github.com/juji-io/datalevin/releases/download/0.8.18/dtlv-0.8.18-macos-latest-amd64.zip"
      sha256 "3741b54af572be54916a31bdaeb1d0fa30692e993495854d23b6b6d6a7bc94e1"
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
