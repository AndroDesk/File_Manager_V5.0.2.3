.class public interface abstract Lcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;
.super Ljava/lang/Object;
.source "PdcSyncer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/opensdk/pdc/PdcSyncer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UploadClient"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract getNextLocalRecord()Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Lcom/xiaomi/opensdk/pdc/SyncRecord;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onBeginUpload()Z
.end method

.method public abstract onEndUpload()V
.end method

.method public abstract onInvalidRecord(Ljava/lang/Long;Lcom/xiaomi/opensdk/pdc/SyncRecord;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;)Lcom/xiaomi/opensdk/pdc/SyncRecord;
.end method

.method public abstract onRecordUploaded(Ljava/lang/Long;Lcom/xiaomi/opensdk/pdc/SyncRecord;Lcom/xiaomi/opensdk/pdc/SyncRecord;)V
.end method

.method public abstract onServiceUnavailable(J)V
.end method

.method public abstract onUploadConflict(Ljava/lang/Long;Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;Lcom/xiaomi/opensdk/pdc/SyncRecord;Lcom/xiaomi/opensdk/pdc/SyncRecord;)Lcom/xiaomi/opensdk/pdc/SyncRecord;
.end method
