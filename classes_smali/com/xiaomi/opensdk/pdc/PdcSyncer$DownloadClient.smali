.class public interface abstract Lcom/xiaomi/opensdk/pdc/PdcSyncer$DownloadClient;
.super Ljava/lang/Object;
.source "PdcSyncer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/opensdk/pdc/PdcSyncer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownloadClient"
.end annotation


# virtual methods
.method public abstract onBeginDownload()Z
.end method

.method public abstract onEndDownload()V
.end method

.method public abstract onRecordDownloaded(Lcom/xiaomi/opensdk/pdc/SyncRecord;)Z
.end method

.method public abstract onResync()V
.end method

.method public abstract onServiceUnavailable(J)V
.end method
