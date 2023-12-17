.class public Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;
.super Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;
.source "FetchRecordsByIndexOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field private final mBeginKey:Lorg/json/JSONObject;

.field private final mHasMore:Z

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/opensdk/pdc/SyncRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IJLjava/lang/String;Lorg/json/JSONObject;ZLjava/util/ArrayList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;",
            "IJ",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Z",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/opensdk/pdc/SyncRecord;",
            ">;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p7}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IJLjava/lang/String;)V

    iput-object p8, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;->mBeginKey:Lorg/json/JSONObject;

    iput-boolean p9, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;->mHasMore:Z

    iput-object p10, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;->mRecords:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getBeginKey()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;->mBeginKey:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getRecordAt(I)Lcom/xiaomi/opensdk/pdc/SyncRecord;
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/opensdk/pdc/SyncRecord;

    return-object p1
.end method

.method public getRecordCount()I
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;->mRecords:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_a
    return v0
.end method

.method public hasMore()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;->mHasMore:Z

    return v0
.end method
