.class public final Ld3/a$a;
.super Ljava/lang/Object;
.source "PlatformImplementations.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Ljava/lang/reflect/Method;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 10

    .line 1
    const-class v0, Ljava/lang/Throwable;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    .line 6
    move-result-object v1

    .line 7
    const-string v2, "throwableMethods"

    .line 9
    invoke-static {v1, v2}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    array-length v2, v1

    .line 13
    const/4 v3, 0x0

    .line 14
    move v4, v3

    .line 15
    :goto_e
    const/4 v5, 0x0

    .line 16
    if-ge v4, v2, :cond_3d

    .line 18
    aget-object v6, v1, v4

    .line 20
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 23
    move-result-object v7

    .line 24
    const-string v8, "addSuppressed"

    .line 26
    invoke-static {v7, v8}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    move-result v7

    .line 30
    const/4 v8, 0x1

    .line 31
    if-eqz v7, :cond_35

    .line 33
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 36
    move-result-object v7

    .line 37
    const-string v9, "it.parameterTypes"

    .line 39
    invoke-static {v7, v9}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    array-length v9, v7

    .line 43
    if-ne v9, v8, :cond_2e

    .line 45
    aget-object v5, v7, v3

    .line 47
    :cond_2e
    invoke-static {v5, v0}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_35

    .line 53
    goto :goto_36

    .line 54
    :cond_35
    move v8, v3

    .line 55
    :goto_36
    if-eqz v8, :cond_3a

    .line 57
    move-object v5, v6

    .line 58
    goto :goto_3d

    .line 59
    :cond_3a
    add-int/lit8 v4, v4, 0x1

    .line 61
    goto :goto_e

    .line 62
    :cond_3d
    :goto_3d
    sput-object v5, Ld3/a$a;->a:Ljava/lang/reflect/Method;

    .line 64
    array-length v0, v1

    .line 65
    :goto_40
    if-ge v3, v0, :cond_54

    .line 67
    aget-object v2, v1, v3

    .line 69
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 72
    move-result-object v2

    .line 73
    const-string v4, "getSuppressed"

    .line 75
    invoke-static {v2, v4}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_51

    .line 81
    goto :goto_54

    .line 82
    :cond_51
    add-int/lit8 v3, v3, 0x1

    .line 84
    goto :goto_40

    .line 85
    :cond_54
    :goto_54
    return-void
.end method
