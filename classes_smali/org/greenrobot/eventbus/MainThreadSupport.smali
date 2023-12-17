.class public interface abstract Lorg/greenrobot/eventbus/MainThreadSupport;
.super Ljava/lang/Object;
.source "MainThreadSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/greenrobot/eventbus/MainThreadSupport$AndroidHandlerMainThreadSupport;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract createPoster(Lorg/greenrobot/eventbus/EventBus;)Lorg/greenrobot/eventbus/Poster;
.end method

.method public abstract isMainThread()Z
.end method
