.class public Lorg/greenrobot/eventbus/util/ExceptionToResourceMapping;
.super Ljava/lang/Object;
.source "ExceptionToResourceMapping.java"


# instance fields
.field public final throwableToMsgIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lorg/greenrobot/eventbus/util/ExceptionToResourceMapping;->throwableToMsgIdMap:Ljava/util/Map;

    .line 11
    return-void
.end method


# virtual methods
.method public addMapping(Ljava/lang/Class;I)Lorg/greenrobot/eventbus/util/ExceptionToResourceMapping;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;I)",
            "Lorg/greenrobot/eventbus/util/ExceptionToResourceMapping;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/eventbus/util/ExceptionToResourceMapping;->throwableToMsgIdMap:Ljava/util/Map;

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p2

    .line 7
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    return-object p0
.end method

.method public mapThrowable(Ljava/lang/Throwable;)Ljava/lang/Integer;
    .registers 5

    .line 1
    const/16 v0, 0x14

    .line 3
    move-object v1, p1

    .line 4
    :cond_3
    invoke-virtual {p0, v1}, Lorg/greenrobot/eventbus/util/ExceptionToResourceMapping;->mapThrowableFlat(Ljava/lang/Throwable;)Ljava/lang/Integer;

    .line 7
    move-result-object v2

    .line 8
    if-eqz v2, :cond_a

    .line 10
    return-object v2

    .line 11
    :cond_a
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 14
    move-result-object v1

    .line 15
    add-int/lit8 v0, v0, -0x1

    .line 17
    if-lez v0, :cond_16

    .line 19
    if-eq v1, p1, :cond_16

    .line 21
    if-nez v1, :cond_3

    .line 23
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    const-string v1, "No specific message resource ID found for "

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    const-string v0, "EventBus"

    .line 42
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/4 p1, 0x0

    .line 46
    return-object p1
.end method

.method public mapThrowableFlat(Ljava/lang/Throwable;)Ljava/lang/Integer;
    .registers 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lorg/greenrobot/eventbus/util/ExceptionToResourceMapping;->throwableToMsgIdMap:Ljava/util/Map;

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Integer;

    .line 13
    if-nez v0, :cond_41

    .line 15
    const/4 v1, 0x0

    .line 16
    iget-object v2, p0, Lorg/greenrobot/eventbus/util/ExceptionToResourceMapping;->throwableToMsgIdMap:Ljava/util/Map;

    .line 18
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 21
    move-result-object v2

    .line 22
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v2

    .line 26
    :cond_19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_41

    .line 32
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Ljava/util/Map$Entry;

    .line 38
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Ljava/lang/Class;

    .line 44
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_19

    .line 50
    if-eqz v1, :cond_39

    .line 52
    invoke-virtual {v1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 55
    move-result v5

    .line 56
    if-eqz v5, :cond_19

    .line 58
    :cond_39
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Ljava/lang/Integer;

    .line 64
    move-object v1, v4

    .line 65
    goto :goto_19

    .line 66
    :cond_41
    return-object v0
.end method
