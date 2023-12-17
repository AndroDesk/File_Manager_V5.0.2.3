.class final Lorg/greenrobot/eventbus/EventBus$PostingThreadState;
.super Ljava/lang/Object;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/greenrobot/eventbus/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PostingThreadState"
.end annotation


# instance fields
.field public canceled:Z

.field public event:Ljava/lang/Object;

.field public final eventQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public isMainThread:Z

.field public isPosting:Z

.field public subscription:Lorg/greenrobot/eventbus/Subscription;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->eventQueue:Ljava/util/List;

    .line 11
    return-void
.end method
