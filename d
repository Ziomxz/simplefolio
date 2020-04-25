[1mdiff --git a/package.json b/package.json[m
[1mindex 42412eb..4c92a65 100644[m
[1m--- a/package.json[m
[1m+++ b/package.json[m
[36m@@ -4,6 +4,7 @@[m
   "description": "A clean, beautiful and responsive portfolio template for Developers!",[m
   "main": "index.js",[m
   "scripts": {[m
[32m+[m[32m    "deploy": "gh-pages -d dist",[m
     "start": "webpack-dev-server --config webpack.dev.js --open",[m
     "build": "webpack --config webpack.prod.js"[m
   },[m
[36m@@ -17,7 +18,7 @@[m
   "bugs": {[m
     "url": "https://github.com/cobidev/simplefolio/issues"[m
   },[m
[31m-  "homepage": "https://github.com/cobidev/simplefolio#readme",[m
[32m+[m[32m  "homepage": "https://ziomxz.github.io/simplefolio",[m
   "devDependencies": {[m
     "clean-webpack-plugin": "^3.0.0",[m
     "css-loader": "^3.4.2",[m
[36m@@ -36,6 +37,7 @@[m
   },[m
   "dependencies": {[m
     "bootstrap": "^4.4.1",[m
[32m+[m[32m    "gh-pages": "^2.2.0",[m
     "jquery": "^3.4.1",[m
     "popper.js": "^1.16.1",[m
     "tilt.js": "^1.2.1"[m
[1mdiff --git a/webpack.prod.js b/webpack.prod.js[m
[1mindex 54ff572..9db7714 100644[m
[1m--- a/webpack.prod.js[m
[1m+++ b/webpack.prod.js[m
[36m@@ -11,7 +11,8 @@[m [mmodule.exports = merge(common, {[m
   mode: 'production',[m
   output: {[m
     filename: '[name].[contentHash].bundle.js',[m
[31m-    path: path.resolve(__dirname, 'dist')[m
[32m+[m[32m    path: path.resolve(__dirname, 'dist'),[m
[32m+[m[32m    publicPath: "/simplefolio/"[m
   },[m
   optimization: {[m
     minimizer: [[m
