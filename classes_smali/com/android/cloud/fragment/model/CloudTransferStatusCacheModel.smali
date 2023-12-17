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
.field private static downloadObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;",
            ">;"
        }
    .end annotation
.end field

.field private static downloadSussessInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/cloud/bean/TransferState;",
            ">;"
        }
    .end annotation
.end field

.field private static downloadWorkingInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/cloud/bean/TransferState;",
            ">;"
        }
    .end annotation
.end field

.field private static hasInited:Z

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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->downloadWorkingInfo:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->downloadSussessInfo:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->uploadWorkingInfo:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->uploadSussessInfo:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->transferInfo:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->downloadObservers:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->uploadObservers:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private clearAll()V
    .registers 2

    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->downloadWorkingInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->downloadSussessInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->uploadWorkingInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->uploadSussessInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->downloadObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->uploadObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->transferInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public static getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;
    .registers 1

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$Singleton;->access$000()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearTransferInfo(Lcom/android/cloud/bean/TransferState$Status;)V
    .registers 3

    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->transferInfo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_d

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

    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->transferInfo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_4c

    if-eqz p2, :cond_4c

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4c

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_16
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2a
    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_2a

    :cond_4c
    return-void
.end method

.method public destroy()V
    .registers 2

    invoke-direct {p0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->clearAll()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->hasInited:Z

    return-void
.end method

.method public getCloudFileTransState(Ljava/lang/String;)Lcom/android/cloud/bean/TransferState;
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getDownloadFileTransState(Ljava/lang/String;)Lcom/android/cloud/bean/TransferState;

    move-result-object v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getUploadFileTransState(Ljava/lang/String;)Lcom/android/cloud/bean/TransferState;

    move-result-object p1

    return-object p1

    :cond_f
    return-object v0
.end method

.method public getDownloadFileTransState(Ljava/lang/String;)Lcom/android/cloud/bean/TransferState;
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    :cond_8
    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->downloadSussessInfo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cloud/bean/TransferState;

    if-nez v0, :cond_1b

    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->downloadWorkingInfo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/cloud/bean/TransferState;

    :cond_1b
    return-object v0
.end method

.method public getDownloadWorkingFileTransState(Ljava/lang/String;)Lcom/android/cloud/bean/TransferState;
    .registers 3

    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->downloadWorkingInfo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/cloud/bean/TransferState;

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

    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->transferInfo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public getUploadFileTransState(Ljava/lang/String;)Lcom/android/cloud/bean/TransferState;
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    :cond_8
    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->uploadSussessInfo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cloud/bean/TransferState;

    if-nez v0, :cond_1b

    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->uploadWorkingInfo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/cloud/bean/TransferState;

    :cond_1b
    return-object v0
.end method

.method public init()V
    .registers 4

    invoke-direct {p0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->clearAll()V

    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->transferInfo:Ljava/util/Map;

    sget-object v1, Lcom/android/cloud/bean/TransferState$Status;->Download_Loading:Lcom/android/cloud/bean/TransferState$Status;

    sget-object v2, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->downloadWorkingInfo:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->transferInfo:Ljava/util/Map;

    sget-object v1, Lcom/android/cloud/bean/TransferState$Status;->Download_Finish:Lcom/android/cloud/bean/TransferState$Status;

    sget-object v2, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->downloadSussessInfo:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->transferInfo:Ljava/util/Map;

    sget-object v1, Lcom/android/cloud/bean/TransferState$Status;->Upload_Loading:Lcom/android/cloud/bean/TransferState$Status;

    sget-object v2, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->uploadWorkingInfo:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->transferInfo:Ljava/util/Map;

    sget-object v1, Lcom/android/cloud/bean/TransferState$Status;->Upload_Finish:Lcom/android/cloud/bean/TransferState$Status;

    sget-object v2, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->uploadSussessInfo:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->hasInited:Z

    return-void
.end method

.method public notifyCloudDownloadStatusChanged(Z)V
    .registers 4

    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->downloadObservers:Ljava/util/List;

    if-eqz v0, :cond_24

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_24

    sget-boolean v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->hasInited:Z

    if-eqz v0, :cond_24

    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->downloadObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;

    invoke-interface {v1, p1}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;->onCloudStatusChanged(Z)V

    goto :goto_14

    :cond_24
    return-void
.end method

.method public notifyCloudUploadStatusChanged(Z)V
    .registers 4

    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->uploadObservers:Ljava/util/List;

    if-eqz v0, :cond_24

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_24

    sget-boolean v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->hasInited:Z

    if-eqz v0, :cond_24

    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->uploadObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;

    invoke-interface {v1, p1}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;->onCloudStatusChanged(Z)V

    goto :goto_14

    :cond_24
    return-void
.end method

.method public registerDownloadObservers(Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;)V
    .registers 3

    if-eqz p1, :cond_13

    sget-boolean v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->hasInited:Z

    if-eqz v0, :cond_13

    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->downloadObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->downloadObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    return-void
.end method

.method public registerUploadObservers(Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;)V
    .registers 3

    if-eqz p1, :cond_13

    sget-boolean v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->hasInited:Z

    if-eqz v0, :cond_13

    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->uploadObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->uploadObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    return-void
.end method

.method public unregisterDownloadObservers(Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;)V
    .registers 3

    if-eqz p1, :cond_b

    sget-boolean v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->hasInited:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->downloadObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_b
    return-void
.end method

.method public unregisterUploadObservers(Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;)V
    .registers 3

    if-eqz p1, :cond_b

    sget-boolean v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->hasInited:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->uploadObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_b
    return-void
.end method
