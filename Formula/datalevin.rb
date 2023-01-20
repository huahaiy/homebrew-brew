class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.8.2"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.8.2/dtlv-0.8.2-ubuntu-latest-amd64.zip"
    sha256 "04646fd091be6b8e64f29b0fff5ada5d92a9176e2a301ac43654c810506529e1"
  else
    if Hardware::CPU.arm?
      url "https://github.com/juji-io/datalevin/releases/download/0.8.2/dtlv-0.8.2-macos-latest-aarch64.zip"
      sha256 "af76574c7210f43f817e47321112effc3c44307998dc16aaf0b3ecc5e8f7ab7d"
    else
      url "https://github.com/juji-io/datalevin/releases/download/0.8.2/dtlv-0.8.2-macos-latest-amd64.zip"
      sha256 "34abc6821b7f584746d1f7d10e3c60c2152874cb86fd7f8e76afd13aebbd9202"
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
