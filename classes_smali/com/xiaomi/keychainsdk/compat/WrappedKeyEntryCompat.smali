.class public Lcom/xiaomi/keychainsdk/compat/WrappedKeyEntryCompat;
.super Ljava/lang/Object;
.source "WrappedKeyEntryCompat.java"


# instance fields
.field private obj:Ljava/lang/Object;


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 13

    .line 1
    const-class v0, Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    :try_start_5
    const-string v1, "android.security.keystore.WrappedKeyEntry"

    .line 8
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x4

    .line 13
    new-array v3, v2, [Ljava/lang/Class;

    .line 15
    const-class v4, [B

    .line 17
    const/4 v5, 0x0

    .line 18
    aput-object v4, v3, v5

    .line 20
    const/4 v4, 0x1

    .line 21
    aput-object v0, v3, v4

    .line 23
    const/4 v6, 0x2

    .line 24
    aput-object v0, v3, v6

    .line 26
    const-class v0, Ljava/security/spec/AlgorithmParameterSpec;

    .line 28
    const/4 v7, 0x3

    .line 29
    aput-object v0, v3, v7

    .line 31
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 34
    move-result-object v0

    .line 35
    new-array v1, v2, [Ljava/lang/Object;

    .line 37
    aput-object p1, v1, v5

    .line 39
    aput-object p2, v1, v4

    .line 41
    aput-object p3, v1, v6

    .line 43
    aput-object p4, v1, v7

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lcom/xiaomi/keychainsdk/compat/WrappedKeyEntryCompat;->obj:Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_32} :catch_4f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_32} :catch_48
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_32} :catch_41
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_32} :catch_3a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_32} :catch_33

    .line 51
    return-void

    .line 52
    :catch_33
    move-exception p1

    .line 53
    new-instance p2, Ljava/lang/RuntimeException;

    .line 55
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 58
    throw p2

    .line 59
    :catch_3a
    move-exception p1

    .line 60
    new-instance p2, Ljava/lang/RuntimeException;

    .line 62
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 65
    throw p2

    .line 66
    :catch_41
    move-exception p1

    .line 67
    new-instance p2, Ljava/lang/RuntimeException;

    .line 69
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 72
    throw p2

    .line 73
    :catch_48
    move-exception p1

    .line 74
    new-instance p2, Ljava/lang/RuntimeException;

    .line 76
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 79
    throw p2

    .line 80
    :catch_4f
    move-exception p1

    .line 81
    new-instance p2, Ljava/lang/RuntimeException;

    .line 83
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 86
    throw p2
.end method


# virtual methods
.method public build()Ljava/security/KeyStore$Entry;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/keychainsdk/compat/WrappedKeyEntryCompat;->obj:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/security/KeyStore$Entry;

    .line 5
    return-object v0
.end method
