# QR Code & Barcode Scanner CLI for macOS and Linux

`qrscan` is the Homebrew command-line scanner from [QR Code AI](https://qrcode-ai.com/en-US/qr-code-scanner/cli).
It detects QR codes and barcodes together in a local image and reports each
format and decoded value as JSON.

## Install and scan an image

```sh
brew install qrcode-ai-com/tap/qrscan
qrscan --version
qrscan ./label.png
```

Use `qrscan ./label.png --pretty` for a terminal summary of the first detection.
The default JSON report includes all detections.

| | QR codes | Barcodes |
| --- | --- | --- |
| **Try the scanner live** | [QR code scanner](https://qrcode-ai.com/en-US/qr-code-scanner) | [Barcode scanner](https://qrcode-ai.com/en-US/barcode-scanner) |
| **Command line guide** | [QR code scanner for the command line](https://qrcode-ai.com/en-US/qr-code-scanner/cli) | [Barcode scanner for the command line](https://qrcode-ai.com/en-US/barcode-scanner/cli) |
| **Create a code** | [QR code generator](https://qrcode-ai.com/en-US/qr-code-generator) | [Barcode generator](https://qrcode-ai.com/en-US/barcode-generator) |

## Try a QR code and Code 128 in one image

```sh
curl -fsSL -o mixed-code128-qr.png \
  https://raw.githubusercontent.com/qrcode-ai-com/qrcode-barcode-scanner/176ac96ef16ee330dbfc6ada10327d0b4e23a8b2/fixtures/symbology/mixed-code128-qr.png
qrscan ./mixed-code128-qr.png --profile full --budget-ms 0
```

The report includes these two detections.

```json
{
  "detections": [
    { "symbology": "qr_code", "content": { "text": "https://qrc-ai.com/76xMa" } },
    { "symbology": "code128", "content": { "text": "STOCK-4827" } }
  ]
}
```

The [CLI reference](https://github.com/qrcode-ai-com/qrcode-barcode-scanner/blob/v0.11.0/docs/api/cli.mdx)
explains the report fields and scan profiles.

## Platforms and verification

Homebrew installs the checksum-pinned `v0.11.0` release binary on macOS and
GNU/Linux, on arm64 and x86-64. The
[qualification run](https://github.com/qrcode-ai-com/homebrew-tap/actions/runs/42210346618)
installed the formula, verified both mixed-image payloads in `fast`, `frame`,
and `full`, and uninstalled it on all four hosts. Run the installed formula's
test with `brew test qrcode-ai-com/tap/qrscan`.

The [scanner release](https://github.com/qrcode-ai-com/qrcode-barcode-scanner/releases/tag/v0.11.0)
contains the archives and checksums. The [matching source archive](https://github.com/qrcode-ai-com/qrcode-barcode-scanner/releases/download/v0.11.0/qrcode-barcode-scanner-cli-0.11.0-source.tar.gz)
is available under AGPL-3.0-or-later.
