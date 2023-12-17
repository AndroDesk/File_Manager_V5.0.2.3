.class public Lorg/greenrobot/eventbus/util/ErrorDialogConfig;
.super Ljava/lang/Object;
.source "ErrorDialogConfig.java"


# instance fields
.field public defaultDialogIconId:I

.field public final defaultErrorMsgId:I

.field public defaultEventTypeOnDialogClosed:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final defaultTitleId:I

.field public eventBus:Lorg/greenrobot/eventbus/EventBus;

.field public logExceptions:Z

.field public final mapping:Lorg/greenrobot/eventbus/util/ExceptionToResourceMapping;

.field public final resources:Landroid/content/res/Resources;

.field public tagForLoggingExceptions:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;II)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/greenrobot/eventbus/util/ErrorDialogConfig;->logExceptions:Z

    .line 7
    iput-object p1, p0, Lorg/greenrobot/eventbus/util/ErrorDialogConfig;->resources:Landroid/content/res/Resources;

    .line 9
    iput p2, p0, Lorg/greenrobot/eventbus/util/ErrorDialogConfig;->defaultTitleId:I

    .line 11
    iput p3, p0, Lorg/greenrobot/eventbus/util/ErrorDialogConfig;->defaultErrorMsgId:I

    .line 13
    new-instance p1, Lorg/greenrobot/eventbus/util/ExceptionToResourceMapping;

    .line 15
    invoke-direct {p1}, Lorg/greenrobot/eventbus/util/ExceptionToResourceMapping;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/greenrobot/eventbus/util/ErrorDialogConfig;->mapping:Lorg/greenrobot/eventbus/util/ExceptionToResourceMapping;

    .line 20
    return-void
.end method


# virtual methods
.method public addMapping(Ljava/lang/Class;I)Lorg/greenrobot/eventbus/util/ErrorDialogConfig;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;I)",
            "Lorg/greenrobot/eventbus/util/ErrorDialogConfig;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/eventbus/util/ErrorDialogConfig;->mapping:Lorg/greenrobot/eventbus/util/ExceptionToResourceMapping;

    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/greenrobot/eventbus/util/ExceptionToResourceMapping;->addMapping(Ljava/lang/Class;I)Lorg/greenrobot/eventbus/util/ExceptionToResourceMapping;

    .line 6
    return-object p0
.end method

.method public disableExceptionLogging()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/greenrobot/eventbus/util/ErrorDialogConfig;->logExceptions:Z

    .line 4
    return-void
.end method

.method public getEventBus()Lorg/greenrobot/eventbus/EventBus;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/eventbus/util/ErrorDialogConfig;->eventBus:Lorg/greenrobot/eventbus/EventBus;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    goto :goto_9

    .line 6
    :cond_5
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 9
    move-result-object v0

    .line 10
    :goto_9
    return-object v0
.end method

.method public getMessageIdForThrowable(Ljava/lang/Throwable;)I
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/greenrobot/eventbus/util/ErrorDialogConfig;->mapping:Lorg/greenrobot/eventbus/util/ExceptionToResourceMapping;

    .line 3
    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/util/ExceptionToResourceMapping;->mapThrowable(Ljava/lang/Throwable;)Ljava/lang/Integer;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_d

    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_d
    sget-object v0, Lorg/greenrobot/eventbus/EventBus;->TAG:Ljava/lang/String;

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    const-string v2, "No specific message ressource ID found for "

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget p1, p0, Lorg/greenrobot/eventbus/util/ErrorDialogConfig;->defaultErrorMsgId:I

    .line 38
    return p1
.end method

.method public setDefaultDialogIconId(I)V
    .registers 2

    .line 1
    iput p1, p0, Lorg/greenrobot/eventbus/util/ErrorDialogConfig;->defaultDialogIconId:I

    .line 3
    return-void
.end method

.method public setDefaultEventTypeOnDialogClosed(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/greenrobot/eventbus/util/ErrorDialogConfig;->defaultEventTypeOnDialogClosed:Ljava/lang/Class;

    .line 3
    return-void
.end method

.method public setEventBus(Lorg/greenrobot/eventbus/EventBus;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/greenrobot/eventbus/util/ErrorDialogConfig;->eventBus:Lorg/greenrobot/eventbus/EventBus;

    .line 3
    return-void
.end method

.method public setTagForLoggingExceptions(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/greenrobot/eventbus/util/ErrorDialogConfig;->tagForLoggingExceptions:Ljava/lang/String;

    .line 3
    return-void
.end method
