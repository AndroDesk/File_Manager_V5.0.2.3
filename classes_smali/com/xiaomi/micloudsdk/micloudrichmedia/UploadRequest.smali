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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;)V
    .registers 3

    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;-><init>()V

    if-eqz p1, :cond_8

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->mFile:Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The file should not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getConn(Ljava/lang/String;Ljava/lang/String;I)Ljava/net/HttpURLConnection;
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->getConn(Ljava/lang/String;Ljava/lang/String;I)Ljava/net/HttpURLConnection;

    move-result-object p1

    if-eqz p1, :cond_14

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setDoInput(Z)V

    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setUseCaches(Z)V

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    :cond_14
    return-object p1
.end method

.method public getHttpMethod()Ljava/lang/String;
    .registers 2

    const-string v0, "POST"

    return-object v0
.end method
