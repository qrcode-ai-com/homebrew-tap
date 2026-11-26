class Qrscan < Formula
  desc "Read QR codes and barcodes from local images"
  homepage "https://qrcode-ai.com/"
  version "0.12.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/qrcode-ai-com/qrcode-barcode-scanner-rust/releases/download/v0.12.1/qrcode-barcode-scanner-cli-0.12.1-aarch64-apple-darwin.tar.gz"
      sha256 "8d9608bcd7680c1e6a40625c2764b66fc2922e3da92b5dabc21d4238bb145af0"
    end

    on_intel do
      url "https://github.com/qrcode-ai-com/qrcode-barcode-scanner-rust/releases/download/v0.12.1/qrcode-barcode-scanner-cli-0.12.1-x86_64-apple-darwin.tar.gz"
      sha256 "b8fbd821aae6a0969940aab169befd525755fe834018ced8969328629097fe80"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/qrcode-ai-com/qrcode-barcode-scanner-rust/releases/download/v0.12.1/qrcode-barcode-scanner-cli-0.12.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ba2af3b5304b0756ba172d38ce9f839fc3b668c38d4a7ab49b719e5f0cfd5789"
    end

    on_intel do
      url "https://github.com/qrcode-ai-com/qrcode-barcode-scanner-rust/releases/download/v0.12.1/qrcode-barcode-scanner-cli-0.12.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5e99d584447b03eef3818e14034c12ad09c88f31f8535b5929b0b846203a0665"
    end
  end

  resource "mixed-scan-fixture" do
    url "https://raw.githubusercontent.com/qrcode-ai-com/qrcode-barcode-scanner-rust/5b2c580c78b0693e58909f889b66f24fc1c548b1/fixtures/symbology/mixed-code128-qr.png"
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
