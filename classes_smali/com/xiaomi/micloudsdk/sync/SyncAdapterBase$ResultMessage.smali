.class Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ResultMessage;
.super Ljava/lang/Object;
.source "SyncAdapterBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultMessage"
.end annotation


# instance fields
.field private final miSyncResult:Ljava/lang/Object;

.field private final resultMessageField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ResultMessage;->miSyncResult:Ljava/lang/Object;

    iput-object p2, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ResultMessage;->resultMessageField:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ResultMessage;->resultMessageField:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ResultMessage;->miSyncResult:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "get resultMessageField: Please file a bug to CloudService!!"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public set(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ResultMessage;->resultMessageField:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ResultMessage;->miSyncResult:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "set miSyncResult: Please file a bug to CloudService!!"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
