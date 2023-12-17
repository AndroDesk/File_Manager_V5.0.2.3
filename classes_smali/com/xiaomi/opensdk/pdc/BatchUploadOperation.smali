.class public Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;
.super Ljava/util/ArrayList;
.source "BatchUploadOperation.java"

# interfaces
.implements Lcom/xiaomi/opensdk/pdc/SyncOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/xiaomi/opensdk/pdc/UploadOperation;",
        ">;",
        "Lcom/xiaomi/opensdk/pdc/SyncOperation;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;)V
    .registers 3

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_8

    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null parameters"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public execute()Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    invoke-interface {v0, p0}, Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;->batchUpload(Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;)Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic execute()Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;
    .registers 2

    invoke-virtual {p0}, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;->execute()Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;

    move-result-object v0

    return-object v0
.end method
