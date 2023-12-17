.class public Lcom/xiaomi/micloudsdk/stat/DownloadFileFailedStatParam;
.super Ljava/lang/Object;
.source "DownloadFileFailedStatParam.java"


# instance fields
.field public final exceptionName:Ljava/lang/String;

.field public final httpStatusCode:I

.field public final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/stat/DownloadFileFailedStatParam;->url:Ljava/lang/String;

    iput p2, p0, Lcom/xiaomi/micloudsdk/stat/DownloadFileFailedStatParam;->httpStatusCode:I

    iput-object p3, p0, Lcom/xiaomi/micloudsdk/stat/DownloadFileFailedStatParam;->exceptionName:Ljava/lang/String;

    return-void
.end method

.method public static createDownloadFileFailedStatParam(Ljava/lang/String;ILjava/lang/String;)Lcom/xiaomi/micloudsdk/stat/DownloadFileFailedStatParam;
    .registers 4

    new-instance v0, Lcom/xiaomi/micloudsdk/stat/DownloadFileFailedStatParam;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/micloudsdk/stat/DownloadFileFailedStatParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "DownloadFileFailedStatParam{url=\'"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/stat/DownloadFileFailedStatParam;->url:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", httpStatusCode="

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget v1, p0, Lcom/xiaomi/micloudsdk/stat/DownloadFileFailedStatParam;->httpStatusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", exceptionName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/stat/DownloadFileFailedStatParam;->exceptionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
