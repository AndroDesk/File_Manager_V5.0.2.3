.class public Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;
.super Ljava/lang/Object;
.source "FetchChildrenOperation.java"

# interfaces
.implements Lcom/xiaomi/opensdk/pdc/SyncOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation$Result;
    }
.end annotation


# instance fields
.field private final mCursor:Ljava/lang/String;

.field private final mParentId:Ljava/lang/String;

.field private final mParentType:Ljava/lang/String;

.field private final mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;


# direct methods
.method public constructor <init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    if-eqz p1, :cond_e

    .line 6
    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    .line 8
    iput-object p2, p0, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;->mParentType:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;->mParentId:Ljava/lang/String;

    .line 12
    iput-object p4, p0, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;->mCursor:Ljava/lang/String;

    .line 14
    return-void

    .line 15
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 17
    const-string p2, "null parameters"

    .line 19
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    throw p1
.end method


# virtual methods
.method public execute()Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation$Result;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    invoke-interface {v0, p0}, Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;->fetchChildren(Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;)Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation$Result;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic execute()Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;->execute()Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation$Result;

    move-result-object v0

    return-object v0
.end method

.method public getCursor()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;->mCursor:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getParentId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;->mParentId:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getParentType()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;->mParentType:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getServerConnector()Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    .line 3
    return-object v0
.end method
