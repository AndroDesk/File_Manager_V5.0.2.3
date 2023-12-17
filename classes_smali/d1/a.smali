.class public final Ld1/a;
.super Ljava/lang/Object;
.source "AppInitializer.java"


# static fields
.field public static volatile d:Ld1/a;

.field public static final e:Ljava/lang/Object;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Ljava/util/HashSet;

.field public final c:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Ld1/a;->e:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Ld1/a;->c:Landroid/content/Context;

    .line 10
    new-instance p1, Ljava/util/HashSet;

    .line 12
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 15
    iput-object p1, p0, Ld1/a;->b:Ljava/util/HashSet;

    .line 17
    new-instance p1, Ljava/util/HashMap;

    .line 19
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 22
    iput-object p1, p0, Ld1/a;->a:Ljava/util/HashMap;

    .line 24
    return-void
.end method

.method public static c(Landroid/content/Context;)Ld1/a;
    .registers 3

    .line 1
    sget-object v0, Ld1/a;->d:Ld1/a;

    .line 3
    if-nez v0, :cond_17

    .line 5
    sget-object v0, Ld1/a;->e:Ljava/lang/Object;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    sget-object v1, Ld1/a;->d:Ld1/a;

    .line 10
    if-nez v1, :cond_12

    .line 12
    new-instance v1, Ld1/a;

    .line 14
    invoke-direct {v1, p0}, Ld1/a;-><init>(Landroid/content/Context;)V

    .line 17
    sput-object v1, Ld1/a;->d:Ld1/a;

    .line 19
    :cond_12
    monitor-exit v0

    .line 20
    goto :goto_17

    .line 21
    :catchall_14
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    .line 23
    throw p0

    .line 24
    :cond_17
    :goto_17
    sget-object p0, Ld1/a;->d:Ld1/a;

    .line 26
    return-object p0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .registers 7

    .line 1
    iget-object v0, p0, Ld1/a;->c:Landroid/content/Context;

    .line 3
    sget v1, Ld1/c;->androidx_startup:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    if-eqz p1, :cond_5d

    .line 11
    :try_start_a
    new-instance v1, Ljava/util/HashSet;

    .line 13
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 16
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 19
    move-result-object v2

    .line 20
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v2

    .line 24
    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_40

    .line 30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Ljava/lang/String;

    .line 36
    const/4 v4, 0x0

    .line 37
    invoke-virtual {p1, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_17

    .line 47
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 50
    move-result-object v3

    .line 51
    const-class v4, Ld1/b;

    .line 53
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_17

    .line 59
    iget-object v4, p0, Ld1/a;->b:Ljava/util/HashSet;

    .line 61
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 64
    goto :goto_17

    .line 65
    :cond_40
    iget-object p1, p0, Ld1/a;->b:Ljava/util/HashSet;

    .line 67
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 70
    move-result-object p1

    .line 71
    :goto_46
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_5d

    .line 77
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Ljava/lang/Class;

    .line 83
    invoke-virtual {p0, v0, v1}, Ld1/a;->b(Ljava/lang/Class;Ljava/util/HashSet;)Ljava/lang/Object;
    :try_end_55
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_55} :catch_56

    .line 86
    goto :goto_46

    .line 87
    :catch_56
    move-exception p1

    .line 88
    new-instance v0, Landroidx/startup/StartupException;

    .line 90
    invoke-direct {v0, p1}, Landroidx/startup/StartupException;-><init>(Ljava/lang/Throwable;)V

    .line 93
    throw v0

    .line 94
    :cond_5d
    return-void
.end method

.method public final b(Ljava/lang/Class;Ljava/util/HashSet;)Ljava/lang/Object;
    .registers 7

    .line 1
    invoke-static {}, Le1/a;->a()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_d

    .line 7
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 14
    :cond_d
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    if-nez v0, :cond_74

    .line 21
    iget-object v0, p0, Ld1/a;->a:Ljava/util/HashMap;

    .line 23
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_6a

    .line 29
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_89

    .line 32
    :try_start_1f
    new-array v0, v1, [Ljava/lang/Class;

    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 37
    move-result-object v0

    .line 38
    new-array v1, v1, [Ljava/lang/Object;

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Ld1/b;

    .line 46
    invoke-interface {v0}, Ld1/b;->dependencies()Ljava/util/List;

    .line 49
    move-result-object v1

    .line 50
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_55

    .line 56
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 59
    move-result-object v1

    .line 60
    :cond_3b
    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_55

    .line 66
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Ljava/lang/Class;

    .line 72
    iget-object v3, p0, Ld1/a;->a:Ljava/util/HashMap;

    .line 74
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 77
    move-result v3

    .line 78
    if-nez v3, :cond_3b

    .line 80
    invoke-virtual {p0, v2, p2}, Ld1/a;->b(Ljava/lang/Class;Ljava/util/HashSet;)Ljava/lang/Object;

    .line 83
    goto :goto_3b

    .line 84
    :catchall_53
    move-exception p1

    .line 85
    goto :goto_64

    .line 86
    :cond_55
    iget-object v1, p0, Ld1/a;->c:Landroid/content/Context;

    .line 88
    invoke-interface {v0, v1}, Ld1/b;->a(Landroid/content/Context;)Ljava/lang/Object;

    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 95
    iget-object p2, p0, Ld1/a;->a:Ljava/util/HashMap;

    .line 97
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_63
    .catchall {:try_start_1f .. :try_end_63} :catchall_53

    .line 100
    goto :goto_70

    .line 101
    :goto_64
    :try_start_64
    new-instance p2, Landroidx/startup/StartupException;

    .line 103
    invoke-direct {p2, p1}, Landroidx/startup/StartupException;-><init>(Ljava/lang/Throwable;)V

    .line 106
    throw p2

    .line 107
    :cond_6a
    iget-object p2, p0, Ld1/a;->a:Ljava/util/HashMap;

    .line 109
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    move-result-object v0
    :try_end_70
    .catchall {:try_start_64 .. :try_end_70} :catchall_89

    .line 113
    :goto_70
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 116
    return-object v0

    .line 117
    :cond_74
    :try_start_74
    const-string p2, "Cannot initialize %s. Cycle detected."

    .line 119
    const/4 v0, 0x1

    .line 120
    new-array v0, v0, [Ljava/lang/Object;

    .line 122
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 125
    move-result-object p1

    .line 126
    aput-object p1, v0, v1

    .line 128
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 131
    move-result-object p1

    .line 132
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 134
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 137
    throw p2
    :try_end_89
    .catchall {:try_start_74 .. :try_end_89} :catchall_89

    .line 138
    :catchall_89
    move-exception p1

    .line 139
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 142
    throw p1
.end method
