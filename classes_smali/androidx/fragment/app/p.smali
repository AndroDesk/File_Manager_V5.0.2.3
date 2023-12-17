.class public Landroidx/fragment/app/p;
.super Ljava/lang/Object;
.source "FragmentFactory.java"


# static fields
.field private static final sClassCacheMap:Landroidx/collection/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/f<",
            "Ljava/lang/ClassLoader;",
            "Landroidx/collection/f<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroidx/collection/f;

    .line 3
    invoke-direct {v0}, Landroidx/collection/f;-><init>()V

    .line 6
    sput-object v0, Landroidx/fragment/app/p;->sClassCacheMap:Landroidx/collection/f;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFragmentClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Z
    .registers 2

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Landroidx/fragment/app/p;->loadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    move-result-object p0

    .line 5
    const-class p1, Landroidx/fragment/app/Fragment;

    .line 7
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 10
    move-result p0
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_a} :catch_b

    .line 11
    return p0

    .line 12
    :catch_b
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method private static loadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/fragment/app/p;->sClassCacheMap:Landroidx/collection/f;

    .line 3
    invoke-virtual {v0, p0}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Landroidx/collection/f;

    .line 9
    if-nez v1, :cond_12

    .line 11
    new-instance v1, Landroidx/collection/f;

    .line 13
    invoke-direct {v1}, Landroidx/collection/f;-><init>()V

    .line 16
    invoke-virtual {v0, p0, v1}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_12
    invoke-virtual {v1, p1}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/Class;

    .line 25
    if-nez v0, :cond_22

    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-static {p1, v0, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v1, p1, v0}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_22
    return-object v0
.end method

.method public static loadFragmentClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "Unable to instantiate fragment "

    .line 3
    :try_start_2
    invoke-static {p0, p1}, Landroidx/fragment/app/p;->loadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    move-result-object p0
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_6} :catch_14
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_6} :catch_7

    .line 7
    return-object p0

    .line 8
    :catch_7
    move-exception p0

    .line 9
    new-instance v1, Landroidx/fragment/app/Fragment$InstantiationException;

    .line 11
    const-string v2, ": make sure class is a valid subclass of Fragment"

    .line 13
    invoke-static {v0, p1, v2}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    invoke-direct {v1, p1, p0}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 20
    throw v1

    .line 21
    :catch_14
    move-exception p0

    .line 22
    new-instance v1, Landroidx/fragment/app/Fragment$InstantiationException;

    .line 24
    const-string v2, ": make sure class name exists"

    .line 26
    invoke-static {v0, p1, v2}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    invoke-direct {v1, p1, p0}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 33
    throw v1
.end method


# virtual methods
.method public instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 7

    .line 1
    const-string v0, ": make sure class name exists, is public, and has an empty constructor that is public"

    .line 3
    const-string v1, "Unable to instantiate fragment "

    .line 5
    :try_start_4
    invoke-static {p1, p2}, Landroidx/fragment/app/p;->loadFragmentClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    move-result-object p1

    .line 9
    const/4 v2, 0x0

    .line 10
    new-array v3, v2, [Ljava/lang/Class;

    .line 12
    invoke-virtual {p1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 15
    move-result-object p1

    .line 16
    new-array v2, v2, [Ljava/lang/Object;

    .line 18
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroidx/fragment/app/Fragment;
    :try_end_17
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_17} :catch_3d
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_17} :catch_32
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_17} :catch_25
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_17} :catch_18

    .line 24
    return-object p1

    .line 25
    :catch_18
    move-exception p1

    .line 26
    new-instance v0, Landroidx/fragment/app/Fragment$InstantiationException;

    .line 28
    const-string v2, ": calling Fragment constructor caused an exception"

    .line 30
    invoke-static {v1, p2, v2}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object p2

    .line 34
    invoke-direct {v0, p2, p1}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 37
    throw v0

    .line 38
    :catch_25
    move-exception p1

    .line 39
    new-instance v0, Landroidx/fragment/app/Fragment$InstantiationException;

    .line 41
    const-string v2, ": could not find Fragment constructor"

    .line 43
    invoke-static {v1, p2, v2}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object p2

    .line 47
    invoke-direct {v0, p2, p1}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 50
    throw v0

    .line 51
    :catch_32
    move-exception p1

    .line 52
    new-instance v2, Landroidx/fragment/app/Fragment$InstantiationException;

    .line 54
    invoke-static {v1, p2, v0}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object p2

    .line 58
    invoke-direct {v2, p2, p1}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 61
    throw v2

    .line 62
    :catch_3d
    move-exception p1

    .line 63
    new-instance v2, Landroidx/fragment/app/Fragment$InstantiationException;

    .line 65
    invoke-static {v1, p2, v0}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    move-result-object p2

    .line 69
    invoke-direct {v2, p2, p1}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 72
    throw v2
.end method
