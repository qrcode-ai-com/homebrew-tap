# QR Code & Barcode Scanner for Homebrew

Install `qrscan`, the local image scanner from [QR Code AI](https://qrcode-ai.com/).
It reads QR codes and barcodes in the same image and returns their decoded values
and formats as JSON.

```sh
brew install qrcode-ai-com/tap/qrscan
qrscan ./label.png
```

Use `qrscan ./label.png --pretty` for a terminal summary. See the
[QR code scanner](https://qrcode-ai.com/en-US/qr-code-scanner) and
[barcode scanner](https://qrcode-ai.com/en-US/barcode-scanner) for the web tools.
For profile options and report fields, see the
[CLI reference](https://github.com/qrcode-ai-com/qrcode-barcode-scanner/blob/v0.11.0/docs/api/cli.mdx).

The formula installs the checksum-pinned `v0.11.0` release binary for macOS
or GNU/Linux on arm64 and x86-64. See the
[release archives and checksums](https://github.com/qrcode-ai-com/qrcode-barcode-scanner/releases/tag/v0.11.0)
and the [matching source archive](https://github.com/qrcode-ai-com/qrcode-barcode-scanner/releases/download/v0.11.0/qrcode-barcode-scanner-cli-0.11.0-source.tar.gz).
The scanner is licensed under AGPL-3.0-or-later.
