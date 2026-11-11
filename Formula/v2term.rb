class V2term < Formula
  desc "V2EX 终端客户端"
  homepage "https://github.com/synrise25/v2term"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/synrise25/v2term/releases/download/v0.3.0/v2term_darwin_arm64.tar.gz"
      sha256 "3fda4d5f0587164e9394b6118ed03208a0d22ae4b6c86b397ef9db6191ad8a26"
    end
    on_intel do
      url "https://github.com/synrise25/v2term/releases/download/v0.3.0/v2term_darwin_amd64.tar.gz"
      sha256 "f1932c7e0c2b47f54b8a3cb517e53eb8415d8c7935094db7173163446802a606"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/synrise25/v2term/releases/download/v0.3.0/v2term_linux_arm64.tar.gz"
      sha256 "3f924fd59cad2d1875bb9c7600efa24d74a2921dcde29b157b0942c756731c15"
    end
    on_intel do
      url "https://github.com/synrise25/v2term/releases/download/v0.3.0/v2term_linux_amd64.tar.gz"
      sha256 "8c517e919bab95203e0616c22a03ddd9961e28631e0e368a39d582d19726da56"
    end
  end

  def install
    bin.install "v2term"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/v2term --version")
  end
end
