# x86-64_Mac_Test_Run

First, we are going to need to install qemu via homebrew:
brew qemu install

Next, we will need some sort of netwise assembler:
brew install nasm
 
We will use GCC so that we can compile said code:
brew install gcc

To handle our debugger, we will use lldb:
xcode-select --install

Xcode commandline tools gives us lldb, so, once you have that done,
you'll be able to run x86-64 code on Mac via VSCode.
