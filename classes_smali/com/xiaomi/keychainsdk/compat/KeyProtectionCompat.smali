.class public Lcom/xiaomi/keychainsdk/compat/KeyProtectionCompat;
.super Ljava/lang/Object;
.source "KeyProtectionCompat.java"


# instance fields
.field private builder:Ljava/lang/Object;

.field private clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    :try_start_3
    const-string v0, "android.security.keystore.KeyProtection$Builder"

    .line 6
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/xiaomi/keychainsdk/compat/KeyProtectionCompat;->clazz:Ljava/lang/Class;

    .line 12
    const/4 v1, 0x1

    .line 13
    new-array v2, v1, [Ljava/lang/Class;

    .line 15
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 17
    const/4 v4, 0x0

    .line 18
    aput-object v3, v2, v4

    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 23
    move-result-object v0

    .line 24
    new-array v1, v1, [Ljava/lang/Object;

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object p1

    .line 30
    aput-object p1, v1, v4

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/xiaomi/keychainsdk/compat/KeyProtectionCompat;->builder:Ljava/lang/Object;
    :try_end_25
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_25} :catch_42
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_25} :catch_3b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_25} :catch_34
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_25} :catch_2d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_25} :catch_26

    .line 38
    return-void

    .line 39
    :catch_26
    move-exception p1

    .line 40
    new-instance v0, Ljava/lang/RuntimeException;

    .line 42
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 45
    throw v0

    .line 46
    :catch_2d
    move-exception p1

    .line 47
    new-instance v0, Ljava/lang/RuntimeException;

    .line 49
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 52
    throw v0

    .line 53
    :catch_34
    move-exception p1

    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    .line 56
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 59
    throw v0

    .line 60
    :catch_3b
    move-exception p1

    .line 61
    new-instance v0, Ljava/lang/RuntimeException;

    .line 63
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 66
    throw v0

    .line 67
    :catch_42
    move-exception p1

    .line 68
    new-instance v0, Ljava/lang/RuntimeException;

    .line 70
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 73
    throw v0
.end method


# virtual methods
.method public build()Ljava/security/KeyStore$ProtectionParameter;
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/keychainsdk/compat/KeyProtectionCompat;->clazz:Ljava/lang/Class;

    .line 3
    const-string v1, "build"

    .line 5
    const/4 v2, 0x0

    .line 6
    new-array v3, v2, [Ljava/lang/Class;

    .line 8
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/xiaomi/keychainsdk/compat/KeyProtectionCompat;->builder:Ljava/lang/Object;

    .line 14
    new-array v2, v2, [Ljava/lang/Object;

    .line 16
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/security/KeyStore$ProtectionParameter;
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_15} :catch_24
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_15} :catch_1d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_15} :catch_16

    .line 22
    return-object v0

    .line 23
    :catch_16
    move-exception v0

    .line 24
    new-instance v1, Ljava/lang/RuntimeException;

    .line 26
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 29
    throw v1

    .line 30
    :catch_1d
    move-exception v0

    .line 31
    new-instance v1, Ljava/lang/RuntimeException;

    .line 33
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 36
    throw v1

    .line 37
    :catch_24
    move-exception v0

    .line 38
    new-instance v1, Ljava/lang/RuntimeException;

    .line 40
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 43
    throw v1
.end method

.method public varargs setBlockModes([Ljava/lang/String;)Lcom/xiaomi/keychainsdk/compat/KeyProtectionCompat;
    .registers 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/keychainsdk/compat/KeyProtectionCompat;->clazz:Ljava/lang/Class;

    .line 3
    const-string v1, "setBlockModes"

    .line 5
    const/4 v2, 0x1

    .line 6
    new-array v3, v2, [Ljava/lang/Class;

    .line 8
    const-class v4, [Ljava/lang/String;

    .line 10
    const/4 v5, 0x0

    .line 11
    aput-object v4, v3, v5

    .line 13
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/xiaomi/keychainsdk/compat/KeyProtectionCompat;->builder:Ljava/lang/Object;

    .line 19
    new-array v2, v2, [Ljava/lang/Object;

    .line 21
    aput-object p1, v2, v5

    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_19} :catch_28
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_19} :catch_21
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_19} :catch_1a

    .line 26
    return-object p0

    .line 27
    :catch_1a
    move-exception p1

    .line 28
    new-instance v0, Ljava/lang/RuntimeException;

    .line 30
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 33
    throw v0

    .line 34
    :catch_21
    move-exception p1

    .line 35
    new-instance v0, Ljava/lang/RuntimeException;

    .line 37
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 40
    throw v0

    .line 41
    :catch_28
    move-exception p1

    .line 42
    new-instance v0, Ljava/lang/RuntimeException;

    .line 44
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 47
    throw v0
.end method

.method public varargs setEncryptionPaddings([Ljava/lang/String;)Lcom/xiaomi/keychainsdk/compat/KeyProtectionCompat;
    .registers 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/keychainsdk/compat/KeyProtectionCompat;->clazz:Ljava/lang/Class;

    .line 3
    const-string v1, "setEncryptionPaddings"

    .line 5
    const/4 v2, 0x1

    .line 6
    new-array v3, v2, [Ljava/lang/Class;

    .line 8
    const-class v4, [Ljava/lang/String;

    .line 10
    const/4 v5, 0x0

    .line 11
    aput-object v4, v3, v5

    .line 13
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/xiaomi/keychainsdk/compat/KeyProtectionCompat;->builder:Ljava/lang/Object;

    .line 19
    new-array v2, v2, [Ljava/lang/Object;

    .line 21
    aput-object p1, v2, v5

    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_19} :catch_28
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_19} :catch_21
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_19} :catch_1a

    .line 26
    return-object p0

    .line 27
    :catch_1a
    move-exception p1

    .line 28
    new-instance v0, Ljava/lang/RuntimeException;

    .line 30
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 33
    throw v0

    .line 34
    :catch_21
    move-exception p1

    .line 35
    new-instance v0, Ljava/lang/RuntimeException;

    .line 37
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 40
    throw v0

    .line 41
    :catch_28
    move-exception p1

    .line 42
    new-instance v0, Ljava/lang/RuntimeException;

    .line 44
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 47
    throw v0
.end method

.method public setRandomizedEncryptionRequired(Z)Lcom/xiaomi/keychainsdk/compat/KeyProtectionCompat;
    .registers 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/keychainsdk/compat/KeyProtectionCompat;->clazz:Ljava/lang/Class;

    .line 3
    const-string v1, "setRandomizedEncryptionRequired"

    .line 5
    const/4 v2, 0x1

    .line 6
    new-array v3, v2, [Ljava/lang/Class;

    .line 8
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 10
    const/4 v5, 0x0

    .line 11
    aput-object v4, v3, v5

    .line 13
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/xiaomi/keychainsdk/compat/KeyProtectionCompat;->builder:Ljava/lang/Object;

    .line 19
    new-array v2, v2, [Ljava/lang/Object;

    .line 21
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 24
    move-result-object p1

    .line 25
    aput-object p1, v2, v5

    .line 27
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1d} :catch_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1d} :catch_25
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 30
    return-object p0

    .line 31
    :catch_1e
    move-exception p1

    .line 32
    new-instance v0, Ljava/lang/RuntimeException;

    .line 34
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 37
    throw v0

    .line 38
    :catch_25
    move-exception p1

    .line 39
    new-instance v0, Ljava/lang/RuntimeException;

    .line 41
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 44
    throw v0

    .line 45
    :catch_2c
    move-exception p1

    .line 46
    new-instance v0, Ljava/lang/RuntimeException;

    .line 48
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 51
    throw v0
.end method
