.class public Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;
.super Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;
.source "DownloadOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/opensdk/pdc/DownloadOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field private mHasMore:Z

.field private mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/opensdk/pdc/SyncRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncToken:Ljava/lang/String;

.field private mWatermark:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IJLjava/lang/String;JLjava/lang/String;ZLjava/util/ArrayList;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;",
            "IJ",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/opensdk/pdc/SyncRecord;",
            ">;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p7}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IJLjava/lang/String;)V

    iput-wide p8, p0, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->mWatermark:J

    iput-object p10, p0, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->mSyncToken:Ljava/lang/String;

    iput-boolean p11, p0, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->mHasMore:Z

    iput-object p12, p0, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->mRecords:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getRecordAt(I)Lcom/xiaomi/opensdk/pdc/SyncRecord;
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/opensdk/pdc/SyncRecord;

    return-object p1
.end method

.method public getRecordCount()I
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->mRecords:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_a
    return v0
.end method

.method public getSyncToken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->mSyncToken:Ljava/lang/String;

    return-object v0
.end method

.method public getWatermark()J
    .registers 3

    iget-wide v0, p0, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->mWatermark:J

    return-wide v0
.end method

.method public hasMore()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->mHasMore:Z

    return v0
.end method
