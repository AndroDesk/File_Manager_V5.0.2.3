.class public Lcom/micloud/midrive/infos/SyncPageInfo;
.super Ljava/lang/Object;
.source "SyncPageInfo.java"


# instance fields
.field public final fileInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncCloudFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final hasMore:Z

.field public final syncToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncCloudFileInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/micloud/midrive/infos/SyncPageInfo;->hasMore:Z

    iput-object p2, p0, Lcom/micloud/midrive/infos/SyncPageInfo;->syncToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/micloud/midrive/infos/SyncPageInfo;->fileInfos:Ljava/util/List;

    return-void
.end method
