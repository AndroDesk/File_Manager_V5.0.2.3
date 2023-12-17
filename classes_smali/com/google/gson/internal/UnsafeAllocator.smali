.class public abstract Lcom/google/gson/internal/UnsafeAllocator;
.super Ljava/lang/Object;
.source "UnsafeAllocator.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertInstantiable(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_28

    .line 11
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_11

    .line 17
    return-void

    .line 18
    :cond_11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 20
    const-string v1, "Abstract class can\'t be instantiated! Class name: "

    .line 22
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 40
    throw v0

    .line 41
    :cond_28
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 43
    const-string v1, "Interface can\'t be instantiated! Interface name: "

    .line 45
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 60
    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 63
    throw v0
.end method

.method public static create()Lcom/google/gson/internal/UnsafeAllocator;
    .registers 9

    .line 1
    const-string v0, "newInstance"

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    :try_start_5
    const-string v4, "sun.misc.Unsafe"

    .line 8
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 11
    move-result-object v4

    .line 12
    const-string v5, "theUnsafe"

    .line 14
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 17
    move-result-object v5

    .line 18
    invoke-virtual {v5, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 21
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v5

    .line 25
    const-string v6, "allocateInstance"

    .line 27
    new-array v7, v3, [Ljava/lang/Class;

    .line 29
    const-class v8, Ljava/lang/Class;

    .line 31
    aput-object v8, v7, v2

    .line 33
    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 36
    move-result-object v4

    .line 37
    new-instance v6, Lcom/google/gson/internal/UnsafeAllocator$1;

    .line 39
    invoke-direct {v6, v4, v5}, Lcom/google/gson/internal/UnsafeAllocator$1;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_29} :catch_2a

    .line 42
    return-object v6

    .line 43
    :catch_2a
    const/4 v4, 0x2

    .line 44
    :try_start_2b
    const-class v5, Ljava/io/ObjectStreamClass;

    .line 46
    const-string v6, "getConstructorId"

    .line 48
    new-array v7, v3, [Ljava/lang/Class;

    .line 50
    const-class v8, Ljava/lang/Class;

    .line 52
    aput-object v8, v7, v2

    .line 54
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v5, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 61
    new-array v6, v3, [Ljava/lang/Object;

    .line 63
    const-class v7, Ljava/lang/Object;

    .line 65
    aput-object v7, v6, v2

    .line 67
    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Ljava/lang/Integer;

    .line 73
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 76
    move-result v1

    .line 77
    const-class v5, Ljava/io/ObjectStreamClass;

    .line 79
    new-array v6, v4, [Ljava/lang/Class;

    .line 81
    const-class v7, Ljava/lang/Class;

    .line 83
    aput-object v7, v6, v2

    .line 85
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 87
    aput-object v7, v6, v3

    .line 89
    invoke-virtual {v5, v0, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {v5, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 96
    new-instance v6, Lcom/google/gson/internal/UnsafeAllocator$2;

    .line 98
    invoke-direct {v6, v5, v1}, Lcom/google/gson/internal/UnsafeAllocator$2;-><init>(Ljava/lang/reflect/Method;I)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_64} :catch_65

    .line 101
    return-object v6

    .line 102
    :catch_65
    :try_start_65
    const-class v1, Ljava/io/ObjectInputStream;

    .line 104
    new-array v4, v4, [Ljava/lang/Class;

    .line 106
    const-class v5, Ljava/lang/Class;

    .line 108
    aput-object v5, v4, v2

    .line 110
    const-class v2, Ljava/lang/Class;

    .line 112
    aput-object v2, v4, v3

    .line 114
    invoke-virtual {v1, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 121
    new-instance v1, Lcom/google/gson/internal/UnsafeAllocator$3;

    .line 123
    invoke-direct {v1, v0}, Lcom/google/gson/internal/UnsafeAllocator$3;-><init>(Ljava/lang/reflect/Method;)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_7d} :catch_7e

    .line 126
    return-object v1

    .line 127
    :catch_7e
    new-instance v0, Lcom/google/gson/internal/UnsafeAllocator$4;

    .line 129
    invoke-direct {v0}, Lcom/google/gson/internal/UnsafeAllocator$4;-><init>()V

    .line 132
    return-object v0
.end method


# virtual methods
.method public abstract newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method
