.class public Lcom/xiaomi/opensdk/pdc/FetchRecordOperation;
.super Ljava/lang/Object;
.source "FetchRecordOperation.java"

# interfaces
.implements Lcom/xiaomi/opensdk/pdc/SyncOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;
    }
.end annotation


# instance fields
.field private final mId:Ljava/lang/String;

.field private final mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    iput-object p2, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation;->mId:Ljava/lang/String;

    return-void

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null parameters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public execute()Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    invoke-interface {v0, p0}, Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;->fetchRecord(Lcom/xiaomi/opensdk/pdc/FetchRecordOperation;)Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic execute()Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;
    .registers 2

    invoke-virtual {p0}, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation;->execute()Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getServerConnector()Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    return-object v0
.end method
