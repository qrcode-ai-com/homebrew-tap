class Qrscan < Formula
  desc "Read QR codes and barcodes from local images"
  homepage "https://qrcode-ai.com/"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/qrcode-ai-com/qrcode-barcode-scanner-rust/releases/download/v0.12.0/qrcode-barcode-scanner-cli-0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "b241f7bc982079971de99213dea2c06a7a7e5d5eac60d3a6d20faf2719a9a2d5"
    end

    on_intel do
      url "https://github.com/qrcode-ai-com/qrcode-barcode-scanner-rust/releases/download/v0.12.0/qrcode-barcode-scanner-cli-0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "d55212871b5f08eb039c6c82280287e833b7662c3ec5227d4357f623014b8a74"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/qrcode-ai-com/qrcode-barcode-scanner-rust/releases/download/v0.12.0/qrcode-barcode-scanner-cli-0.12.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "17512dea779823b0ab26e1556966c9ac6d8be0d544a99dbbb43edc4b47d57d6a"
    end

    on_intel do
      url "https://github.com/qrcode-ai-com/qrcode-barcode-scanner-rust/releases/download/v0.12.0/qrcode-barcode-scanner-cli-0.12.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1e6aea17507d22b13a370de3531697264dc748f34a1039425e892c3ee008217c"
    end
  end

  resource "mixed-scan-fixture" do
    url "https://raw.githubusercontent.com/qrcode-ai-com/qrcode-barcode-scanner-rust/897dd50cdf27cbde54d408bf65e1ca4622035d42/fixtures/symbology/mixed-code128-qr.png"
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
