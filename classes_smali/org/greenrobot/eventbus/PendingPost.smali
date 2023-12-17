.class final Lorg/greenrobot/eventbus/PendingPost;
.super Ljava/lang/Object;
.source "PendingPost.java"


# static fields
.field private static final pendingPostPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/greenrobot/eventbus/PendingPost;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public event:Ljava/lang/Object;

.field public next:Lorg/greenrobot/eventbus/PendingPost;

.field public subscription:Lorg/greenrobot/eventbus/Subscription;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sput-object v0, Lorg/greenrobot/eventbus/PendingPost;->pendingPostPool:Ljava/util/List;

    .line 8
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lorg/greenrobot/eventbus/Subscription;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/greenrobot/eventbus/PendingPost;->event:Ljava/lang/Object;

    .line 6
    iput-object p2, p0, Lorg/greenrobot/eventbus/PendingPost;->subscription:Lorg/greenrobot/eventbus/Subscription;

    .line 8
    return-void
.end method

.method public static obtainPendingPost(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)Lorg/greenrobot/eventbus/PendingPost;
    .registers 4

    .line 1
    sget-object v0, Lorg/greenrobot/eventbus/PendingPost;->pendingPostPool:Ljava/util/List;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 7
    move-result v1

    .line 8
    if-lez v1, :cond_1a

    .line 10
    add-int/lit8 v1, v1, -0x1

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lorg/greenrobot/eventbus/PendingPost;

    .line 18
    iput-object p1, v1, Lorg/greenrobot/eventbus/PendingPost;->event:Ljava/lang/Object;

    .line 20
    iput-object p0, v1, Lorg/greenrobot/eventbus/PendingPost;->subscription:Lorg/greenrobot/eventbus/Subscription;

    .line 22
    const/4 p0, 0x0

    .line 23
    iput-object p0, v1, Lorg/greenrobot/eventbus/PendingPost;->next:Lorg/greenrobot/eventbus/PendingPost;

    .line 25
    monitor-exit v0

    .line 26
    return-object v1

    .line 27
    :cond_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_21

    .line 28
    new-instance v0, Lorg/greenrobot/eventbus/PendingPost;

    .line 30
    invoke-direct {v0, p1, p0}, Lorg/greenrobot/eventbus/PendingPost;-><init>(Ljava/lang/Object;Lorg/greenrobot/eventbus/Subscription;)V

    .line 33
    return-object v0

    .line 34
    :catchall_21
    move-exception p0

    .line 35
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    .line 36
    throw p0
.end method

.method public static releasePendingPost(Lorg/greenrobot/eventbus/PendingPost;)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/greenrobot/eventbus/PendingPost;->event:Ljava/lang/Object;

    .line 4
    iput-object v0, p0, Lorg/greenrobot/eventbus/PendingPost;->subscription:Lorg/greenrobot/eventbus/Subscription;

    .line 6
    iput-object v0, p0, Lorg/greenrobot/eventbus/PendingPost;->next:Lorg/greenrobot/eventbus/PendingPost;

    .line 8
    sget-object v0, Lorg/greenrobot/eventbus/PendingPost;->pendingPostPool:Ljava/util/List;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    move-result v1

    .line 15
    const/16 v2, 0x2710

    .line 17
    if-ge v1, v2, :cond_15

    .line 19
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_15
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_17
    move-exception p0

    .line 25
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_17

    .line 26
    throw p0
.end method
