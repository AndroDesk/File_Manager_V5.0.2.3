.class public Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;
.super Lorg/greenrobot/eventbus/meta/AbstractSubscriberInfo;
.source "SimpleSubscriberInfo.java"


# instance fields
.field private final methodInfos:[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/greenrobot/eventbus/meta/AbstractSubscriberInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Z)V

    iput-object p3, p0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;->methodInfos:[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    return-void
.end method


# virtual methods
.method public declared-synchronized getSubscriberMethods()[Lorg/greenrobot/eventbus/SubscriberMethod;
    .registers 11

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;->methodInfos:[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    array-length v0, v0

    new-array v1, v0, [Lorg/greenrobot/eventbus/SubscriberMethod;

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_21

    iget-object v3, p0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;->methodInfos:[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    aget-object v3, v3, v2

    iget-object v5, v3, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;->methodName:Ljava/lang/String;

    iget-object v6, v3, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;->eventType:Ljava/lang/Class;

    iget-object v7, v3, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;->threadMode:Lorg/greenrobot/eventbus/ThreadMode;

    iget v8, v3, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;->priority:I

    iget-boolean v9, v3, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;->sticky:Z

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lorg/greenrobot/eventbus/meta/AbstractSubscriberInfo;->createSubscriberMethod(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;IZ)Lorg/greenrobot/eventbus/SubscriberMethod;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_23

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_21
    monitor-exit p0

    return-object v1

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method