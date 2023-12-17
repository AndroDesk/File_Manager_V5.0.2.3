.class public Lcom/miui/maml/data/ContentProviderBinder$QueryHandler$CatchingWorkerHandler;
.super Lcom/miui/maml/data/AsyncQueryHandler$WorkerHandler;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/ContentProviderBinder$QueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CatchingWorkerHandler"
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/miui/maml/data/ContentProviderBinder$QueryHandler;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/ContentProviderBinder$QueryHandler;Landroid/os/Looper;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/miui/maml/data/ContentProviderBinder$QueryHandler$CatchingWorkerHandler;->this$1:Lcom/miui/maml/data/ContentProviderBinder$QueryHandler;

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/AsyncQueryHandler$WorkerHandler;-><init>(Lcom/miui/maml/data/AsyncQueryHandler;Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 1
    const-string v0, "Exception on background worker thread"

    .line 3
    const-string v1, "ContentProviderBinder"

    .line 5
    :try_start_4
    invoke-super {p0, p1}, Lcom/miui/maml/data/AsyncQueryHandler$WorkerHandler;->handleMessage(Landroid/os/Message;)V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_4 .. :try_end_7} :catch_12
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_7} :catch_d
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_4 .. :try_end_7} :catch_8

    .line 8
    goto :goto_16

    .line 9
    :catch_8
    move-exception p1

    .line 10
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    goto :goto_16

    .line 14
    :catch_d
    move-exception p1

    .line 15
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    goto :goto_16

    .line 19
    :catch_12
    move-exception p1

    .line 20
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    :goto_16
    return-void
.end method
