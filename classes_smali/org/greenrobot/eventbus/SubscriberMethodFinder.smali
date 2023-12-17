.class Lorg/greenrobot/eventbus/SubscriberMethodFinder;
.super Ljava/lang/Object;
.source "SubscriberMethodFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;
    }
.end annotation


# static fields
.field private static final BRIDGE:I = 0x40

.field private static final FIND_STATE_POOL:[Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;

.field private static final METHOD_CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Lorg/greenrobot/eventbus/SubscriberMethod;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final MODIFIERS_IGNORE:I = 0x1448

.field private static final POOL_SIZE:I = 0x4

.field private static final SYNTHETIC:I = 0x1000


# instance fields
.field private final ignoreGeneratedIndex:Z

.field private final strictMethodVerification:Z

.field private subscriberInfoIndexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/greenrobot/eventbus/meta/SubscriberInfoIndex;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 6
    sput-object v0, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->METHOD_CACHE:Ljava/util/Map;

    .line 8
    const/4 v0, 0x4

    .line 9
    new-array v0, v0, [Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;

    .line 11
    sput-object v0, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->FIND_STATE_POOL:[Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/util/List;ZZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/greenrobot/eventbus/meta/SubscriberInfoIndex;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->subscriberInfoIndexes:Ljava/util/List;

    .line 6
    iput-boolean p2, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->strictMethodVerification:Z

    .line 8
    iput-boolean p3, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->ignoreGeneratedIndex:Z

    .line 10
    return-void
.end method

.method public static clearCaches()V
    .registers 1

    .line 1
    sget-object v0, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->METHOD_CACHE:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 6
    return-void
.end method

.method private findUsingInfo(Ljava/lang/Class;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lorg/greenrobot/eventbus/SubscriberMethod;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->prepareFindState()Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->initForSubscriber(Ljava/lang/Class;)V

    .line 8
    :goto_7
    iget-object p1, v0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->clazz:Ljava/lang/Class;

    .line 10
    if-eqz p1, :cond_36

    .line 12
    invoke-direct {p0, v0}, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->getSubscriberInfo(Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;)Lorg/greenrobot/eventbus/meta/SubscriberInfo;

    .line 15
    move-result-object p1

    .line 16
    iput-object p1, v0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->subscriberInfo:Lorg/greenrobot/eventbus/meta/SubscriberInfo;

    .line 18
    if-eqz p1, :cond_2f

    .line 20
    invoke-interface {p1}, Lorg/greenrobot/eventbus/meta/SubscriberInfo;->getSubscriberMethods()[Lorg/greenrobot/eventbus/SubscriberMethod;

    .line 23
    move-result-object p1

    .line 24
    array-length v1, p1

    .line 25
    const/4 v2, 0x0

    .line 26
    :goto_19
    if-ge v2, v1, :cond_32

    .line 28
    aget-object v3, p1, v2

    .line 30
    iget-object v4, v3, Lorg/greenrobot/eventbus/SubscriberMethod;->method:Ljava/lang/reflect/Method;

    .line 32
    iget-object v5, v3, Lorg/greenrobot/eventbus/SubscriberMethod;->eventType:Ljava/lang/Class;

    .line 34
    invoke-virtual {v0, v4, v5}, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->checkAdd(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_2c

    .line 40
    iget-object v4, v0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->subscriberMethods:Ljava/util/List;

    .line 42
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    .line 47
    goto :goto_19

    .line 48
    :cond_2f
    invoke-direct {p0, v0}, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->findUsingReflectionInSingleClass(Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;)V

    .line 51
    :cond_32
    invoke-virtual {v0}, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->moveToSuperclass()V

    .line 54
    goto :goto_7

    .line 55
    :cond_36
    invoke-direct {p0, v0}, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->getMethodsAndRelease(Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;)Ljava/util/List;

    .line 58
    move-result-object p1

    .line 59
    return-object p1
.end method

.method private findUsingReflection(Ljava/lang/Class;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lorg/greenrobot/eventbus/SubscriberMethod;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->prepareFindState()Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->initForSubscriber(Ljava/lang/Class;)V

    .line 8
    :goto_7
    iget-object p1, v0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->clazz:Ljava/lang/Class;

    .line 10
    if-eqz p1, :cond_12

    .line 12
    invoke-direct {p0, v0}, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->findUsingReflectionInSingleClass(Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;)V

    .line 15
    invoke-virtual {v0}, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->moveToSuperclass()V

    .line 18
    goto :goto_7

    .line 19
    :cond_12
    invoke-direct {p0, v0}, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->getMethodsAndRelease(Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;)Ljava/util/List;

    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method private findUsingReflectionInSingleClass(Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;)V
    .registers 16

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_1
    iget-object v1, p1, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->clazz:Ljava/lang/Class;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 7
    move-result-object v1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_8

    .line 8
    goto :goto_10

    .line 9
    :catchall_8
    iget-object v1, p1, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->clazz:Ljava/lang/Class;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    .line 14
    move-result-object v1

    .line 15
    iput-boolean v0, p1, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->skipSuperClasses:Z

    .line 17
    :goto_10
    array-length v2, v1

    .line 18
    const/4 v3, 0x0

    .line 19
    move v4, v3

    .line 20
    :goto_13
    if-ge v4, v2, :cond_d7

    .line 22
    aget-object v6, v1, v4

    .line 24
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 27
    move-result v5

    .line 28
    and-int/lit8 v7, v5, 0x1

    .line 30
    const-string v8, "."

    .line 32
    if-eqz v7, :cond_9c

    .line 34
    and-int/lit16 v5, v5, 0x1448

    .line 36
    if-nez v5, :cond_9c

    .line 38
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 41
    move-result-object v5

    .line 42
    array-length v7, v5

    .line 43
    if-ne v7, v0, :cond_5b

    .line 45
    const-class v7, Lorg/greenrobot/eventbus/Subscribe;

    .line 47
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 50
    move-result-object v7

    .line 51
    check-cast v7, Lorg/greenrobot/eventbus/Subscribe;

    .line 53
    if-eqz v7, :cond_d3

    .line 55
    aget-object v8, v5, v3

    .line 57
    invoke-virtual {p1, v6, v8}, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->checkAdd(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_d3

    .line 63
    invoke-interface {v7}, Lorg/greenrobot/eventbus/Subscribe;->threadMode()Lorg/greenrobot/eventbus/ThreadMode;

    .line 66
    move-result-object v9

    .line 67
    iget-object v11, p1, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->subscriberMethods:Ljava/util/List;

    .line 69
    new-instance v12, Lorg/greenrobot/eventbus/SubscriberMethod;

    .line 71
    invoke-interface {v7}, Lorg/greenrobot/eventbus/Subscribe;->priority()I

    .line 74
    move-result v10

    .line 75
    invoke-interface {v7}, Lorg/greenrobot/eventbus/Subscribe;->sticky()Z

    .line 78
    move-result v13

    .line 79
    move-object v5, v12

    .line 80
    move-object v7, v8

    .line 81
    move-object v8, v9

    .line 82
    move v9, v10

    .line 83
    move v10, v13

    .line 84
    invoke-direct/range {v5 .. v10}, Lorg/greenrobot/eventbus/SubscriberMethod;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;IZ)V

    .line 87
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    goto/16 :goto_d3

    .line 92
    :cond_5b
    iget-boolean v7, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->strictMethodVerification:Z

    .line 94
    if-eqz v7, :cond_d3

    .line 96
    const-class v7, Lorg/greenrobot/eventbus/Subscribe;

    .line 98
    invoke-virtual {v6, v7}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    .line 101
    move-result v7

    .line 102
    if-nez v7, :cond_68

    .line 104
    goto :goto_d3

    .line 105
    :cond_68
    new-instance p1, Ljava/lang/StringBuilder;

    .line 107
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object p1

    .line 135
    new-instance v0, Lorg/greenrobot/eventbus/EventBusException;

    .line 137
    const-string v1, "@Subscribe method "

    .line 139
    const-string v2, "must have exactly 1 parameter but has "

    .line 141
    invoke-static {v1, p1, v2}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    move-result-object p1

    .line 145
    array-length v1, v5

    .line 146
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    move-result-object p1

    .line 153
    invoke-direct {v0, p1}, Lorg/greenrobot/eventbus/EventBusException;-><init>(Ljava/lang/String;)V

    .line 156
    throw v0

    .line 157
    :cond_9c
    iget-boolean v5, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->strictMethodVerification:Z

    .line 159
    if-eqz v5, :cond_d3

    .line 161
    const-class v5, Lorg/greenrobot/eventbus/Subscribe;

    .line 163
    invoke-virtual {v6, v5}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    .line 166
    move-result v5

    .line 167
    if-nez v5, :cond_a9

    .line 169
    goto :goto_d3

    .line 170
    :cond_a9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 172
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    move-result-object p1

    .line 200
    new-instance v0, Lorg/greenrobot/eventbus/EventBusException;

    .line 202
    const-string v1, " is a illegal @Subscribe method: must be public, non-static, and non-abstract"

    .line 204
    invoke-static {p1, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 207
    move-result-object p1

    .line 208
    invoke-direct {v0, p1}, Lorg/greenrobot/eventbus/EventBusException;-><init>(Ljava/lang/String;)V

    .line 211
    throw v0

    .line 212
    :cond_d3
    :goto_d3
    add-int/lit8 v4, v4, 0x1

    .line 214
    goto/16 :goto_13

    .line 216
    :cond_d7
    return-void
.end method

.method private getMethodsAndRelease(Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;",
            ")",
            "Ljava/util/List<",
            "Lorg/greenrobot/eventbus/SubscriberMethod;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    iget-object v1, p1, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->subscriberMethods:Ljava/util/List;

    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    invoke-virtual {p1}, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->recycle()V

    .line 11
    sget-object v1, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->FIND_STATE_POOL:[Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;

    .line 13
    monitor-enter v1

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_e
    const/4 v3, 0x4

    .line 16
    if-ge v2, v3, :cond_1d

    .line 18
    :try_start_11
    sget-object v3, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->FIND_STATE_POOL:[Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;

    .line 20
    aget-object v4, v3, v2

    .line 22
    if-nez v4, :cond_1a

    .line 24
    aput-object p1, v3, v2

    .line 26
    goto :goto_1d

    .line 27
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    .line 29
    goto :goto_e

    .line 30
    :cond_1d
    :goto_1d
    monitor-exit v1

    .line 31
    return-object v0

    .line 32
    :catchall_1f
    move-exception p1

    .line 33
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_11 .. :try_end_21} :catchall_1f

    .line 34
    throw p1
.end method

.method private getSubscriberInfo(Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;)Lorg/greenrobot/eventbus/meta/SubscriberInfo;
    .registers 5

    .line 1
    iget-object v0, p1, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->subscriberInfo:Lorg/greenrobot/eventbus/meta/SubscriberInfo;

    .line 3
    if-eqz v0, :cond_19

    .line 5
    invoke-interface {v0}, Lorg/greenrobot/eventbus/meta/SubscriberInfo;->getSuperSubscriberInfo()Lorg/greenrobot/eventbus/meta/SubscriberInfo;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_19

    .line 11
    iget-object v0, p1, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->subscriberInfo:Lorg/greenrobot/eventbus/meta/SubscriberInfo;

    .line 13
    invoke-interface {v0}, Lorg/greenrobot/eventbus/meta/SubscriberInfo;->getSuperSubscriberInfo()Lorg/greenrobot/eventbus/meta/SubscriberInfo;

    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p1, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->clazz:Ljava/lang/Class;

    .line 19
    invoke-interface {v0}, Lorg/greenrobot/eventbus/meta/SubscriberInfo;->getSubscriberClass()Ljava/lang/Class;

    .line 22
    move-result-object v2

    .line 23
    if-ne v1, v2, :cond_19

    .line 25
    return-object v0

    .line 26
    :cond_19
    iget-object v0, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->subscriberInfoIndexes:Ljava/util/List;

    .line 28
    if-eqz v0, :cond_36

    .line 30
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object v0

    .line 34
    :cond_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_36

    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lorg/greenrobot/eventbus/meta/SubscriberInfoIndex;

    .line 46
    iget-object v2, p1, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->clazz:Ljava/lang/Class;

    .line 48
    invoke-interface {v1, v2}, Lorg/greenrobot/eventbus/meta/SubscriberInfoIndex;->getSubscriberInfo(Ljava/lang/Class;)Lorg/greenrobot/eventbus/meta/SubscriberInfo;

    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_21

    .line 54
    return-object v1

    .line 55
    :cond_36
    const/4 p1, 0x0

    .line 56
    return-object p1
.end method

.method private prepareFindState()Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;
    .registers 6

    .line 1
    sget-object v0, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->FIND_STATE_POOL:[Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_4
    const/4 v2, 0x4

    .line 6
    if-ge v1, v2, :cond_15

    .line 8
    :try_start_7
    sget-object v2, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->FIND_STATE_POOL:[Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;

    .line 10
    aget-object v3, v2, v1

    .line 12
    if-eqz v3, :cond_12

    .line 14
    const/4 v4, 0x0

    .line 15
    aput-object v4, v2, v1

    .line 17
    monitor-exit v0

    .line 18
    return-object v3

    .line 19
    :cond_12
    add-int/lit8 v1, v1, 0x1

    .line 21
    goto :goto_4

    .line 22
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_1c

    .line 23
    new-instance v0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;

    .line 25
    invoke-direct {v0}, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;-><init>()V

    .line 28
    return-object v0

    .line 29
    :catchall_1c
    move-exception v1

    .line 30
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    .line 31
    throw v1
.end method


# virtual methods
.method public findSubscriberMethods(Ljava/lang/Class;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lorg/greenrobot/eventbus/SubscriberMethod;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->METHOD_CACHE:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/util/List;

    .line 9
    if-eqz v1, :cond_b

    .line 11
    return-object v1

    .line 12
    :cond_b
    iget-boolean v1, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->ignoreGeneratedIndex:Z

    .line 14
    if-eqz v1, :cond_14

    .line 16
    invoke-direct {p0, p1}, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->findUsingReflection(Ljava/lang/Class;)Ljava/util/List;

    .line 19
    move-result-object v1

    .line 20
    goto :goto_18

    .line 21
    :cond_14
    invoke-direct {p0, p1}, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->findUsingInfo(Ljava/lang/Class;)Ljava/util/List;

    .line 24
    move-result-object v1

    .line 25
    :goto_18
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_22

    .line 31
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-object v1

    .line 35
    :cond_22
    new-instance v0, Lorg/greenrobot/eventbus/EventBusException;

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    const-string v2, "Subscriber "

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    const-string p1, " and its super classes have no public methods with the @Subscribe annotation"

    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    invoke-direct {v0, p1}, Lorg/greenrobot/eventbus/EventBusException;-><init>(Ljava/lang/String;)V

    .line 62
    throw v0
.end method
