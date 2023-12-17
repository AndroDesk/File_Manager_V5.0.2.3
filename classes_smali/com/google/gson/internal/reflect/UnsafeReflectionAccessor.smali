.class final Lcom/google/gson/internal/reflect/UnsafeReflectionAccessor;
.super Lcom/google/gson/internal/reflect/ReflectionAccessor;
.source "UnsafeReflectionAccessor.java"


# static fields
.field private static unsafeClass:Ljava/lang/Class;


# instance fields
.field private final overrideField:Ljava/lang/reflect/Field;

.field private final theUnsafe:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/gson/internal/reflect/ReflectionAccessor;-><init>()V

    .line 4
    invoke-static {}, Lcom/google/gson/internal/reflect/UnsafeReflectionAccessor;->getUnsafeInstance()Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/gson/internal/reflect/UnsafeReflectionAccessor;->theUnsafe:Ljava/lang/Object;

    .line 10
    invoke-static {}, Lcom/google/gson/internal/reflect/UnsafeReflectionAccessor;->getOverrideField()Ljava/lang/reflect/Field;

    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/google/gson/internal/reflect/UnsafeReflectionAccessor;->overrideField:Ljava/lang/reflect/Field;

    .line 16
    return-void
.end method

.method private static getOverrideField()Ljava/lang/reflect/Field;
    .registers 2

    .line 1
    :try_start_0
    const-class v0, Ljava/lang/reflect/AccessibleObject;

    .line 3
    const-string v1, "override"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 8
    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 9
    return-object v0

    .line 10
    :catch_9
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method private static getUnsafeInstance()Ljava/lang/Object;
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    const-string v1, "sun.misc.Unsafe"

    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 7
    move-result-object v1

    .line 8
    sput-object v1, Lcom/google/gson/internal/reflect/UnsafeReflectionAccessor;->unsafeClass:Ljava/lang/Class;

    .line 10
    const-string v2, "theUnsafe"

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_17

    .line 24
    :catch_17
    return-object v0
.end method


# virtual methods
.method public makeAccessible(Ljava/lang/reflect/AccessibleObject;)V
    .registers 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/reflect/UnsafeReflectionAccessor;->makeAccessibleWithUnsafe(Ljava/lang/reflect/AccessibleObject;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_28

    .line 7
    const/4 v0, 0x1

    .line 8
    :try_start_7
    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_a} :catch_b

    .line 11
    goto :goto_28

    .line 12
    :catch_b
    move-exception v0

    .line 13
    new-instance v1, Lcom/google/gson/JsonIOException;

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    const-string v3, "Gson couldn\'t modify fields for "

    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    const-string p1, "\nand sun.misc.Unsafe not found.\nEither write a custom type adapter, or make fields accessible, or include sun.misc.Unsafe."

    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    invoke-direct {v1, p1, v0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    throw v1

    .line 41
    :cond_28
    :goto_28
    return-void
.end method

.method public makeAccessibleWithUnsafe(Ljava/lang/reflect/AccessibleObject;)Z
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/google/gson/internal/reflect/UnsafeReflectionAccessor;->theUnsafe:Ljava/lang/Object;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_56

    .line 6
    iget-object v0, p0, Lcom/google/gson/internal/reflect/UnsafeReflectionAccessor;->overrideField:Ljava/lang/reflect/Field;

    .line 8
    if-eqz v0, :cond_56

    .line 10
    :try_start_9
    sget-object v0, Lcom/google/gson/internal/reflect/UnsafeReflectionAccessor;->unsafeClass:Ljava/lang/Class;

    .line 12
    const-string v2, "objectFieldOffset"

    .line 14
    const/4 v3, 0x1

    .line 15
    new-array v4, v3, [Ljava/lang/Class;

    .line 17
    const-class v5, Ljava/lang/reflect/Field;

    .line 19
    aput-object v5, v4, v1

    .line 21
    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 24
    move-result-object v0

    .line 25
    iget-object v2, p0, Lcom/google/gson/internal/reflect/UnsafeReflectionAccessor;->theUnsafe:Ljava/lang/Object;

    .line 27
    new-array v4, v3, [Ljava/lang/Object;

    .line 29
    iget-object v5, p0, Lcom/google/gson/internal/reflect/UnsafeReflectionAccessor;->overrideField:Ljava/lang/reflect/Field;

    .line 31
    aput-object v5, v4, v1

    .line 33
    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/lang/Long;

    .line 39
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 42
    move-result-wide v4

    .line 43
    sget-object v0, Lcom/google/gson/internal/reflect/UnsafeReflectionAccessor;->unsafeClass:Ljava/lang/Class;

    .line 45
    const-string v2, "putBoolean"

    .line 47
    const/4 v6, 0x3

    .line 48
    new-array v7, v6, [Ljava/lang/Class;

    .line 50
    const-class v8, Ljava/lang/Object;

    .line 52
    aput-object v8, v7, v1

    .line 54
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 56
    aput-object v8, v7, v3

    .line 58
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 60
    const/4 v9, 0x2

    .line 61
    aput-object v8, v7, v9

    .line 63
    invoke-virtual {v0, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 66
    move-result-object v0

    .line 67
    iget-object v2, p0, Lcom/google/gson/internal/reflect/UnsafeReflectionAccessor;->theUnsafe:Ljava/lang/Object;

    .line 69
    new-array v6, v6, [Ljava/lang/Object;

    .line 71
    aput-object p1, v6, v1

    .line 73
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 76
    move-result-object p1

    .line 77
    aput-object p1, v6, v3

    .line 79
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 81
    aput-object p1, v6, v9

    .line 83
    invoke-virtual {v0, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_55} :catch_56

    .line 86
    return v3

    .line 87
    :catch_56
    :cond_56
    return v1
.end method
