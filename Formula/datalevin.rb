class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/datalevin/datalevin"
  version "0.10.2"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/datalevin/datalevin/releases/download/0.10.2/dtlv-0.10.2-ubuntu-22.04-amd64.zip"
    sha256 "eb23d179ba284651fb5a6a7c289788c66ab094f4829aa7264c8d1822282b1dd4"
  else
    url "https://github.com/datalevin/datalevin/releases/download/0.10.2/dtlv-0.10.2-macos-14-aarch64.zip"
    sha256 "0f4ba20f5e8d7d2889f78cec350745fbfe7b2df08e2b0a52ffcdc3901ab370d4"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
