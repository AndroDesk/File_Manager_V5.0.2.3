.class public final Lcom/google/gson/internal/ConstructorConstructor;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"


# instance fields
.field private final accessor:Lcom/google/gson/internal/reflect/ReflectionAccessor;

.field private final instanceCreators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/InstanceCreator<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/InstanceCreator<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Lcom/google/gson/internal/reflect/ReflectionAccessor;->getInstance()Lcom/google/gson/internal/reflect/ReflectionAccessor;

    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/gson/internal/ConstructorConstructor;->accessor:Lcom/google/gson/internal/reflect/ReflectionAccessor;

    .line 10
    iput-object p1, p0, Lcom/google/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    .line 12
    return-void
.end method

.method private newDefaultConstructor(Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lcom/google/gson/internal/ObjectConstructor<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    new-array v0, v0, [Ljava/lang/Class;

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_12

    .line 14
    iget-object v0, p0, Lcom/google/gson/internal/ConstructorConstructor;->accessor:Lcom/google/gson/internal/reflect/ReflectionAccessor;

    .line 16
    invoke-virtual {v0, p1}, Lcom/google/gson/internal/reflect/ReflectionAccessor;->makeAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 19
    :cond_12
    new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$3;

    .line 21
    invoke-direct {v0, p0, p1}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Lcom/google/gson/internal/ConstructorConstructor;Ljava/lang/reflect/Constructor;)V
    :try_end_17
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_17} :catch_18

    .line 24
    return-object v0

    .line 25
    :catch_18
    const/4 p1, 0x0

    .line 26
    return-object p1
.end method

