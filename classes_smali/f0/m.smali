.class public final Lf0/m;
.super Lf0/l;
.source "TypefaceCompatApi28Impl.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lf0/l;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final j(Ljava/lang/Object;)Landroid/graphics/Typeface;
    .registers 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lf0/l;->f:Ljava/lang/Class;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {v0, v2, p1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 12
    iget-object p1, p0, Lf0/l;->l:Ljava/lang/reflect/Method;

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x4

    .line 16
    new-array v4, v4, [Ljava/lang/Object;

    .line 18
    aput-object v0, v4, v2

    .line 20
    const-string v0, "sans-serif"

    .line 22
    aput-object v0, v4, v1

    .line 24
    const/4 v0, 0x2

    .line 25
    const/4 v1, -0x1

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object v2

    .line 30
    aput-object v2, v4, v0

    .line 32
    const/4 v0, 0x3

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object v1

    .line 37
    aput-object v1, v4, v0

    .line 39
    invoke-virtual {p1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Landroid/graphics/Typeface;
    :try_end_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_2c} :catch_2f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_2c} :catch_2d

    .line 45
    return-object p1

    .line 46
    :catch_2d
    move-exception p1

    .line 47
    goto :goto_30

    .line 48
    :catch_2f
    move-exception p1

    .line 49
    :goto_30
    new-instance v0, Ljava/lang/RuntimeException;

    .line 51
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 54
    throw v0
.end method

.method public final o(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 5
    move-result-object p1

    .line 6
    const-class v1, Landroid/graphics/Typeface;

    .line 8
    const/4 v2, 0x4

    .line 9
    new-array v2, v2, [Ljava/lang/Class;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    move-result-object p1

    .line 15
    const/4 v3, 0x0

    .line 16
    aput-object p1, v2, v3

    .line 18
    const-class p1, Ljava/lang/String;

    .line 20
    aput-object p1, v2, v0

    .line 22
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 24
    const/4 v3, 0x2

    .line 25
    aput-object p1, v2, v3

    .line 27
    const/4 v3, 0x3

    .line 28
    aput-object p1, v2, v3

    .line 30
    const-string p1, "createFromFamiliesWithDefault"

    .line 32
    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 39
    return-object p1
.end method
