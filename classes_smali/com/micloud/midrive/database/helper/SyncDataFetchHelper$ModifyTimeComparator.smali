.class Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$ModifyTimeComparator;
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
    name = "ModifyTimeComparator"
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
.method public constructor <init>(Z)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$ModifyTimeComparator;->asc:Z

    .line 6
    return-void
.end method


# virtual methods
.method public compare(Lcom/micloud/midrive/infos/SyncTotalFileInfo;Lcom/micloud/midrive/infos/SyncTotalFileInfo;)I
    .registers 6

    .line 2
    iget-object v0, p1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getModifyTime()J

    move-result-wide v0

    goto :goto_d

    :cond_9
    iget-object p1, p1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-wide v0, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->modifyTime:J

    .line 3
    :goto_d
    iget-object p1, p2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getModifyTime()J

    move-result-wide p1

    goto :goto_1a

    :cond_16
    iget-object p1, p2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-wide p1, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->modifyTime:J

    .line 4
    :goto_1a
    iget-boolean v2, p0, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$ModifyTimeComparator;->asc:Z

    invoke-static {v0, v1, p1, p2, v2}, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper;->access$000(JJZ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    check-cast p2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    invoke-virtual {p0, p1, p2}, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$ModifyTimeComparator;->compare(Lcom/micloud/midrive/infos/SyncTotalFileInfo;Lcom/micloud/midrive/infos/SyncTotalFileInfo;)I

    move-result p1

    return p1
.end method
