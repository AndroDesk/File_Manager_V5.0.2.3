.class Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;
.super Lcom/micloud/midrive/task/BaseTask$RunTaskStep;
.source "SyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/task/SyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncTaskStep"
.end annotation


# static fields
.field private static final CHECK_LOCAL_FILE:Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;

.field private static final HANDLE_SYNC_FILE:Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;

.field private static final REQUEST_SYNC_FILE_INFO:Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;

.field private static final UPDATE_SYNCED_STATUS:Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;

    .line 3
    const-string v1, "REQUEST_SYNC_FILE_INFO"

    .line 5
    invoke-direct {v0, v1}, Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;-><init>(Ljava/lang/String;)V

    .line 8
    sput-object v0, Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;->REQUEST_SYNC_FILE_INFO:Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;

    .line 10
    new-instance v0, Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;

    .line 12
    const-string v1, "UPDATE_SYNCED_STATUS"

    .line 14
    invoke-direct {v0, v1}, Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;-><init>(Ljava/lang/String;)V

    .line 17
    sput-object v0, Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;->UPDATE_SYNCED_STATUS:Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;

    .line 19
    new-instance v0, Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;

    .line 21
    const-string v1, "CHECK_LOCAL_FILE"

    .line 23
    invoke-direct {v0, v1}, Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;-><init>(Ljava/lang/String;)V

    .line 26
    sput-object v0, Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;->CHECK_LOCAL_FILE:Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;

    .line 28
    new-instance v0, Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;

    .line 30
    const-string v1, "HANDLE_SYNC_FILE"

    .line 32
    invoke-direct {v0, v1}, Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;-><init>(Ljava/lang/String;)V

    .line 35
    sput-object v0, Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;->HANDLE_SYNC_FILE:Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/task/BaseTask$RunTaskStep;-><init>(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic access$000()Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;
    .registers 1

    .line 1
    sget-object v0, Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;->REQUEST_SYNC_FILE_INFO:Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;

    .line 3
    return-object v0
.end method

.method public static synthetic access$100()Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;
    .registers 1

    .line 1
    sget-object v0, Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;->UPDATE_SYNCED_STATUS:Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;

    .line 3
    return-object v0
.end method

.method public static synthetic access$200()Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;
    .registers 1

    .line 1
    sget-object v0, Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;->CHECK_LOCAL_FILE:Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;

    .line 3
    return-object v0
.end method

.method public static synthetic access$300()Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;
    .registers 1

    .line 1
    sget-object v0, Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;->HANDLE_SYNC_FILE:Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;

    .line 3
    return-object v0
.end method
