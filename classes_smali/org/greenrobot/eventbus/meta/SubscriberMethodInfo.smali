.class public Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;
.super Ljava/lang/Object;
.source "SubscriberMethodInfo.java"


# instance fields
.field public final eventType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final methodName:Ljava/lang/String;

.field public final priority:I

.field public final sticky:Z

.field public final threadMode:Lorg/greenrobot/eventbus/ThreadMode;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 7
    sget-object v3, Lorg/greenrobot/eventbus/ThreadMode;->POSTING:Lorg/greenrobot/eventbus/ThreadMode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/greenrobot/eventbus/ThreadMode;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 8
    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/greenrobot/eventbus/ThreadMode;",
            "IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;->methodName:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;->threadMode:Lorg/greenrobot/eventbus/ThreadMode;

    .line 4
    iput-object p2, p0, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;->eventType:Ljava/lang/Class;

    .line 5
    iput p4, p0, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;->priority:I

    .line 6
    iput-boolean p5, p0, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;->sticky:Z

    return-void
.end method
