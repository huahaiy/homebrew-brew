class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/datalevin/datalevin"
  version "0.10.18"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/datalevin/datalevin/releases/download/0.10.18/dtlv-0.10.18-ubuntu-22.04-amd64.zip"
    sha256 "5d838d55e9518bc317683132a7658fdcbab0fcb8a333bdabc13e309e9f9aa388"
  else
    url "https://github.com/datalevin/datalevin/releases/download/0.10.18/dtlv-0.10.18-macos-14-aarch64.zip"
    sha256 "809bd7fe804b2271107c277f2533e335955860a9d5f8e0f34b0998b33eda2df4"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
