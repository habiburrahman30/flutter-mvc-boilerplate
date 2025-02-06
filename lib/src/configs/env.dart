class ENV {
  // ================API ENDPOINT DEV=====================
  // static const baseUrl = 'https://clicktofood.com/api';

  static String BASE_URL = baseUrl(env: Environment.dev);

  // Get the base URL based on the environment
  static String baseUrl({required Environment env}) {
    switch (env) {
      case Environment.dev:
        return 'https://clicktofood.com/api';
      case Environment.live:
        return 'https://touch.bytecareltd.com/api';
    }
  }
}

// Environment enum
enum Environment { dev, live }
