# cross-images

Cross images is now unmaintained in favor of
[ink-cross-images](https://github.com/cargo-prebuilt/ink-cross-images).

## cross-auditable

### Changed

- Updated apt packages if any.
- Use cargo-auditable to build.

### Usage

- See [Cross.toml](cross-auditable/Cross.toml).
- ghcr.io/cargo-prebuilt/cross-auditable:[TARGET](#supported-targets)

### Supported Targets

- x86_64-unknown-linux-gnu
- x86_64-unknown-linux-musl
- aarch64-unknown-linux-gnu
- aarch64-unknown-linux-musl
- x86_64-unknown-freebsd
- x86_64-unknown-netbsd
- x86_64-unknown-illumos
- riscv64gc-unknown-linux-gnu
- powerpc64-unknown-linux-gnu
- powerpc64le-unknown-linux-gnu
- s390x-unknown-linux-gnu
- armv7-unknown-linux-gnueabihf
- armv7-unknown-linux-musleabihf

## cross-openssl

### Changed

- Use cargo-auditable image as base.
- Add latest version of openssl.

### Usage

- See [Cross.toml](cross-openssl/Cross.toml).
- ghcr.io/cargo-prebuilt/cross-openssl:[TARGET](#supported-targets)

### Supported Targets

- x86_64-unknown-linux-gnu
- x86_64-unknown-linux-musl
- aarch64-unknown-linux-gnu
- aarch64-unknown-linux-musl
- x86_64-unknown-freebsd
- x86_64-unknown-netbsd
- x86_64-unknown-illumos
- riscv64gc-unknown-linux-gnu
- powerpc64-unknown-linux-gnu
- powerpc64le-unknown-linux-gnu
- s390x-unknown-linux-gnu
- armv7-unknown-linux-gnueabihf
- armv7-unknown-linux-musleabihf
