.class public final Landroidx/lifecycle/b$a;
.super Ljava/lang/Object;
.source "ClassesInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/lifecycle/b$b;",
            "Landroidx/lifecycle/Lifecycle$Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/lifecycle/b$a;->b:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    iput-object v0, p0, Landroidx/lifecycle/b$a;->a:Ljava/util/HashMap;

    .line 13
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object p1

    .line 21
    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_44

    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/util/Map$Entry;

    .line 33
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Landroidx/lifecycle/Lifecycle$Event;

    .line 39
    iget-object v2, p0, Landroidx/lifecycle/b$a;->a:Ljava/util/HashMap;

    .line 41
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Ljava/util/List;

    .line 47
    if-nez v2, :cond_3a

    .line 49
    new-instance v2, Ljava/util/ArrayList;

    .line 51
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 54
    iget-object v3, p0, Landroidx/lifecycle/b$a;->a:Ljava/util/HashMap;

    .line 56
    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_3a
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroidx/lifecycle/b$b;

    .line 65
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    goto :goto_14

    .line 69
    :cond_44
    return-void
.end method

.method public static a(Ljava/util/List;Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$Event;Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/lifecycle/b$b;",
            ">;",
            "Landroidx/lifecycle/m;",
            "Landroidx/lifecycle/Lifecycle$Event;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_52

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    :goto_8
    if-ltz v0, :cond_52

    .line 11
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Landroidx/lifecycle/b$b;

    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    :try_start_13
    iget v3, v2, Landroidx/lifecycle/b$b;->a:I

    .line 22
    const/4 v4, 0x0

    .line 23
    if-eqz v3, :cond_34

    .line 25
    if-eq v3, v1, :cond_2a

    .line 27
    const/4 v5, 0x2

    .line 28
    if-eq v3, v5, :cond_1e

    .line 30
    goto :goto_3b

    .line 31
    :cond_1e
    iget-object v2, v2, Landroidx/lifecycle/b$b;->b:Ljava/lang/reflect/Method;

    .line 33
    new-array v3, v5, [Ljava/lang/Object;

    .line 35
    aput-object p1, v3, v4

    .line 37
    aput-object p2, v3, v1

    .line 39
    invoke-virtual {v2, p3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    goto :goto_3b

    .line 43
    :cond_2a
    iget-object v2, v2, Landroidx/lifecycle/b$b;->b:Ljava/lang/reflect/Method;

    .line 45
    new-array v3, v1, [Ljava/lang/Object;

    .line 47
    aput-object p1, v3, v4

    .line 49
    invoke-virtual {v2, p3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    goto :goto_3b

    .line 53
    :cond_34
    iget-object v2, v2, Landroidx/lifecycle/b$b;->b:Ljava/lang/reflect/Method;

    .line 55
    new-array v3, v4, [Ljava/lang/Object;

    .line 57
    invoke-virtual {v2, p3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_13 .. :try_end_3b} :catch_45
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_3b} :catch_3e

    .line 60
    :goto_3b
    add-int/lit8 v0, v0, -0x1

    .line 62
    goto :goto_8

    .line 63
    :catch_3e
    move-exception p0

    .line 64
    new-instance p1, Ljava/lang/RuntimeException;

    .line 66
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 69
    throw p1

    .line 70
    :catch_45
    move-exception p0

    .line 71
    new-instance p1, Ljava/lang/RuntimeException;

    .line 73
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 76
    move-result-object p0

    .line 77
    const-string p2, "Failed to call observer method"

    .line 79
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    throw p1

    .line 83
    :cond_52
    return-void
.end method
