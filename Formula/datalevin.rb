class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.8.12"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.8.12/dtlv-0.8.12-ubuntu-latest-amd64.zip"
    sha256 "ac63556c5d2391c3a1dad7937f80aa8e7a004e8bbcecb865ec5265eac8a4340b"
  else
    if Hardware::CPU.arm?
      url "https://github.com/juji-io/datalevin/releases/download/0.8.12/dtlv-0.8.12-macos-latest-aarch64.zip"
      sha256 "a5a48b8171625331e34afaab87cc37e5552fe3dc1e6f7a8b07a84f740b9722ac"
    else
      url "https://github.com/juji-io/datalevin/releases/download/0.8.12/dtlv-0.8.12-macos-latest-amd64.zip"
      sha256 "36c208b5e6618ef3841f5c81e9d7338f7a4de5af89ed65439a5bd72f7cdd50cd"
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