.method private newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lcom/google/gson/internal/ObjectConstructor<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/util/Collection;

    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_46

    .line 9
    const-class v0, Ljava/util/SortedSet;

    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_16

    .line 17
    new-instance p1, Lcom/google/gson/internal/ConstructorConstructor$4;

    .line 19
    invoke-direct {p1, p0}, Lcom/google/gson/internal/ConstructorConstructor$4;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V

    .line 22
    return-object p1

    .line 23
    :cond_16
    const-class v0, Ljava/util/EnumSet;

    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_24

    .line 31
    new-instance p2, Lcom/google/gson/internal/ConstructorConstructor$5;

    .line 33
    invoke-direct {p2, p0, p1}, Lcom/google/gson/internal/ConstructorConstructor$5;-><init>(Lcom/google/gson/internal/ConstructorConstructor;Ljava/lang/reflect/Type;)V

    .line 36
    return-object p2

    .line 37
    :cond_24
    const-class p1, Ljava/util/Set;

    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_32

    .line 45
    new-instance p1, Lcom/google/gson/internal/ConstructorConstructor$6;

    .line 47
    invoke-direct {p1, p0}, Lcom/google/gson/internal/ConstructorConstructor$6;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V

    .line 50
    return-object p1

    .line 51
    :cond_32
    const-class p1, Ljava/util/Queue;

    .line 53
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_40

    .line 59
    new-instance p1, Lcom/google/gson/internal/ConstructorConstructor$7;

    .line 61
    invoke-direct {p1, p0}, Lcom/google/gson/internal/ConstructorConstructor$7;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V

    .line 64
    return-object p1

    .line 65
    :cond_40
    new-instance p1, Lcom/google/gson/internal/ConstructorConstructor$8;

    .line 67
    invoke-direct {p1, p0}, Lcom/google/gson/internal/ConstructorConstructor$8;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V

    .line 70
    return-object p1

    .line 71
    :cond_46
    const-class v0, Ljava/util/Map;

    .line 73
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_a1

    .line 79
    const-class v0, Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 81
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_5c

    .line 87
    new-instance p1, Lcom/google/gson/internal/ConstructorConstructor$9;

    .line 89
    invoke-direct {p1, p0}, Lcom/google/gson/internal/ConstructorConstructor$9;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V

    .line 92
    return-object p1

    .line 93
    :cond_5c
    const-class v0, Ljava/util/concurrent/ConcurrentMap;

    .line 95
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_6a

    .line 101
    new-instance p1, Lcom/google/gson/internal/ConstructorConstructor$10;

    .line 103
    invoke-direct {p1, p0}, Lcom/google/gson/internal/ConstructorConstructor$10;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V

    .line 106
    return-object p1

    .line 107
    :cond_6a
    const-class v0, Ljava/util/SortedMap;

    .line 109
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 112
    move-result p2

    .line 113
    if-eqz p2, :cond_78

    .line 115
    new-instance p1, Lcom/google/gson/internal/ConstructorConstructor$11;

    .line 117
    invoke-direct {p1, p0}, Lcom/google/gson/internal/ConstructorConstructor$11;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V

    .line 120
    return-object p1

    .line 121
    :cond_78
    instance-of p2, p1, Ljava/lang/reflect/ParameterizedType;

    .line 123
    if-eqz p2, :cond_9b

    .line 125
    const-class p2, Ljava/lang/String;

    .line 127
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 129
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 132
    move-result-object p1

    .line 133
    const/4 v0, 0x0

    .line 134
    aget-object p1, p1, v0

    .line 136
    invoke-static {p1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 147
    move-result p1

    .line 148
    if-nez p1, :cond_9b

    .line 150
    new-instance p1, Lcom/google/gson/internal/ConstructorConstructor$12;

    .line 152
    invoke-direct {p1, p0}, Lcom/google/gson/internal/ConstructorConstructor$12;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V

    .line 155
    return-object p1

    .line 156
    :cond_9b
    new-instance p1, Lcom/google/gson/internal/ConstructorConstructor$13;

    .line 158
    invoke-direct {p1, p0}, Lcom/google/gson/internal/ConstructorConstructor$13;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V

    .line 161
    return-object p1

    .line 162
    :cond_a1
    const/4 p1, 0x0

    .line 163
    return-object p1
.end method

.method private newUnsafeAllocator(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lcom/google/gson/internal/ObjectConstructor<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$14;

    .line 3
    invoke-direct {v0, p0, p2, p1}, Lcom/google/gson/internal/ConstructorConstructor$14;-><init>(Lcom/google/gson/internal/ConstructorConstructor;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    .line 6
    return-object v0
.end method


# virtual methods
.method public get(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/ObjectConstructor;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lcom/google/gson/internal/ObjectConstructor<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 8
    move-result-object p1

    .line 9
    iget-object v1, p0, Lcom/google/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    .line 11
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/google/gson/InstanceCreator;

    .line 17
    if-eqz v1, :cond_18

    .line 19
    new-instance p1, Lcom/google/gson/internal/ConstructorConstructor$1;

    .line 21
    invoke-direct {p1, p0, v1, v0}, Lcom/google/gson/internal/ConstructorConstructor$1;-><init>(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/InstanceCreator;Ljava/lang/reflect/Type;)V

    .line 24
    return-object p1

    .line 25
    :cond_18
    iget-object v1, p0, Lcom/google/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    .line 27
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/google/gson/InstanceCreator;

    .line 33
    if-eqz v1, :cond_28

    .line 35
    new-instance p1, Lcom/google/gson/internal/ConstructorConstructor$2;

    .line 37
    invoke-direct {p1, p0, v1, v0}, Lcom/google/gson/internal/ConstructorConstructor$2;-><init>(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/InstanceCreator;Ljava/lang/reflect/Type;)V

    .line 40
    return-object p1

    .line 41
    :cond_28
    invoke-direct {p0, p1}, Lcom/google/gson/internal/ConstructorConstructor;->newDefaultConstructor(Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;

    .line 44
    move-result-object v1

    .line 45
    if-eqz v1, :cond_2f

    .line 47
    return-object v1

    .line 48
    :cond_2f
    invoke-direct {p0, v0, p1}, Lcom/google/gson/internal/ConstructorConstructor;->newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;

    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_36

    .line 54
    return-object v1

    .line 55
    :cond_36
    invoke-direct {p0, v0, p1}, Lcom/google/gson/internal/ConstructorConstructor;->newUnsafeAllocator(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;

    .line 58
    move-result-object p1

    .line 59
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
