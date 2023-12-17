.class public Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;
.super Ljava/lang/Object;
.source "CloudTransferStatusCacheModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;,
        Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$Singleton;
    }
.end annotation


# static fields
.field private static downloadObservers:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;",
            ">;"
        }
    .end annotation
.end field

.field private static downloadSussessInfo:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/cloud/bean/TransferState;",
            ">;"
        }
    .end annotation
.end field

.field private static downloadWorkingInfo:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/cloud/bean/TransferState;",
            ">;"
        }
    .end annotation
.end field

.field private static hasInited:Z = false

.field private static transferInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/cloud/bean/TransferState$Status;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/cloud/bean/TransferState;",
            ">;>;"
        }
    .end annotation
.end field

.field private static uploadObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;",
            ">;"
        }
    .end annotation
.end field

.field private static uploadSussessInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/cloud/bean/TransferState;",
            ">;"
        }
    .end annotation
.end field

.field private static uploadWorkingInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/cloud/bean/TransferState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->downloadWorkingInfo:Ljava/util/Map;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    sput-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->downloadSussessInfo:Ljava/util/Map;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    sput-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->uploadWorkingInfo:Ljava/util/Map;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    .line 24
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 27
    sput-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->uploadSussessInfo:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    .line 31
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 34
    sput-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->transferInfo:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    .line 38
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    sput-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->downloadObservers:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    .line 45
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    sput-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->uploadObservers:Ljava/util/List;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private clearAll()V
    .registers 2

    .line 1
    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->downloadWorkingInfo:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 6
    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->downloadSussessInfo:Ljava/util/Map;

    .line 8
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 11
    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->uploadWorkingInfo:Ljava/util/Map;

    .line 13
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 16
    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->uploadSussessInfo:Ljava/util/Map;

    .line 18
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 21
    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->downloadObservers:Ljava/util/List;

    .line 23
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 26
    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->uploadObservers:Ljava/util/List;

    .line 28
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 31
    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->transferInfo:Ljava/util/Map;

    .line 33
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 36
    return-void
.end method

