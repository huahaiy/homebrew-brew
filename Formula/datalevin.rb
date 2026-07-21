class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/datalevin/datalevin"
  version "1.0.0"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/datalevin/datalevin/releases/download/1.0.0/dtlv-1.0.0-ubuntu-22.04-amd64.zip"
    sha256 "d359a04df26e647cc7d5b5844630a481324a7e93bd3b5b11d36a69660d7e122c"
  else
    url "https://github.com/datalevin/datalevin/releases/download/1.0.0/dtlv-1.0.0-macos-14-aarch64.zip"
    sha256 "da0a902c74ecd21b49bb7b0fa12fc7ae7ef79b20b53a0b1568cd24430a6333bf"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
