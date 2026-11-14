# QR Code & Barcode Scanner CLI for macOS and Linux

<!-- qrcode-ai-readme-actions:v2 -->

### Ask AI

[![ChatGPT](https://raw.githubusercontent.com/qrcode-ai-com/qrcode-barcode-scanner/main/docs/assets/actions/chatgpt-v1.svg)](https://chatgpt.com/?q=Help%20me%20understand%20QR%20Code%20%26%20Barcode%20Scanner%20CLI%20for%20macOS%20and%20Linux%20for%20QR%20Code%20%26%20Barcode%20Scanner%2C%20the%20open-source%20scanner.%20Published%20tap%20for%20qrscan%200.11.0%3B%20source%20documentation%20does%20not%20publish%20a%20new%20binary.%20Provided%20README%20context%20%28verify%20against%20the%20sources%29%3A%20Use%20this%20Homebrew%20tap%20to%20install%20qrscan%20on%20macOS%20or%20GNU%2FLinux%20without%20compiling%20the%20Rust%20engine.%20Choose%20the%20formula%20for%20the%20supported%20host%2C%20then%20scan%20a%20saved%20QR%20image%20or%20barcode%20label%20from%20a%20terminal.%20The%20default%20JSON%20report%20preserves%20every%20detection%2C%20while%20the%20human-readable%20summary%20serves%20a%20quick%20one-image%20check.%20Homebrew%20manages%20installation%20and%20removal%3B%20it%20does%20not%20add%20a%20web%20service%20or%20graphical%20scanner.%20Read%20the%20public%20documentation%20below.%20Explain%20what%20this%20destination%20does%2C%20its%20documented%20installation%20or%20access%20steps%2C%20a%20minimal%20example%20if%20supported%2C%20prerequisites%2C%20limitations%20and%20license.%20Distinguish%20published%20packages%20from%20working%20source%20and%20preparation.%20Cite%20your%20sources%3B%20if%20a%20page%20is%20unavailable%20or%20a%20fact%20cannot%20be%20checked%2C%20say%20so.%20Do%20not%20invent%20installation%20commands%2C%20benchmark%20results%20or%20comparisons.%20Answer%20in%20my%20language.%20Public%20sources%3A%20https%3A%2F%2Fgithub.com%2Fqrcode-ai-com%2Fhomebrew-tap%2Fblob%2Fmain%2FREADME.md%20https%3A%2F%2Fqrcode-ai.com%2Fen-US%2Fqr-code-scanner%20https%3A%2F%2Fqrcode-ai.com%2Fen-US%2Fbarcode-scanner%20https%3A%2F%2Fqrcode-ai.com%2Fen-US%2Fqr-code-scanner%2Fcli%20https%3A%2F%2Fqrcode-ai.com%2Fen-US%2Fbarcode-scanner%2Fcli%20https%3A%2F%2Fqrcode-ai.com%2Fen-US%2Fqr-code-generator%20https%3A%2F%2Fqrcode-ai.com%2Fen-US%2Fbarcode-generator)
[![Claude](https://raw.githubusercontent.com/qrcode-ai-com/qrcode-barcode-scanner/main/docs/assets/actions/claude-v1.svg)](https://claude.ai/new?q=Help%20me%20understand%20QR%20Code%20%26%20Barcode%20Scanner%20CLI%20for%20macOS%20and%20Linux%20for%20QR%20Code%20%26%20Barcode%20Scanner%2C%20the%20open-source%20scanner.%20Published%20tap%20for%20qrscan%200.11.0%3B%20source%20documentation%20does%20not%20publish%20a%20new%20binary.%20Provided%20README%20context%20%28verify%20against%20the%20sources%29%3A%20Use%20this%20Homebrew%20tap%20to%20install%20qrscan%20on%20macOS%20or%20GNU%2FLinux%20without%20compiling%20the%20Rust%20engine.%20Choose%20the%20formula%20for%20the%20supported%20host%2C%20then%20scan%20a%20saved%20QR%20image%20or%20barcode%20label%20from%20a%20terminal.%20The%20default%20JSON%20report%20preserves%20every%20detection%2C%20while%20the%20human-readable%20summary%20serves%20a%20quick%20one-image%20check.%20Homebrew%20manages%20installation%20and%20removal%3B%20it%20does%20not%20add%20a%20web%20service%20or%20graphical%20scanner.%20Read%20the%20public%20documentation%20below.%20Explain%20what%20this%20destination%20does%2C%20its%20documented%20installation%20or%20access%20steps%2C%20a%20minimal%20example%20if%20supported%2C%20prerequisites%2C%20limitations%20and%20license.%20Distinguish%20published%20packages%20from%20working%20source%20and%20preparation.%20Cite%20your%20sources%3B%20if%20a%20page%20is%20unavailable%20or%20a%20fact%20cannot%20be%20checked%2C%20say%20so.%20Do%20not%20invent%20installation%20commands%2C%20benchmark%20results%20or%20comparisons.%20Answer%20in%20my%20language.%20Public%20sources%3A%20https%3A%2F%2Fgithub.com%2Fqrcode-ai-com%2Fhomebrew-tap%2Fblob%2Fmain%2FREADME.md%20https%3A%2F%2Fqrcode-ai.com%2Fen-US%2Fqr-code-scanner%20https%3A%2F%2Fqrcode-ai.com%2Fen-US%2Fbarcode-scanner%20https%3A%2F%2Fqrcode-ai.com%2Fen-US%2Fqr-code-scanner%2Fcli%20https%3A%2F%2Fqrcode-ai.com%2Fen-US%2Fbarcode-scanner%2Fcli%20https%3A%2F%2Fqrcode-ai.com%2Fen-US%2Fqr-code-generator%20https%3A%2F%2Fqrcode-ai.com%2Fen-US%2Fbarcode-generator)
[![Gemini](https://raw.githubusercontent.com/qrcode-ai-com/qrcode-barcode-scanner/main/docs/assets/actions/gemini-v1.svg)](https://gemini.google.com/)
[![Grok](https://raw.githubusercontent.com/qrcode-ai-com/qrcode-barcode-scanner/main/docs/assets/actions/grok-v1.svg)](https://grok.com/?q=Help%20me%20understand%20QR%20Code%20%26%20Barcode%20Scanner%20CLI%20for%20macOS%20and%20Linux%20for%20QR%20Code%20%26%20Barcode%20Scanner%2C%20the%20open-source%20scanner.%20Published%20tap%20for%20qrscan%200.11.0%3B%20source%20documentation%20does%20not%20publish%20a%20new%20binary.%20Provided%20README%20context%20%28verify%20against%20the%20sources%29%3A%20Use%20this%20Homebrew%20tap%20to%20install%20qrscan%20on%20macOS%20or%20GNU%2FLinux%20without%20compiling%20the%20Rust%20engine.%20Choose%20the%20formula%20for%20the%20supported%20host%2C%20then%20scan%20a%20saved%20QR%20image%20or%20barcode%20label%20from%20a%20terminal.%20The%20default%20JSON%20report%20preserves%20every%20detection%2C%20while%20the%20human-readable%20summary%20serves%20a%20quick%20one-image%20check.%20Homebrew%20manages%20installation%20and%20removal%3B%20it%20does%20not%20add%20a%20web%20service%20or%20graphical%20scanner.%20Read%20the%20public%20documentation%20below.%20Explain%20what%20this%20destination%20does%2C%20its%20documented%20installation%20or%20access%20steps%2C%20a%20minimal%20example%20if%20supported%2C%20prerequisites%2C%20limitations%20and%20license.%20Distinguish%20published%20packages%20from%20working%20source%20and%20preparation.%20Cite%20your%20sources%3B%20if%20a%20page%20is%20unavailable%20or%20a%20fact%20cannot%20be%20checked%2C%20say%20so.%20Do%20not%20invent%20installation%20commands%2C%20benchmark%20results%20or%20comparisons.%20Answer%20in%20my%20language.%20Public%20sources%3A%20https%3A%2F%2Fgithub.com%2Fqrcode-ai-com%2Fhomebrew-tap%2Fblob%2Fmain%2FREADME.md%20https%3A%2F%2Fqrcode-ai.com%2Fen-US%2Fqr-code-scanner%20https%3A%2F%2Fqrcode-ai.com%2Fen-US%2Fbarcode-scanner%20https%3A%2F%2Fqrcode-ai.com%2Fen-US%2Fqr-code-scanner%2Fcli%20https%3A%2F%2Fqrcode-ai.com%2Fen-US%2Fbarcode-scanner%2Fcli%20https%3A%2F%2Fqrcode-ai.com%2Fen-US%2Fqr-code-generator%20https%3A%2F%2Fqrcode-ai.com%2Fen-US%2Fbarcode-generator)
[![Perplexity](https://raw.githubusercontent.com/qrcode-ai-com/qrcode-barcode-scanner/main/docs/assets/actions/perplexity-v1.svg)](https://www.perplexity.ai/?q=Help%20me%20understand%20QR%20Code%20%26%20Barcode%20Scanner%20CLI%20for%20macOS%20and%20Linux%20for%20QR%20Code%20%26%20Barcode%20Scanner%2C%20the%20open-source%20scanner.%20Published%20tap%20for%20qrscan%200.11.0%3B%20source%20documentation%20does%20not%20publish%20a%20new%20binary.%20Provided%20README%20context%20%28verify%20against%20the%20sources%29%3A%20Use%20this%20Homebrew%20tap%20to%20install%20qrscan%20on%20macOS%20or%20GNU%2FLinux%20without%20compiling%20the%20Rust%20engine.%20Choose%20the%20formula%20for%20the%20supported%20host%2C%20then%20scan%20a%20saved%20QR%20image%20or%20barcode%20label%20from%20a%20terminal.%20The%20default%20JSON%20report%20preserves%20every%20detection%2C%20while%20the%20human-readable%20summary%20serves%20a%20quick%20one-image%20check.%20Homebrew%20manages%20installation%20and%20removal%3B%20it%20does%20not%20add%20a%20web%20service%20or%20graphical%20scanner.%20Read%20the%20public%20documentation%20below.%20Explain%20what%20this%20destination%20does%2C%20its%20documented%20installation%20or%20access%20steps%2C%20a%20minimal%20example%20if%20supported%2C%20prerequisites%2C%20limitations%20and%20license.%20Distinguish%20published%20packages%20from%20working%20source%20and%20preparation.%20Cite%20your%20sources%3B%20if%20a%20page%20is%20unavailable%20or%20a%20fact%20cannot%20be%20checked%2C%20say%20so.%20Do%20not%20invent%20installation%20commands%2C%20benchmark%20results%20or%20comparisons.%20Answer%20in%20my%20language.%20Public%20sources%3A%20https%3A%2F%2Fgithub.com%2Fqrcode-ai-com%2Fhomebrew-tap%2Fblob%2Fmain%2FREADME.md%20https%3A%2F%2Fqrcode-ai.com%2Fen-US%2Fqr-code-scanner%20https%3A%2F%2Fqrcode-ai.com%2Fen-US%2Fbarcode-scanner%20https%3A%2F%2Fqrcode-ai.com%2Fen-US%2Fqr-code-scanner%2Fcli%20https%3A%2F%2Fqrcode-ai.com%2Fen-US%2Fbarcode-scanner%2Fcli%20https%3A%2F%2Fqrcode-ai.com%2Fen-US%2Fqr-code-generator%20https%3A%2F%2Fqrcode-ai.com%2Fen-US%2Fbarcode-generator)
[![Copilot](https://raw.githubusercontent.com/qrcode-ai-com/qrcode-barcode-scanner/main/docs/assets/actions/copilot-v1.svg)](https://copilot.com/)
[![DeepSeek](https://raw.githubusercontent.com/qrcode-ai-com/qrcode-barcode-scanner/main/docs/assets/actions/deepseek-v1.svg)](https://chat.deepseek.com/)
[![Meta AI](https://raw.githubusercontent.com/qrcode-ai-com/qrcode-barcode-scanner/main/docs/assets/actions/meta-ai-v1.svg)](https://www.meta.ai/)
[![Qwen](https://raw.githubusercontent.com/qrcode-ai-com/qrcode-barcode-scanner/main/docs/assets/actions/qwen-v1.svg)](https://qwen.ai/)

Choose an AI assistant to explain this destination using its public sources. Gemini opens gemini.google.com. Gemini, Copilot, DeepSeek, Meta AI and Qwen require pasting the prompt below; the other links include it in their URL. Sign-in or a manual paste may still be required. Check the answer against the documentation.

<details>
<summary>Copy the plain-text prompt</summary>

Use the code block's copy control, or select its complete text, then paste it into your assistant.

```text
Help me understand QR Code & Barcode Scanner CLI for macOS and Linux for QR Code & Barcode Scanner, the open-source scanner. Published tap for qrscan 0.11.0; source documentation does not publish a new binary. Provided README context (verify against the sources): Use this Homebrew tap to install qrscan on macOS or GNU/Linux without compiling the Rust engine. Choose the formula for the supported host, then scan a saved QR image or barcode label from a terminal. The default JSON report preserves every detection, while the human-readable summary serves a quick one-image check. Homebrew manages installation and removal; it does not add a web service or graphical scanner. Read the public documentation below. Explain what this destination does, its documented installation or access steps, a minimal example if supported, prerequisites, limitations and license. Distinguish published packages from working source and preparation. Cite your sources; if a page is unavailable or a fact cannot be checked, say so. Do not invent installation commands, benchmark results or comparisons. Answer in my language. Public sources: https://github.com/qrcode-ai-com/homebrew-tap/blob/main/README.md https://qrcode-ai.com/en-US/qr-code-scanner https://qrcode-ai.com/en-US/barcode-scanner https://qrcode-ai.com/en-US/qr-code-scanner/cli https://qrcode-ai.com/en-US/barcode-scanner/cli https://qrcode-ai.com/en-US/qr-code-generator https://qrcode-ai.com/en-US/barcode-generator
```

</details>

<!-- /qrcode-ai-readme-actions:v2 -->

Use this Homebrew tap to install qrscan on macOS or GNU/Linux without compiling the Rust engine. Choose the formula for the supported host, then scan a saved QR image or barcode label from a terminal. The default JSON report preserves every detection, while the human-readable summary serves a quick one-image check. Homebrew manages installation and removal; it does not add a web service or graphical scanner.

The [QR code scanner](https://qrcode-ai.com/en-US/qr-code-scanner) and [barcode scanner](https://qrcode-ai.com/en-US/barcode-scanner) are the product’s browser scanning entry points. The [QR code scanner guide for the command-line](https://qrcode-ai.com/en-US/qr-code-scanner/cli) and [barcode scanner guide for the command-line](https://qrcode-ai.com/en-US/barcode-scanner/cli) are the corresponding integration routes. If those product pages are unavailable, use the installation and report instructions below.

To prepare a known input, create a QR image with the [QR code generator](https://qrcode-ai.com/en-US/qr-code-generator) or a barcode label with the [barcode generator](https://qrcode-ai.com/en-US/barcode-generator). Retain the original payload with the image so that a test can compare the complete decoded value with its expected text.

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

Maintained by **Thibaut Mélen & Nicolas Cella** for **QR Code AI**, a product of **SuperNovae Studio**. Component licenses retain their own terms.

## Source license

This tap’s project-authored source and documentation use the [MIT License](LICENSE), with attribution to Thibaut Mélen & Nicolas Cella, QR Code AI and SuperNovae Studio. You may reuse and modify this source in commercial or proprietary projects while preserving the copyright and permission notice.

The formula currently installs the immutable scanner 0.11.0 binaries, whose packaged AGPL-3.0-or-later license and third-party notices remain unchanged. The [scanner’s current MIT source](https://github.com/qrcode-ai-com/qrcode-barcode-scanner/blob/main/LICENSING.md) will reach installed binaries through a separately qualified and approved release. This tap source update does not publish a new engine version.
