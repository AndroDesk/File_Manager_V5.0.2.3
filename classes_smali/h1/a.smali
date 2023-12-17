.class public abstract Lh1/a;
.super Ljava/lang/Object;
.source "VersionedParcel.java"


# instance fields
.field public final a:Landroidx/collection/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/a<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroidx/collection/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/a<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroidx/collection/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/a<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/collection/a;Landroidx/collection/a;Landroidx/collection/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/a<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Landroidx/collection/a<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Landroidx/collection/a<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lh1/a;->a:Landroidx/collection/a;

    .line 6
    iput-object p2, p0, Lh1/a;->b:Landroidx/collection/a;

    .line 8
    iput-object p3, p0, Lh1/a;->c:Landroidx/collection/a;

    .line 10
    return-void
.end method


# virtual methods
.method public abstract a()Lh1/b;
.end method

.method public final b(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lh1/c;",
            ">;)",
            "Ljava/lang/Class;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh1/a;->c:Landroidx/collection/a;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Class;

    .line 13
    if-nez v0, :cond_3a

    .line 15
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x2

    .line 24
    new-array v1, v1, [Ljava/lang/Object;

    .line 26
    const/4 v2, 0x0

    .line 27
    aput-object v0, v1, v2

    .line 29
    const/4 v0, 0x1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 33
    move-result-object v3

    .line 34
    aput-object v3, v1, v0

    .line 36
    const-string v0, "%s.%sParcelizer"

    .line 38
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 45
    move-result-object v1

    .line 46
    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 49
    move-result-object v0

    .line 50
    iget-object v1, p0, Lh1/a;->c:Landroidx/collection/a;

    .line 52
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v1, p1, v0}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_3a
    return-object v0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 6

    .line 1
    const-class v0, Lh1/a;

    .line 3
    iget-object v1, p0, Lh1/a;->a:Landroidx/collection/a;

    .line 5
    invoke-virtual {v1, p1}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/reflect/Method;

    .line 11
    if-nez v1, :cond_28

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-static {p1, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 24
    move-result-object v1

    .line 25
    new-array v2, v2, [Ljava/lang/Class;

    .line 27
    const/4 v3, 0x0

    .line 28
    aput-object v0, v2, v3

    .line 30
    const-string v0, "read"

    .line 32
    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 35
    move-result-object v1

    .line 36
    iget-object v0, p0, Lh1/a;->a:Landroidx/collection/a;

    .line 38
    invoke-virtual {v0, p1, v1}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_28
    return-object v1
.end method

.method public final d(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6

    .line 1
    iget-object v0, p0, Lh1/a;->b:Landroidx/collection/a;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/reflect/Method;

    .line 13
    if-nez v0, :cond_2f

    .line 15
    invoke-virtual {p0, p1}, Lh1/a;->b(Ljava/lang/Class;)Ljava/lang/Class;

    .line 18
    move-result-object v0

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    const/4 v1, 0x2

    .line 23
    new-array v1, v1, [Ljava/lang/Class;

    .line 25
    const/4 v2, 0x0

    .line 26
    aput-object p1, v1, v2

    .line 28
    const/4 v2, 0x1

    .line 29
    const-class v3, Lh1/a;

    .line 31
    aput-object v3, v1, v2

    .line 33
    const-string v2, "write"

    .line 35
    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Lh1/a;->b:Landroidx/collection/a;

    .line 41
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v1, p1, v0}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_2f
    return-object v0
.end method

.method public abstract e()Z
.end method

.method public abstract f()[B
.end method

.method public abstract g()Ljava/lang/CharSequence;
.end method

.method public abstract h(I)Z
.end method

.method public abstract i()I
.end method

.method public abstract j()Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()TT;"
        }
    .end annotation
.end method

.method public abstract k()Ljava/lang/String;
.end method

.method public final l()Lh1/c;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lh1/c;",
            ">()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lh1/a;->k()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 8
    return-object v1

    .line 9
    :cond_8
    invoke-virtual {p0}, Lh1/a;->a()Lh1/b;

    .line 12
    move-result-object v2

    .line 13
    :try_start_c
    invoke-virtual {p0, v0}, Lh1/a;->c(Ljava/lang/String;)Ljava/lang/reflect/Method;

    .line 16
    move-result-object v0

    .line 17
    const/4 v3, 0x1

    .line 18
    new-array v3, v3, [Ljava/lang/Object;

    .line 20
    const/4 v4, 0x0

    .line 21
    aput-object v2, v3, v4

    .line 23
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lh1/c;
    :try_end_1c
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_1c} :catch_47
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_1c} :catch_2f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_1c} :catch_26
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_1c} :catch_1d

    .line 29
    return-object v0

    .line 30
    :catch_1d
    move-exception v0

    .line 31
    new-instance v1, Ljava/lang/RuntimeException;

    .line 33
    const-string v2, "VersionedParcel encountered ClassNotFoundException"

    .line 35
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    throw v1

    .line 39
    :catch_26
    move-exception v0

    .line 40
    new-instance v1, Ljava/lang/RuntimeException;

    .line 42
    const-string v2, "VersionedParcel encountered NoSuchMethodException"

    .line 44
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    throw v1

    .line 48
    :catch_2f
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 52
    move-result-object v1

    .line 53
    instance-of v1, v1, Ljava/lang/RuntimeException;

    .line 55
    if-eqz v1, :cond_3f

    .line 57
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Ljava/lang/RuntimeException;

    .line 63
    throw v0

    .line 64
    :cond_3f
    new-instance v1, Ljava/lang/RuntimeException;

    .line 66
    const-string v2, "VersionedParcel encountered InvocationTargetException"

    .line 68
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    throw v1

    .line 72
    :catch_47
    move-exception v0

    .line 73
    new-instance v1, Ljava/lang/RuntimeException;

    .line 75
    const-string v2, "VersionedParcel encountered IllegalAccessException"

    .line 77
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    throw v1
.end method

.method public abstract m(I)V
.end method

.method public abstract n(Z)V
.end method

.method public abstract o([B)V
.end method

.method public abstract p(Ljava/lang/CharSequence;)V
.end method

.method public abstract q(I)V
.end method

.method public abstract r(Landroid/os/Parcelable;)V
.end method

.method public abstract s(Ljava/lang/String;)V
.end method

.method public final t(Lh1/c;)V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_7

    .line 4
    invoke-virtual {p0, v0}, Lh1/a;->s(Ljava/lang/String;)V

    .line 7
    return-void

    .line 8
    :cond_7
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p0, v1}, Lh1/a;->b(Ljava/lang/Class;)Ljava/lang/Class;

    .line 15
    move-result-object v1
    :try_end_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_f} :catch_65

    .line 16
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p0, v1}, Lh1/a;->s(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lh1/a;->a()Lh1/b;

    .line 26
    move-result-object v1

    .line 27
    :try_start_1a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {p0, v2}, Lh1/a;->d(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 34
    move-result-object v2

    .line 35
    const/4 v3, 0x2

    .line 36
    new-array v3, v3, [Ljava/lang/Object;

    .line 38
    const/4 v4, 0x0

    .line 39
    aput-object p1, v3, v4

    .line 41
    const/4 p1, 0x1

    .line 42
    aput-object v1, v3, p1

    .line 44
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/lang/IllegalAccessException; {:try_start_1a .. :try_end_2e} :catch_5c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1a .. :try_end_2e} :catch_44
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1a .. :try_end_2e} :catch_3b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1a .. :try_end_2e} :catch_32

    .line 47
    invoke-virtual {v1}, Lh1/b;->u()V

    .line 50
    return-void

    .line 51
    :catch_32
    move-exception p1

    .line 52
    new-instance v0, Ljava/lang/RuntimeException;

    .line 54
    const-string v1, "VersionedParcel encountered ClassNotFoundException"

    .line 56
    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    throw v0

    .line 60
    :catch_3b
    move-exception p1

    .line 61
    new-instance v0, Ljava/lang/RuntimeException;

    .line 63
    const-string v1, "VersionedParcel encountered NoSuchMethodException"

    .line 65
    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    throw v0

    .line 69
    :catch_44
    move-exception p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 73
    move-result-object v0

    .line 74
    instance-of v0, v0, Ljava/lang/RuntimeException;

    .line 76
    if-eqz v0, :cond_54

    .line 78
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Ljava/lang/RuntimeException;

    .line 84
    throw p1

    .line 85
    :cond_54
    new-instance v0, Ljava/lang/RuntimeException;

    .line 87
    const-string v1, "VersionedParcel encountered InvocationTargetException"

    .line 89
    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    throw v0

    .line 93
    :catch_5c
    move-exception p1

    .line 94
    new-instance v0, Ljava/lang/RuntimeException;

    .line 96
    const-string v1, "VersionedParcel encountered IllegalAccessException"

    .line 98
    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    throw v0

    .line 102
    :catch_65
    move-exception v0

    .line 103
    new-instance v1, Ljava/lang/RuntimeException;

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    .line 107
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string p1, " does not have a Parcelizer"

    .line 123
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object p1

    .line 130
    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    throw v1
.end method