.method public static getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;
    .registers 1

    .line 1
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$Singleton;->access$000()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public clearTransferInfo(Lcom/android/cloud/bean/TransferState$Status;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->transferInfo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_d

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_d
    return-void
.end method

.method public clearTransferInfo(Lcom/android/cloud/bean/TransferState$Status;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/cloud/bean/TransferState$Status;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->transferInfo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_4c

    if-eqz p2, :cond_4c

    .line 4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4c

    .line 5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_16
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 8
    :cond_2a
    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 9
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 11
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_2a

    :cond_4c
    return-void
.end method

.method public destroy()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->clearAll()V

    .line 4
    const/4 v0, 0x0

    .line 5
    sput-boolean v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->hasInited:Z

    .line 7
    return-void
.end method

.method public getCloudFileTransState(Ljava/lang/String;)Lcom/android/cloud/bean/TransferState;
    .registers 3

    .line 1
    if-nez p1, :cond_4

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getDownloadFileTransState(Ljava/lang/String;)Lcom/android/cloud/bean/TransferState;

    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_f

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getUploadFileTransState(Ljava/lang/String;)Lcom/android/cloud/bean/TransferState;

    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_f
    return-object v0
.end method

.method public getDownloadFileTransState(Ljava/lang/String;)Lcom/android/cloud/bean/TransferState;
    .registers 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_8
    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->downloadSussessInfo:Ljava/util/Map;

    .line 11
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/cloud/bean/TransferState;

    .line 17
    if-nez v0, :cond_1b

    .line 19
    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->downloadWorkingInfo:Ljava/util/Map;

    .line 21
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    move-object v0, p1

    .line 26
    check-cast v0, Lcom/android/cloud/bean/TransferState;

    .line 28
    :cond_1b
    return-object v0
.end method

.method public getDownloadWorkingFileTransState(Ljava/lang/String;)Lcom/android/cloud/bean/TransferState;
    .registers 3

    .line 1
    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->downloadWorkingInfo:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/cloud/bean/TransferState;

    .line 9
    return-object p1
.end method

.method public getTransferInfo(Lcom/android/cloud/bean/TransferState$Status;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/cloud/bean/TransferState$Status;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/cloud/bean/TransferState;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->transferInfo:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/util/Map;

    .line 9
    return-object p1
.end method

.method public getUploadFileTransState(Ljava/lang/String;)Lcom/android/cloud/bean/TransferState;
    .registers 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_8
    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->uploadSussessInfo:Ljava/util/Map;

    .line 11
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/cloud/bean/TransferState;

    .line 17
    if-nez v0, :cond_1b

    .line 19
    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->uploadWorkingInfo:Ljava/util/Map;

    .line 21
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    move-object v0, p1

    .line 26
    check-cast v0, Lcom/android/cloud/bean/TransferState;

    .line 28
    :cond_1b
    return-object v0
.end method

.method public init()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->clearAll()V

    .line 4
    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->transferInfo:Ljava/util/Map;

    .line 6
    sget-object v1, Lcom/android/cloud/bean/TransferState$Status;->Download_Loading:Lcom/android/cloud/bean/TransferState$Status;

    .line 8
    sget-object v2, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->downloadWorkingInfo:Ljava/util/Map;

    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->transferInfo:Ljava/util/Map;

    .line 15
    sget-object v1, Lcom/android/cloud/bean/TransferState$Status;->Download_Finish:Lcom/android/cloud/bean/TransferState$Status;

    .line 17
    sget-object v2, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->downloadSussessInfo:Ljava/util/Map;

    .line 19
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->transferInfo:Ljava/util/Map;

    .line 24
    sget-object v1, Lcom/android/cloud/bean/TransferState$Status;->Upload_Loading:Lcom/android/cloud/bean/TransferState$Status;

    .line 26
    sget-object v2, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->uploadWorkingInfo:Ljava/util/Map;

    .line 28
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->transferInfo:Ljava/util/Map;

    .line 33
    sget-object v1, Lcom/android/cloud/bean/TransferState$Status;->Upload_Finish:Lcom/android/cloud/bean/TransferState$Status;

    .line 35
    sget-object v2, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->uploadSussessInfo:Ljava/util/Map;

    .line 37
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const/4 v0, 0x1

    .line 41
    sput-boolean v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->hasInited:Z

    .line 43
    return-void
.end method

.method public notifyCloudDownloadStatusChanged(Z)V
    .registers 4

    .line 1
    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->downloadObservers:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_24

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_24

    .line 11
    sget-boolean v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->hasInited:Z

    .line 13
    if-eqz v0, :cond_24

    .line 15
    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->downloadObservers:Ljava/util/List;

    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v0

    .line 21
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_24

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;

    .line 33
    invoke-interface {v1, p1}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;->onCloudStatusChanged(Z)V

    .line 36
    goto :goto_14

    .line 37
    :cond_24
    return-void
.end method

.method public notifyCloudUploadStatusChanged(Z)V
    .registers 4

    .line 1
    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->uploadObservers:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_24

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_24

    .line 11
    sget-boolean v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->hasInited:Z

    .line 13
    if-eqz v0, :cond_24

    .line 15
    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->uploadObservers:Ljava/util/List;

    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v0

    .line 21
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_24

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;

    .line 33
    invoke-interface {v1, p1}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;->onCloudStatusChanged(Z)V

    .line 36
    goto :goto_14

    .line 37
    :cond_24
    return-void
.end method

.method public registerDownloadObservers(Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_13

    .line 3
    sget-boolean v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->hasInited:Z

    .line 5
    if-eqz v0, :cond_13

    .line 7
    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->downloadObservers:Ljava/util/List;

    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_13

    .line 15
    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->downloadObservers:Ljava/util/List;

    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_13
    return-void
.end method

.method public registerUploadObservers(Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_13

    .line 3
    sget-boolean v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->hasInited:Z

    .line 5
    if-eqz v0, :cond_13

    .line 7
    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->uploadObservers:Ljava/util/List;

    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_13

    .line 15
    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->uploadObservers:Ljava/util/List;

    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_13
    return-void
.end method

.method public unregisterDownloadObservers(Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_b

    .line 3
    sget-boolean v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->hasInited:Z

    .line 5
    if-eqz v0, :cond_b

    .line 7
    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->downloadObservers:Ljava/util/List;

    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 12
    :cond_b
    return-void
.end method

.method public unregisterUploadObservers(Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_b

    .line 3
    sget-boolean v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->hasInited:Z

    .line 5
    if-eqz v0, :cond_b

    .line 7
    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->uploadObservers:Ljava/util/List;

    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 12
    :cond_b
    return-void
.end method
