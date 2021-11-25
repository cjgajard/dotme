ctags_typescript() {
  find src -regex '.*\.tsx?$' -exec ctags {} +
}
