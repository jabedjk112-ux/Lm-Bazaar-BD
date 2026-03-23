// MainActivity.java এর ভেতরে
WebView myWebView = (WebView) findViewById(R.id.webview);
myWebView.getSettings().setJavaScriptEnabled(true);
myWebView.loadUrl("file:///android_asset/product_card.html");
