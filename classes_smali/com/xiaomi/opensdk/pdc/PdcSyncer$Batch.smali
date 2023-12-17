.class Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;
.super Ljava/lang/Object;
.source "PdcSyncer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/opensdk/pdc/PdcSyncer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Batch"
.end annotation


# instance fields
.field public batchOp:Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;

.field public localIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public localRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/opensdk/pdc/SyncRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;

    .line 6
    invoke-direct {v0, p1}, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;-><init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;)V

    .line 9
    iput-object v0, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->batchOp:Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    .line 13
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->localRecords:Ljava/util/ArrayList;

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    .line 20
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->localIds:Ljava/util/ArrayList;

    .line 25
    return-void
.end method
