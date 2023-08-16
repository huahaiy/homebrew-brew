class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.8.19"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.8.19/dtlv-0.8.19-ubuntu-latest-amd64.zip"
    sha256 "ad3e422ebe649f2905feceaab0f2449f53751d86561f4a80d43081027236cbd9"
  else
    if Hardware::CPU.arm?
      url "https://github.com/juji-io/datalevin/releases/download/0.8.19/dtlv-0.8.19-macos-latest-aarch64.zip"
      sha256 "9a8f332f5ee7f58fc08faf94e8b299b8bb7f8e51d507b704dac70b2c2fcf4c88"
    else
      url "https://github.com/juji-io/datalevin/releases/download/0.8.19/dtlv-0.8.19-macos-latest-amd64.zip"
      sha256 "f46e6d49ca80cf68d439bfed653808a18fa0da7df984008599b4dc3e10e2da45"
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
