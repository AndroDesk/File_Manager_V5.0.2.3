.class public Lcom/xiaomi/micloudsdk/stat/GetDownloadFileUrlFailedStatParam;
.super Ljava/lang/Object;
.source "GetDownloadFileUrlFailedStatParam.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudsdk/stat/GetDownloadFileUrlFailedStatParam$GetDownloadFileUrlFailedResponse;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GetDownloadFileUrlFailedStatParam"


# instance fields
.field public final description:Ljava/lang/String;

.field public final exceptionName:Ljava/lang/String;

.field public final httpStatusCode:I

.field public final reason:Ljava/lang/String;

.field public final responseCode:I

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/stat/GetDownloadFileUrlFailedStatParam;->url:Ljava/lang/String;

    .line 6
    iput p2, p0, Lcom/xiaomi/micloudsdk/stat/GetDownloadFileUrlFailedStatParam;->httpStatusCode:I

    .line 8
    iput-object p3, p0, Lcom/xiaomi/micloudsdk/stat/GetDownloadFileUrlFailedStatParam;->exceptionName:Ljava/lang/String;

    .line 10
    iput p4, p0, Lcom/xiaomi/micloudsdk/stat/GetDownloadFileUrlFailedStatParam;->responseCode:I

    .line 12
    iput-object p5, p0, Lcom/xiaomi/micloudsdk/stat/GetDownloadFileUrlFailedStatParam;->description:Ljava/lang/String;

    .line 14
    iput-object p6, p0, Lcom/xiaomi/micloudsdk/stat/GetDownloadFileUrlFailedStatParam;->reason:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static createGetDownloadFileUrlFailedStatParam(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/stat/GetDownloadFileUrlFailedStatParam;
    .registers 12

    .line 1
    invoke-static {p3}, Lcom/xiaomi/micloudsdk/stat/GetDownloadFileUrlFailedStatParam$GetDownloadFileUrlFailedResponse;->createGetDownloadFileUrlFailedResponse(Ljava/lang/String;)Lcom/xiaomi/micloudsdk/stat/GetDownloadFileUrlFailedStatParam$GetDownloadFileUrlFailedResponse;

    .line 4
    move-result-object p3

    .line 5
    new-instance v7, Lcom/xiaomi/micloudsdk/stat/GetDownloadFileUrlFailedStatParam;

    .line 7
    iget v4, p3, Lcom/xiaomi/micloudsdk/stat/GetDownloadFileUrlFailedStatParam$GetDownloadFileUrlFailedResponse;->responseCode:I

    .line 9
    iget-object v5, p3, Lcom/xiaomi/micloudsdk/stat/GetDownloadFileUrlFailedStatParam$GetDownloadFileUrlFailedResponse;->description:Ljava/lang/String;

    .line 11
    iget-object v6, p3, Lcom/xiaomi/micloudsdk/stat/GetDownloadFileUrlFailedStatParam$GetDownloadFileUrlFailedResponse;->reason:Ljava/lang/String;

    .line 13
    move-object v0, v7

    .line 14
    move-object v1, p0

    .line 15
    move v2, p1

    .line 16
    move-object v3, p2

    .line 17
    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/micloudsdk/stat/GetDownloadFileUrlFailedStatParam;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 20
    return-object v7
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    const-string v0, "GetDownloadFileUrlFailedStatParam{url=\'"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/stat/GetDownloadFileUrlFailedStatParam;->url:Ljava/lang/String;

    .line 9
    const/16 v2, 0x27

    .line 11
    const-string v3, ", httpStatusCode="

    .line 13
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 16
    iget v1, p0, Lcom/xiaomi/micloudsdk/stat/GetDownloadFileUrlFailedStatParam;->httpStatusCode:I

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", exceptionName=\'"

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/stat/GetDownloadFileUrlFailedStatParam;->exceptionName:Ljava/lang/String;

    .line 28
    const-string v3, ", responseCode="

    .line 30
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 33
    iget v1, p0, Lcom/xiaomi/micloudsdk/stat/GetDownloadFileUrlFailedStatParam;->responseCode:I

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    const-string v1, ", description=\'"

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/stat/GetDownloadFileUrlFailedStatParam;->description:Ljava/lang/String;

    .line 45
    const-string v3, ", reason=\'"

    .line 47
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/stat/GetDownloadFileUrlFailedStatParam;->reason:Ljava/lang/String;

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    const/16 v1, 0x7d

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    return-object v0
.end method
