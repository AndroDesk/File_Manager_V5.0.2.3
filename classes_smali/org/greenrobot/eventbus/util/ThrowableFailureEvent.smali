.class public Lorg/greenrobot/eventbus/util/ThrowableFailureEvent;
.super Ljava/lang/Object;
.source "ThrowableFailureEvent.java"

# interfaces
.implements Lorg/greenrobot/eventbus/util/HasExecutionScope;


# instance fields
.field private executionContext:Ljava/lang/Object;

.field public final suppressErrorUi:Z

.field public final throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/greenrobot/eventbus/util/ThrowableFailureEvent;->throwable:Ljava/lang/Throwable;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lorg/greenrobot/eventbus/util/ThrowableFailureEvent;->suppressErrorUi:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Z)V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lorg/greenrobot/eventbus/util/ThrowableFailureEvent;->throwable:Ljava/lang/Throwable;

    .line 6
    iput-boolean p2, p0, Lorg/greenrobot/eventbus/util/ThrowableFailureEvent;->suppressErrorUi:Z

    return-void
.end method


# virtual methods
.method public getExecutionScope()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/eventbus/util/ThrowableFailureEvent;->executionContext:Ljava/lang/Object;

    .line 3
    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/eventbus/util/ThrowableFailureEvent;->throwable:Ljava/lang/Throwable;

    .line 3
    return-object v0
.end method

.method public isSuppressErrorUi()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/greenrobot/eventbus/util/ThrowableFailureEvent;->suppressErrorUi:Z

    .line 3
    return v0
.end method

.method public setExecutionScope(Ljava/lang/Object;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/greenrobot/eventbus/util/ThrowableFailureEvent;->executionContext:Ljava/lang/Object;

    .line 3
    return-void
.end method
