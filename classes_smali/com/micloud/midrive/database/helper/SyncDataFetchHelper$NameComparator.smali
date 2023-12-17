.class Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$NameComparator;
.super Ljava/lang/Object;
.source "SyncDataFetchHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/database/helper/SyncDataFetchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NameComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final asc:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$NameComparator;->asc:Z

    return-void
.end method


# virtual methods
.method public compare(Lcom/micloud/midrive/infos/SyncTotalFileInfo;Lcom/micloud/midrive/infos/SyncTotalFileInfo;)I
    .registers 4

    iget-object v0, p1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_d

    :cond_9
    iget-object p1, p1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-object p1, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    :goto_d
    iget-object v0, p2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    move-result-object p2

    goto :goto_1a

    :cond_16
    iget-object p2, p2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-object p2, p2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    :goto_1a
    iget-boolean v0, p0, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$NameComparator;->asc:Z

    if-eqz v0, :cond_23

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    goto :goto_27

    :cond_23
    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    :goto_27
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    check-cast p2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    invoke-virtual {p0, p1, p2}, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$NameComparator;->compare(Lcom/micloud/midrive/infos/SyncTotalFileInfo;Lcom/micloud/midrive/infos/SyncTotalFileInfo;)I

    move-result p1

    return p1
.end method
