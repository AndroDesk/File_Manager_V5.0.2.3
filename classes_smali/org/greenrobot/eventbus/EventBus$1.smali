.class Lorg/greenrobot/eventbus/EventBus$1;
.super Ljava/lang/ThreadLocal;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/greenrobot/eventbus/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lorg/greenrobot/eventbus/EventBus$PostingThreadState;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/greenrobot/eventbus/EventBus;


# direct methods
.method public constructor <init>(Lorg/greenrobot/eventbus/EventBus;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/greenrobot/eventbus/EventBus$1;->this$0:Lorg/greenrobot/eventbus/EventBus;

    .line 3
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/greenrobot/eventbus/EventBus$1;->initialValue()Lorg/greenrobot/eventbus/EventBus$PostingThreadState;

    move-result-object v0

    return-object v0
.end method

.method public initialValue()Lorg/greenrobot/eventbus/EventBus$PostingThreadState;
    .registers 2

    .line 2
    new-instance v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;

    invoke-direct {v0}, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;-><init>()V

    return-object v0
.end method
