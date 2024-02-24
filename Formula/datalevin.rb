class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.8.28"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.8.28/dtlv-0.8.28-ubuntu-latest-amd64.zip"
    sha256 "ad7fae718e8d1684483eade246e5f36a0e8a9c90da45fb1896effc4b6494437f"
  else
    if Hardware::CPU.arm?
      url "https://github.com/juji-io/datalevin/releases/download/0.8.28/dtlv-0.8.28-macos-latest-aarch64.zip"
      sha256 "fadeafb523e89a5a029dbdbea9bc2bcb82b779a513c0e5747cefcd3de3650167"
    else
      url "https://github.com/juji-io/datalevin/releases/download/0.8.28/dtlv-0.8.28-macos-latest-amd64.zip"
      sha256 "c12abd5f54263a216018634e03b14f699460257f8e8a9e5ad0bb907c9bca6bd1"
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
