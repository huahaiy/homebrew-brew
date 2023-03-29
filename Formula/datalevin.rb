class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.8.9"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.8.9/dtlv-0.8.9-ubuntu-latest-amd64.zip"
    sha256 "c004fb10e7b04234916eea5fde408f10f9ecdbe4a47cfd0aa73c4b45bc662340"
  else
    if Hardware::CPU.arm?
      url "https://github.com/juji-io/datalevin/releases/download/0.8.9/dtlv-0.8.9-macos-latest-aarch64.zip"
      sha256 "ca707cf876475c17064eccd849b5ed18c5b9418fce5f1250ecd9c2730642ea1c"
    else
      url "https://github.com/juji-io/datalevin/releases/download/0.8.9/dtlv-0.8.9-macos-latest-amd64.zip"
      sha256 "4e3d5927900973f50cd31a97c54049ed0052d238d15c2784fcee3dbd4c985976"
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
