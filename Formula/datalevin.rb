class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.8.11"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.8.11/dtlv-0.8.11-ubuntu-latest-amd64.zip"
    sha256 "b021d7295b3ee7cc13ba3ba81daae8ec293e21e9e040150574a29936889a9ec9"
  else
    if Hardware::CPU.arm?
      url "https://github.com/juji-io/datalevin/releases/download/0.8.11/dtlv-0.8.11-macos-latest-aarch64.zip"
      sha256 "e6bd251ada31dc1732f9013256e18ef340fb64304115fd51738943ea9d063158"
    else
      url "https://github.com/juji-io/datalevin/releases/download/0.8.11/dtlv-0.8.11-macos-latest-amd64.zip"
      sha256 "7f7bba6529a8bd0d4cc8b25362e98add61bde8736082019754b0c0e90602505d"
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
