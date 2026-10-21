class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/datalevin/datalevin"
  version "1.2.6"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/datalevin/datalevin/releases/download/1.2.6/dtlv-1.2.6-ubuntu-22.04-amd64.zip"
    sha256 "338fa7c306e479741ac2c3486b62f7dfbc7bae69134ff324e9f623ce6f54faea"
  else
    url "https://github.com/datalevin/datalevin/releases/download/1.2.6/dtlv-1.2.6-macos-14-aarch64.zip"
    sha256 "0a86860f120a2fa53084f2ab3465751fe170840da59f790fdd24a84f162fac00"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
