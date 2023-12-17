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

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IJLjava/lang/String;)V

    .line 4
    iput-wide p8, p0, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->mWatermark:J

    .line 6
    iput-object p10, p0, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->mSyncToken:Ljava/lang/String;

    .line 8
    iput-boolean p11, p0, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->mHasMore:Z

    .line 10
    iput-object p12, p0, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->mRecords:Ljava/util/ArrayList;

    .line 12
    return-void
.end method


# virtual methods
.method public getRecordAt(I)Lcom/xiaomi/opensdk/pdc/SyncRecord;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->mRecords:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/xiaomi/opensdk/pdc/SyncRecord;

    .line 9
    return-object p1
.end method

.method public getRecordCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->mRecords:Ljava/util/ArrayList;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_a

    .line 7
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v0

    .line 11
    :goto_a
    return v0
.end method

.method public getSyncToken()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->mSyncToken:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getWatermark()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->mWatermark:J

    .line 3
    return-wide v0
.end method

.method public hasMore()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->mHasMore:Z

    .line 3
    return v0
.end method
