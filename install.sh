#!/bin/bash
[[ ! -L ~/.zshrc ]] && ln -s ~/.zsh/zshrc ~/.zshrc || true
[[ ! -r ~/.localzshrc ]] && touch ~/.localzshrc || true
