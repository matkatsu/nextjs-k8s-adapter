# Next.js k8s adapter (Nginx)

## Environment Variables
```
NEXTJS_HOST:nextjsホスト名（default:localhost）
NEXTJS_PORT:nextjsポート名（default:3000）
REDIRECT_HTTPS: http → httpsへリダイレクトするか（default:true）
```

## Create Docker Image
```
$ docker build -t matkatsu/nextjs-k8s-adapter .
```

## Push Docker Image
```
$ docker push matkatsu/nextjs-k8s-adapter
```
