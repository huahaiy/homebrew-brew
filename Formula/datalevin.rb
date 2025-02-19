class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.9.20"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.9.20/dtlv-0.9.20-ubuntu-latest-amd64.zip"
    sha256 "5c2bccc4fa0a8404f85f8d61dd6e2c848909f077dd62bb7aab05a07ce14b0399"
  else
    if Hardware::CPU.arm?
      url "https://github.com/juji-io/datalevin/releases/download/0.9.20/dtlv-0.9.20-macos-latest-aarch64.zip"
      sha256 "05b8c74b5cabbd1814bae1adc3cbddbc58bd0891ed398213cd46f9a7caa3c42a"
    else
      url "https://github.com/juji-io/datalevin/releases/download/0.9.20/dtlv-0.9.20-macos-latest-amd64.zip"
      sha256 "52faa525e6914556920b4c07b8b0d7e8a8405b86eed2a03495dad751ed9edbc1"
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
