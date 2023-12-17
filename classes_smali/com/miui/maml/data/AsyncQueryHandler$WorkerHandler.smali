.class public Lcom/miui/maml/data/AsyncQueryHandler$WorkerHandler;
.super Landroid/os/Handler;
.source "AsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/AsyncQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WorkerHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/data/AsyncQueryHandler;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/AsyncQueryHandler;Landroid/os/Looper;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerHandler;->this$0:Lcom/miui/maml/data/AsyncQueryHandler;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerHandler;->this$0:Lcom/miui/maml/data/AsyncQueryHandler;

    .line 3
    iget-object v0, v0, Lcom/miui/maml/data/AsyncQueryHandler;->mResolver:Ljava/lang/ref/WeakReference;

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    move-object v1, v0

    .line 10
    check-cast v1, Landroid/content/ContentResolver;

    .line 12
    if-nez v1, :cond_e

    .line 14
    return-void

    .line 15
    :cond_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 17
    check-cast v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;

    .line 19
    iget v7, p1, Landroid/os/Message;->what:I

    .line 21
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 23
    const/4 v3, 0x1

    .line 24
    if-eq v2, v3, :cond_52

    .line 26
    const/4 v3, 0x2

    .line 27
    if-eq v2, v3, :cond_47

    .line 29
    const/4 v3, 0x3

    .line 30
    if-eq v2, v3, :cond_34

    .line 32
    const/4 v3, 0x4

    .line 33
    if-eq v2, v3, :cond_23

    .line 35
    goto :goto_71

    .line 36
    :cond_23
    iget-object v2, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 38
    iget-object v3, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 40
    iget-object v4, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 42
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 45
    move-result v1

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v1

    .line 50
    iput-object v1, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    .line 52
    goto :goto_71

    .line 53
    :cond_34
    iget-object v2, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 55
    iget-object v3, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    .line 57
    iget-object v4, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 59
    iget-object v5, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 61
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 64
    move-result v1

    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    move-result-object v1

    .line 69
    iput-object v1, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    .line 71
    goto :goto_71

    .line 72
    :cond_47
    iget-object v2, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 74
    iget-object v3, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    .line 76
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 79
    move-result-object v1

    .line 80
    iput-object v1, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    .line 82
    goto :goto_71

    .line 83
    :cond_52
    :try_start_52
    iget-object v2, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 85
    iget-object v3, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->projection:[Ljava/lang/String;

    .line 87
    iget-object v4, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 89
    iget-object v5, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 91
    iget-object v6, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    .line 93
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 96
    move-result-object v1

    .line 97
    if-eqz v1, :cond_6f

    .line 99
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_65} :catch_66

    .line 102
    goto :goto_6f

    .line 103
    :catch_66
    move-exception v1

    .line 104
    const-string v2, "AsyncQuery"

    .line 106
    const-string v3, "Exception thrown during handling EVENT_ARG_QUERY"

    .line 108
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    const/4 v1, 0x0

    .line 112
    :cond_6f
    :goto_6f
    iput-object v1, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    .line 114
    :goto_71
    iget-object v1, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    .line 116
    invoke-virtual {v1, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 119
    move-result-object v1

    .line 120
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 122
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 124
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 126
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 129
    return-void
.end method
