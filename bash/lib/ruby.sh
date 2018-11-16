ruby_version() {
    awk '/RUBY VERSION/{getline; print}' Gemfile.lock |
        sed "s/^\s*ruby\s*//g" |
        sed "s/p/\-&/"
}
