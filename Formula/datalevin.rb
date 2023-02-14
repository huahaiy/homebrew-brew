class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.8.5"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.8.5/dtlv-0.8.5-ubuntu-latest-amd64.zip"
    sha256 "9f6b550c2f2e0dcc50913e49df88b265a4b6ef04f638fc82fc2d306c2a910042"
  else
    if Hardware::CPU.arm?
      url "https://github.com/juji-io/datalevin/releases/download/0.8.5/dtlv-0.8.5-macos-latest-aarch64.zip"
      sha256 "0a070c9d18e03a6708a5396c86e266137a0a6e8d2630d8a3e043bf549bf9fa0f"
    else
      url "https://github.com/juji-io/datalevin/releases/download/0.8.5/dtlv-0.8.5-macos-latest-amd64.zip"
      sha256 "87fd776db57bf7b5b82f21dc175a5df46b33d1e66e54eda57365f9615afc869c"
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
