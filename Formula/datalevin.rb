class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.7.12"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.7.12/dtlv-0.7.12-ubuntu-latest-amd64.zip"
    sha256 "12efb9dabe69e6410a4ed32f4ad214e50e06a843cafa2cc787a197a57e50bf52"
  else
    if Hardware::CPU.arm?
      url "https://github.com/juji-io/datalevin/releases/download/0.7.12/dtlv-0.7.12-macos-latest-aarch64.zip"
      sha256 "725c67ca2135472d75e8b81e4750cb87c80492e7505946d7dd91a2d401cbba1f"
    else
      url "https://github.com/juji-io/datalevin/releases/download/0.7.12/dtlv-0.7.12-macos-latest-amd64.zip"
      sha256 "582d09c900988f0531679e27ac8ea980b8c2644a3888fc1f31f6132bf4d57b22"
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
