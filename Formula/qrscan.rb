class Qrscan < Formula
  desc "Read QR codes and barcodes from local images"
  homepage "https://qrcode-ai.com/"
  version "0.12.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/qrcode-ai-com/qrcode-barcode-scanner-rust/releases/download/v0.12.2/qrcode-barcode-scanner-cli-0.12.2-aarch64-apple-darwin.tar.gz"
      sha256 "387a0312f13e036fc919786ada1700f0b67e62621bfd5dfc64872dd777dc28d5"
    end

    on_intel do
      url "https://github.com/qrcode-ai-com/qrcode-barcode-scanner-rust/releases/download/v0.12.2/qrcode-barcode-scanner-cli-0.12.2-x86_64-apple-darwin.tar.gz"
      sha256 "1f3d9958fed930f95b666c823045837a8fe5c3b43b63972c6947363c8c9ff454"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/qrcode-ai-com/qrcode-barcode-scanner-rust/releases/download/v0.12.2/qrcode-barcode-scanner-cli-0.12.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7c0258697839d8aa9b54602ec6a56d9961a5e9ed793419b8bd751a83f22f0c79"
    end

    on_intel do
      url "https://github.com/qrcode-ai-com/qrcode-barcode-scanner-rust/releases/download/v0.12.2/qrcode-barcode-scanner-cli-0.12.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "320e13c0ffd87953b9b2002dbe9a5cd23cb534c12dbd8206f0aa7e88640435f6"
    end
  end

  resource "mixed-scan-fixture" do
    url "https://raw.githubusercontent.com/qrcode-ai-com/qrcode-barcode-scanner-rust/d0fcf8a27410f5ee182aab6477624e3fc52c4aa5/fixtures/symbology/mixed-code128-qr.png"
    sha256 "c636e8d56df483ff1ec06dbe9b5bcba226c579f8fc1c3d10c4ccf4e100762ec8"
  end

  def install
    bin.install "qrscan"
    pkgshare.install "LICENSE", "LICENSE-APACHE-2.0", "LICENSING.md", "THIRD-PARTY.md",
                     "THIRD-PARTY-LICENSES.txt", "COPYRIGHT-rust-std.html", "SOURCE.md", "build-info.json"
  end

  test do
    require "json"

    assert_equal "qrscan #{version}\n", shell_output("#{bin}/qrscan --version")

    resource("mixed-scan-fixture").stage do
      %w[fast frame full].each do |profile|
        report = JSON.parse(shell_output("#{bin}/qrscan mixed-code128-qr.png --profile #{profile} --budget-ms 0"))
        expected = [["code128", "STOCK-4827"], ["qr_code", "https://qrc-ai.com/76xMa"]]
        decoded = report.fetch("detections").map { |item| [item.fetch("symbology"), item.dig("content", "text")] }
        assert_equal expected, decoded.sort, profile
      end
    end
  end
end
