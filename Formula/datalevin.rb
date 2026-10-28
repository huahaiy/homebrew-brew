class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/datalevin/datalevin"
  version "1.2.10"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/datalevin/datalevin/releases/download/1.2.10/dtlv-1.2.10-ubuntu-22.04-amd64.zip"
    sha256 "b42c1ef4b6a9ccf2a42b21f9c576fe774ff877c15826031755f0b94a3c0df3e5"
  else
    url "https://github.com/datalevin/datalevin/releases/download/1.2.10/dtlv-1.2.10-macos-14-aarch64.zip"
    sha256 "6329e599b50a15f5f8025744f0503edc2e7fbf442d53cef64fe7a1613e9ce37a"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
