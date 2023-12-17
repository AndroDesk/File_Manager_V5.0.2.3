.class public Lcom/xiaomi/micloudsdk/stat/DownloadFileFailedStatParam;
.super Ljava/lang/Object;
.source "DownloadFileFailedStatParam.java"


# instance fields
.field public final exceptionName:Ljava/lang/String;

.field public final httpStatusCode:I

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/stat/DownloadFileFailedStatParam;->url:Ljava/lang/String;

    .line 6
    iput p2, p0, Lcom/xiaomi/micloudsdk/stat/DownloadFileFailedStatParam;->httpStatusCode:I

    .line 8
    iput-object p3, p0, Lcom/xiaomi/micloudsdk/stat/DownloadFileFailedStatParam;->exceptionName:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public static createDownloadFileFailedStatParam(Ljava/lang/String;ILjava/lang/String;)Lcom/xiaomi/micloudsdk/stat/DownloadFileFailedStatParam;
    .registers 4

    .line 1
    new-instance v0, Lcom/xiaomi/micloudsdk/stat/DownloadFileFailedStatParam;

    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/micloudsdk/stat/DownloadFileFailedStatParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    const-string v0, "DownloadFileFailedStatParam{url=\'"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/stat/DownloadFileFailedStatParam;->url:Ljava/lang/String;

    .line 9
    const/16 v2, 0x27

    .line 11
    const-string v3, ", httpStatusCode="

    .line 13
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 16
    iget v1, p0, Lcom/xiaomi/micloudsdk/stat/DownloadFileFailedStatParam;->httpStatusCode:I

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", exceptionName=\'"

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/stat/DownloadFileFailedStatParam;->exceptionName:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    const/16 v1, 0x7d

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    return-object v0
.end method
