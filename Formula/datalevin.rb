class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/datalevin/datalevin"
  version "1.2.7"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/datalevin/datalevin/releases/download/1.2.7/dtlv-1.2.7-ubuntu-22.04-amd64.zip"
    sha256 "539c0d1c9ddc9da76868710766e59b72859322f92e7e4193129f058ddfee7b0d"
  else
    url "https://github.com/datalevin/datalevin/releases/download/1.2.7/dtlv-1.2.7-macos-14-aarch64.zip"
    sha256 "01a72fa44dd6b207f0d4f34357fcaa3e1ed3d018fcec45ee4804ff1e546c35e4"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
