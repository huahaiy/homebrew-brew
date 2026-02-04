class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/datalevin/datalevin"
  version "0.10.4"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/datalevin/datalevin/releases/download/0.10.4/dtlv-0.10.4-ubuntu-22.04-amd64.zip"
    sha256 "1ae06fd5c6b2dc84eba98fc282820fb2689878c06ac51d3dab77bd08a50dbdce"
  else
    url "https://github.com/datalevin/datalevin/releases/download/0.10.4/dtlv-0.10.4-macos-14-aarch64.zip"
    sha256 "6abdceca3a0455351bba84e1da73fbf2b743ac97132991ab6ec6cb380dfd17de"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
