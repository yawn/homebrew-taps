class Runt < Formula

  desc "Runt is a simple commandline utility to make configuration files executable."
  homepage "https://github.com/yawn/runt"
  version "1.0.0"

  on_macos do

    if Hardware::CPU.arm?
      url "https://github.com/yawn/runt/releases/download/v1.0.0/runt-aarch64-apple-darwin"
      sha256 "9fd8645bbcbbc3290d72035043bcd25c3375f981eab18550fb1ddf6f9a76ea98"

      def install
        bin.install "runt-aarch64-apple-darwin" => "runt"
      end

    end

    if Hardware::CPU.intel?

      url "https://github.com/yawn/runt/releases/download/v1.0.0/runt-x86_64-apple-darwin"
      sha256 "2b75bbcdd63b316d2b5b4b950889bf4fd2dcbf5f59e260756af143a4e93d969f"

      def install
        bin.install "runt-x86_64-apple-darwin" => "runt"
      end

    end

  end

end
