class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.9.6"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.9.6/dtlv-0.9.6-ubuntu-latest-amd64.zip"
    sha256 "5cea2b862b738f9657409d448adc2def02e8b49cf21bdeac2167652a4c566d63"
  else
    if Hardware::CPU.arm?
      url "https://github.com/juji-io/datalevin/releases/download/0.9.6/dtlv-0.9.6-macos-latest-aarch64.zip"
      sha256 "8ce27c732ab3ba39febbd6532416ed4b88ff7ce1a32ba17f725a4f6276105372"
    else
      url "https://github.com/juji-io/datalevin/releases/download/0.9.6/dtlv-0.9.6-macos-latest-amd64.zip"
      sha256 "73b17e1aae54b4bd32495de5f9ee872cdb5a3ae93cd26645a21bddf1730a4f4a"
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
