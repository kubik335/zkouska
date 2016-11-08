module.exports = function(config) {
  config.set({
    customLaunchers: {
  Chrome_travis_ci: {
    base: 'Chrome',
    flags: ['--no-sandbox']
  }
}
  });
};