.class Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;
.super Ljava/lang/Object;
.source "SubscriberMethodFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/greenrobot/eventbus/SubscriberMethodFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FindState"
.end annotation


# instance fields
.field public final anyMethodByEventType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final methodKeyBuilder:Ljava/lang/StringBuilder;

.field public skipSuperClasses:Z

.field public subscriberClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final subscriberClassByMethodKey:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field public subscriberInfo:Lorg/greenrobot/eventbus/meta/SubscriberInfo;

.field public final subscriberMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/greenrobot/eventbus/SubscriberMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->subscriberMethods:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    iput-object v0, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->anyMethodByEventType:Ljava/util/Map;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    iput-object v0, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->subscriberClassByMethodKey:Ljava/util/Map;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    const/16 v1, 0x80

    .line 29
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 32
    iput-object v0, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->methodKeyBuilder:Ljava/lang/StringBuilder;

    .line 34
    return-void
.end method

.method private checkAddWithMethodSignature(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->methodKeyBuilder:Ljava/lang/StringBuilder;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 7
    iget-object v0, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->methodKeyBuilder:Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v0, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->methodKeyBuilder:Ljava/lang/StringBuilder;

    .line 18
    const/16 v2, 0x3e

    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget-object p2, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->methodKeyBuilder:Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 39
    move-result-object p1

    .line 40
    iget-object v0, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->subscriberClassByMethodKey:Ljava/util/Map;

    .line 42
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ljava/lang/Class;

    .line 48
    if-eqz v0, :cond_3e

    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_38

    .line 56
    goto :goto_3e

    .line 57
    :cond_38
    iget-object p1, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->subscriberClassByMethodKey:Ljava/util/Map;

    .line 59
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return v1

    .line 63
    :cond_3e
    :goto_3e
    const/4 p1, 0x1

    .line 64
    return p1
.end method


# virtual methods
.method public checkAdd(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->anyMethodByEventType:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_a

    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_a
    instance-of v1, v0, Ljava/lang/reflect/Method;

    .line 13
    if-eqz v1, :cond_22

    .line 15
    check-cast v0, Ljava/lang/reflect/Method;

    .line 17
    invoke-direct {p0, v0, p2}, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->checkAddWithMethodSignature(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1c

    .line 23
    iget-object v0, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->anyMethodByEventType:Ljava/util/Map;

    .line 25
    invoke-interface {v0, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    goto :goto_22

    .line 29
    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 31
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 34
    throw p1

    .line 35
    :cond_22
    :goto_22
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->checkAddWithMethodSignature(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    .line 38
    move-result p1

    .line 39
    return p1
.end method

.method public initForSubscriber(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->clazz:Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->subscriberClass:Ljava/lang/Class;

    .line 5
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->skipSuperClasses:Z

    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->subscriberInfo:Lorg/greenrobot/eventbus/meta/SubscriberInfo;

    .line 11
    return-void
.end method

.method public moveToSuperclass()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->skipSuperClasses:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_8

    .line 6
    iput-object v1, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->clazz:Ljava/lang/Class;

    .line 8
    goto :goto_2e

    .line 9
    :cond_8
    iget-object v0, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->clazz:Ljava/lang/Class;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->clazz:Ljava/lang/Class;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    const-string v2, "java."

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_2c

    .line 29
    const-string v2, "javax."

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_2c

    .line 37
    const-string v2, "android."

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2e

    .line 45
    :cond_2c
    iput-object v1, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->clazz:Ljava/lang/Class;

    .line 47
    :cond_2e
    :goto_2e
    return-void
.end method

.method public recycle()V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->subscriberMethods:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    iget-object v0, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->anyMethodByEventType:Ljava/util/Map;

    .line 8
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 11
    iget-object v0, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->subscriberClassByMethodKey:Ljava/util/Map;

    .line 13
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 16
    iget-object v0, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->methodKeyBuilder:Ljava/lang/StringBuilder;

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->subscriberClass:Ljava/lang/Class;

    .line 25
    iput-object v0, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->clazz:Ljava/lang/Class;

    .line 27
    iput-boolean v1, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->skipSuperClasses:Z

    .line 29
    iput-object v0, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->subscriberInfo:Lorg/greenrobot/eventbus/meta/SubscriberInfo;

    .line 31
    return-void
.end method
