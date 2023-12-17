.class public Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;
.super Ljava/lang/Object;
.source "FetchRecordsByIndexOperation.java"

# interfaces
.implements Lcom/xiaomi/opensdk/pdc/SyncOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;
    }
.end annotation


# instance fields
.field private final mBeginKey:Lorg/json/JSONObject;

.field private final mEndKey:Lorg/json/JSONObject;

.field private final mIndexName:Ljava/lang/String;

.field private final mIsReverse:Z

.field private final mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_10

    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    iput-object p3, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->mBeginKey:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->mEndKey:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->mIndexName:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->mIsReverse:Z

    return-void

    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null parameters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public execute()Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    invoke-interface {v0, p0}, Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;->fetchRecordsByIndex(Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;)Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic execute()Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;
    .registers 2

    invoke-virtual {p0}, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->execute()Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;

    move-result-object v0

    return-object v0
.end method

.method public getBeginKey()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->mBeginKey:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getEndKey()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->mEndKey:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getIndexName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->mIndexName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerConnector()Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    return-object v0
.end method

.method public isReverse()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->mIsReverse:Z

    return v0
.end method
