Pixel to Em
===============

Pixel to em converter, very basic.

## Installation

```bash
sudo mv ./font-convert.rb /usr/bin/font-convert
sudo chmod +x /usr/bin/font-convert
```

## Usage

```bash
PX to EM Converter
    -b, --base NUMBER                Base pixel size of document
    -r, --required NUMBER            Font required in pixels
```

```bash
tyler$ font-convert -b 16 -r 13
font-size: 0.8125em;
```