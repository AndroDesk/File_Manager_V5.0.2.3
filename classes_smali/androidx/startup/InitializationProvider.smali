.class public Landroidx/startup/InitializationProvider;
.super Landroid/content/ContentProvider;
.source "InitializationProvider.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 3
    const-string p2, "Not allowed."

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 3
    const-string v0, "Not allowed."

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 3
    const-string p2, "Not allowed."

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public final onCreate()Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_4d

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_4b

    .line 13
    invoke-static {v0}, Ld1/a;->c(Landroid/content/Context;)Ld1/a;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    :try_start_13
    const-string v1, "Startup"

    .line 22
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 25
    new-instance v1, Landroid/content/ComponentName;

    .line 27
    iget-object v2, v0, Ld1/a;->c:Landroid/content/Context;

    .line 29
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    const-class v3, Landroidx/startup/InitializationProvider;

    .line 35
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 38
    move-result-object v3

    .line 39
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v2, v0, Ld1/a;->c:Landroid/content/Context;

    .line 44
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 47
    move-result-object v2

    .line 48
    const/16 v3, 0x80

    .line 50
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    .line 53
    move-result-object v1

    .line 54
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    .line 56
    invoke-virtual {v0, v1}, Ld1/a;->a(Landroid/os/Bundle;)V
    :try_end_3a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_3a} :catch_40
    .catchall {:try_start_13 .. :try_end_3a} :catchall_3e

    .line 59
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 62
    goto :goto_4b

    .line 63
    :catchall_3e
    move-exception v0

    .line 64
    goto :goto_47

    .line 65
    :catch_40
    move-exception v0

    .line 66
    :try_start_41
    new-instance v1, Landroidx/startup/StartupException;

    .line 68
    invoke-direct {v1, v0}, Landroidx/startup/StartupException;-><init>(Ljava/lang/Throwable;)V

    .line 71
    throw v1
    :try_end_47
    .catchall {:try_start_41 .. :try_end_47} :catchall_3e

    .line 72
    :goto_47
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 75
    throw v0

    .line 76
    :cond_4b
    :goto_4b
    const/4 v0, 0x1

    .line 77
    return v0

    .line 78
    :cond_4d
    new-instance v0, Landroidx/startup/StartupException;

    .line 80
    const-string v1, "Context cannot be null"

    .line 82
    invoke-direct {v0, v1}, Landroidx/startup/StartupException;-><init>(Ljava/lang/String;)V

    .line 85
    throw v0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 3
    const-string p2, "Not allowed."

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 3
    const-string p2, "Not allowed."

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method
