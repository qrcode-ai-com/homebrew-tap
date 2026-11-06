class Qrscan < Formula
  desc "Read QR codes and barcodes from local images"
  homepage "https://qrcode-ai.com/"
  version "0.11.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/qrcode-ai-com/qrcode-barcode-scanner/releases/download/v0.11.0/qrcode-barcode-scanner-cli-0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "fed588c3073661f0a3400c91fdb4924a3ba02bc7142206a87b68056c3c7018d2"
    end

    on_intel do
      url "https://github.com/qrcode-ai-com/qrcode-barcode-scanner/releases/download/v0.11.0/qrcode-barcode-scanner-cli-0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "a2e367340e7736b782da549acaf412a17f4acc1817500a97e70f70d0c2519d0d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/qrcode-ai-com/qrcode-barcode-scanner/releases/download/v0.11.0/qrcode-barcode-scanner-cli-0.11.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d5b5eff8ed336ef82a76865fd16e9a087afd5b1574b537747aea6d105ae7c5aa"
    end

    on_intel do
      url "https://github.com/qrcode-ai-com/qrcode-barcode-scanner/releases/download/v0.11.0/qrcode-barcode-scanner-cli-0.11.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b7c6669e332c7cc688228077b70d87f52154052e345992bd358aad6d6c7d3298"
    end
  end

  resource "mixed-scan-fixture" do
    url "https://raw.githubusercontent.com/qrcode-ai-com/qrcode-barcode-scanner/176ac96ef16ee330dbfc6ada10327d0b4e23a8b2/fixtures/symbology/mixed-code128-qr.png"
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
