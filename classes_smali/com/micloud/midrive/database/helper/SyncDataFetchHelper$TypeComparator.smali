.class Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$TypeComparator;
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
    name = "TypeComparator"
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

    iput-boolean p1, p0, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$TypeComparator;->asc:Z

    return-void
.end method


# virtual methods
.method public compare(Lcom/micloud/midrive/infos/SyncTotalFileInfo;Lcom/micloud/midrive/infos/SyncTotalFileInfo;)I
    .registers 4

    iget-object p1, p1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    const-string v0, ""

    if-eqz p1, :cond_9

    iget-object p1, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->type:Ljava/lang/String;

    goto :goto_a

    :cond_9
    move-object p1, v0

    :goto_a
    iget-object p2, p2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    if-eqz p2, :cond_10

    iget-object v0, p2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->type:Ljava/lang/String;

    :cond_10
    iget-boolean p2, p0, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$TypeComparator;->asc:Z

    if-eqz p2, :cond_19

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    goto :goto_1d

    :cond_19
    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    :goto_1d
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    check-cast p2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    invoke-virtual {p0, p1, p2}, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$TypeComparator;->compare(Lcom/micloud/midrive/infos/SyncTotalFileInfo;Lcom/micloud/midrive/infos/SyncTotalFileInfo;)I

    move-result p1

    return p1
.end method
