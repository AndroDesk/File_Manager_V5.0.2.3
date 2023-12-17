.class public Lorg/greenrobot/eventbus/MainThreadSupport$AndroidHandlerMainThreadSupport;
.super Ljava/lang/Object;
.source "MainThreadSupport.java"

# interfaces
.implements Lorg/greenrobot/eventbus/MainThreadSupport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/greenrobot/eventbus/MainThreadSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AndroidHandlerMainThreadSupport"
.end annotation


# instance fields
.field private final looper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/greenrobot/eventbus/MainThreadSupport$AndroidHandlerMainThreadSupport;->looper:Landroid/os/Looper;

    .line 6
    return-void
.end method


# virtual methods
.method public createPoster(Lorg/greenrobot/eventbus/EventBus;)Lorg/greenrobot/eventbus/Poster;
    .registers 5

    .line 1
    new-instance v0, Lorg/greenrobot/eventbus/HandlerPoster;

    .line 3
    iget-object v1, p0, Lorg/greenrobot/eventbus/MainThreadSupport$AndroidHandlerMainThreadSupport;->looper:Landroid/os/Looper;

    .line 5
    const/16 v2, 0xa

    .line 7
    invoke-direct {v0, p1, v1, v2}, Lorg/greenrobot/eventbus/HandlerPoster;-><init>(Lorg/greenrobot/eventbus/EventBus;Landroid/os/Looper;I)V

    .line 10
    return-object v0
.end method

.method public isMainThread()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/greenrobot/eventbus/MainThreadSupport$AndroidHandlerMainThreadSupport;->looper:Landroid/os/Looper;

    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 6
    move-result-object v1

    .line 7
    if-ne v0, v1, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    return v0
.end method
