.class abstract Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;
.super Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;
.source "UploadRequest.java"


# static fields
.field public static final BOUNDARY:Ljava/lang/String; = "*****"

.field public static final LINE_END:Ljava/lang/String; = "\r\n"

.field public static final TWO_HYPHENS:Ljava/lang/String; = "--"


# instance fields
.field public mFile:Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;


# direct methods
.method public constructor <init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;-><init>()V

    .line 4
    if-eqz p1, :cond_8

    .line 6
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->mFile:Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;

    .line 8
    return-void

    .line 9
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    const-string v0, "The file should not be null"

    .line 13
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    throw p1
.end method


# virtual methods
.method public getConn(Ljava/lang/String;Ljava/lang/String;I)Ljava/net/HttpURLConnection;
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->getConn(Ljava/lang/String;Ljava/lang/String;I)Ljava/net/HttpURLConnection;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_14

    .line 7
    const/4 p2, 0x1

    .line 8
    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 11
    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 14
    const/4 p2, 0x0

    .line 15
    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 18
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 21
    :cond_14
    return-object p1
.end method

.method public getHttpMethod()Ljava/lang/String;
    .registers 2

    const-string v0, "POST"

    return-object v0
.end method
