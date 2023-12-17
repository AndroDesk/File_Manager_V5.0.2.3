.class public Lcom/xiaomi/keychainsdk/compat/WrappedKeyEntryCompat;
.super Ljava/lang/Object;
.source "WrappedKeyEntryCompat.java"


# instance fields
.field private obj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 13

    const-class v0, Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_5
    const-string v1, "android.security.keystore.WrappedKeyEntry"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, [B

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v6, 0x2

    aput-object v0, v3, v6

    const-class v0, Ljava/security/spec/AlgorithmParameterSpec;

    const/4 v7, 0x3

    aput-object v0, v3, v7

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    aput-object p2, v1, v4

    aput-object p3, v1, v6

    aput-object p4, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/keychainsdk/compat/WrappedKeyEntryCompat;->obj:Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_32} :catch_4f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_32} :catch_48
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_32} :catch_41
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_32} :catch_3a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_32} :catch_33

    return-void

    :catch_33
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_3a
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_41
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_48
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_4f
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public build()Ljava/security/KeyStore$Entry;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/keychainsdk/compat/WrappedKeyEntryCompat;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/security/KeyStore$Entry;

    return-object v0
.end method
