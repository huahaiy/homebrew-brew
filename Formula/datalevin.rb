class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/datalevin/datalevin"
  version "1.1.0"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/datalevin/datalevin/releases/download/1.1.0/dtlv-1.1.0-ubuntu-22.04-amd64.zip"
    sha256 "1d458c148deb59fdc1396acee72fbdf15eea83188c2200ae12f8982871c5002a"
  else
    url "https://github.com/datalevin/datalevin/releases/download/1.1.0/dtlv-1.1.0-macos-14-aarch64.zip"
    sha256 "9e1d077faec851bca59188078ded1f5d56e1cc057f68d0409e2e9664ffcdfbf9"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
