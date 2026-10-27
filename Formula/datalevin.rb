class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/datalevin/datalevin"
  version "1.2.9"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/datalevin/datalevin/releases/download/1.2.9/dtlv-1.2.9-ubuntu-22.04-amd64.zip"
    sha256 "36fdceade7959a0440d9110fd678797cf3a9194ee5543f7f3967fded2974346d"
  else
    url "https://github.com/datalevin/datalevin/releases/download/1.2.9/dtlv-1.2.9-macos-14-aarch64.zip"
    sha256 "cae0d31156522d3ded46fe704b6ad841972da0270e59ef08016d0f16be7c6618"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
