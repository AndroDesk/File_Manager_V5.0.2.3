.class public interface abstract Lcom/xiaomi/micloudsdk/stat/IMiCloudDownloadFileNetEventStatCallback;
.super Ljava/lang/Object;
.source "IMiCloudDownloadFileNetEventStatCallback.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract isGetDownloadFileRequestUrl(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract onAddDownloadFileFailedEvent(Lcom/xiaomi/micloudsdk/stat/DownloadFileFailedStatParam;)V
.end method

.method public abstract onAddGetDownloadFileUrlsFailedEvent(Lcom/xiaomi/micloudsdk/stat/GetDownloadFileUrlFailedStatParam;)V
.end method
