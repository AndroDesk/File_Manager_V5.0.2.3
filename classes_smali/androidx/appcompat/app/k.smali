.class public abstract Landroidx/appcompat/app/k;
.super Ljava/lang/Object;
.source "AppCompatDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/k$b;,
        Landroidx/appcompat/app/k$a;
    }
.end annotation


# static fields
.field public static a:Landroidx/appcompat/app/t$a;

.field public static b:I

.field public static c:Li0/f;

.field public static d:Li0/f;

.field public static e:Ljava/lang/Boolean;

.field public static f:Z

.field public static g:Ljava/lang/Object;

.field public static h:Landroid/content/Context;

.field public static final i:Landroidx/collection/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/b<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/appcompat/app/k;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final j:Ljava/lang/Object;

.field public static final k:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Landroidx/appcompat/app/t$a;

    .line 3
    new-instance v1, Landroidx/appcompat/app/t$b;

    .line 5
    invoke-direct {v1}, Landroidx/appcompat/app/t$b;-><init>()V

    .line 8
    invoke-direct {v0, v1}, Landroidx/appcompat/app/t$a;-><init>(Landroidx/appcompat/app/t$b;)V

    .line 11
    sput-object v0, Landroidx/appcompat/app/k;->a:Landroidx/appcompat/app/t$a;

    .line 13
    const/16 v0, -0x64

    .line 15
    sput v0, Landroidx/appcompat/app/k;->b:I

    .line 17
    const/4 v0, 0x0

    .line 18
    sput-object v0, Landroidx/appcompat/app/k;->c:Li0/f;

    .line 20
    sput-object v0, Landroidx/appcompat/app/k;->d:Li0/f;

    .line 22
    sput-object v0, Landroidx/appcompat/app/k;->e:Ljava/lang/Boolean;

    .line 24
    const/4 v1, 0x0

    .line 25
    sput-boolean v1, Landroidx/appcompat/app/k;->f:Z

    .line 27
    sput-object v0, Landroidx/appcompat/app/k;->g:Ljava/lang/Object;

    .line 29
    sput-object v0, Landroidx/appcompat/app/k;->h:Landroid/content/Context;

    .line 31
    new-instance v0, Landroidx/collection/b;

    .line 33
    invoke-direct {v0, v1}, Landroidx/collection/b;-><init>(I)V

    .line 36
    sput-object v0, Landroidx/appcompat/app/k;->i:Landroidx/collection/b;

    .line 38
    new-instance v0, Ljava/lang/Object;

    .line 40
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 43
    sput-object v0, Landroidx/appcompat/app/k;->j:Ljava/lang/Object;

    .line 45
    new-instance v0, Ljava/lang/Object;

    .line 47
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 50
    sput-object v0, Landroidx/appcompat/app/k;->k:Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static g()Ljava/lang/Object;
    .registers 2

    .line 1
    sget-object v0, Landroidx/appcompat/app/k;->g:Ljava/lang/Object;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-object v0

    .line 6
    :cond_5
    sget-object v0, Landroidx/appcompat/app/k;->h:Landroid/content/Context;

    .line 8
    if-nez v0, :cond_2f

    .line 10
    sget-object v0, Landroidx/appcompat/app/k;->i:Landroidx/collection/b;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    new-instance v1, Landroidx/collection/b$a;

    .line 17
    invoke-direct {v1, v0}, Landroidx/collection/b$a;-><init>(Landroidx/collection/b;)V

    .line 20
    :cond_13
    invoke-virtual {v1}, Landroidx/collection/c;->hasNext()Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2f

    .line 26
    invoke-virtual {v1}, Landroidx/collection/c;->next()Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 32
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroidx/appcompat/app/k;

    .line 38
    if-eqz v0, :cond_13

    .line 40
    invoke-virtual {v0}, Landroidx/appcompat/app/k;->e()Landroid/content/Context;

    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_13

    .line 46
    sput-object v0, Landroidx/appcompat/app/k;->h:Landroid/content/Context;

    .line 48
    :cond_2f
    sget-object v0, Landroidx/appcompat/app/k;->h:Landroid/content/Context;

    .line 50
    if-eqz v0, :cond_3b

    .line 52
    const-string v1, "locale"

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    move-result-object v0

    .line 58
    sput-object v0, Landroidx/appcompat/app/k;->g:Ljava/lang/Object;

    .line 60
    :cond_3b
    sget-object v0, Landroidx/appcompat/app/k;->g:Ljava/lang/Object;

    .line 62
    return-object v0
.end method

.method public static l(Landroid/content/Context;)Z
    .registers 5

    .line 1
    sget-object v0, Landroidx/appcompat/app/k;->e:Ljava/lang/Boolean;

    .line 3
    if-nez v0, :cond_37

    .line 5
    :try_start_4
    sget v0, Landroidx/appcompat/app/AppLocalesMetadataHolderService;->a:I

    .line 7
    invoke-static {}, Landroidx/appcompat/app/AppLocalesMetadataHolderService$a;->a()I

    .line 10
    move-result v0

    .line 11
    or-int/lit16 v0, v0, 0x80

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Landroid/content/ComponentName;

    .line 19
    const-class v3, Landroidx/appcompat/app/AppLocalesMetadataHolderService;

    .line 21
    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    .line 27
    move-result-object p0

    .line 28
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 30
    if-eqz p0, :cond_37

    .line 32
    const-string v0, "autoStoreLocales"

    .line 34
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 37
    move-result p0

    .line 38
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 41
    move-result-object p0

    .line 42
    sput-object p0, Landroidx/appcompat/app/k;->e:Ljava/lang/Boolean;
    :try_end_2b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_2b} :catch_2c

    .line 44
    goto :goto_37

    .line 45
    :catch_2c
    const-string p0, "AppCompatDelegate"

    .line 47
    const-string v0, "Checking for metadata for AppLocalesMetadataHolderService : Service not found"

    .line 49
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 54
    sput-object p0, Landroidx/appcompat/app/k;->e:Ljava/lang/Boolean;

    .line 56
    :cond_37
    :goto_37
    sget-object p0, Landroidx/appcompat/app/k;->e:Ljava/lang/Boolean;

    .line 58
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 61
    move-result p0

    .line 62
    return p0
.end method

.method public static s(Landroidx/appcompat/app/k;)V
    .registers 4

    .line 1
    sget-object v0, Landroidx/appcompat/app/k;->j:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Landroidx/appcompat/app/k;->i:Landroidx/collection/b;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    new-instance v2, Landroidx/collection/b$a;

    .line 11
    invoke-direct {v2, v1}, Landroidx/collection/b$a;-><init>(Landroidx/collection/b;)V

    .line 14
    :cond_d
    :goto_d
    invoke-virtual {v2}, Landroidx/collection/c;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_27

    .line 20
    invoke-virtual {v2}, Landroidx/collection/c;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 26
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroidx/appcompat/app/k;

    .line 32
    if-eq v1, p0, :cond_23

    .line 34
    if-nez v1, :cond_d

    .line 36
    :cond_23
    invoke-virtual {v2}, Landroidx/collection/c;->remove()V

    .line 39
    goto :goto_d

    .line 40
    :cond_27
    monitor-exit v0

    .line 41
    return-void

    .line 42
    :catchall_29
    move-exception p0

    .line 43
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    .line 44
    throw p0
.end method

.method public static z(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-static {p0}, Landroidx/appcompat/app/k;->l(Landroid/content/Context;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-static {}, Li0/a;->a()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1d

    .line 14
    sget-boolean v0, Landroidx/appcompat/app/k;->f:Z

    .line 16
    if-nez v0, :cond_59

    .line 18
    sget-object v0, Landroidx/appcompat/app/k;->a:Landroidx/appcompat/app/t$a;

    .line 20
    new-instance v1, Landroidx/appcompat/app/j;

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-direct {v1, p0, v2}, Landroidx/appcompat/app/j;-><init>(Landroid/content/Context;I)V

    .line 26
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/t$a;->execute(Ljava/lang/Runnable;)V

    .line 29
    goto :goto_59

    .line 30
    :cond_1d
    sget-object v0, Landroidx/appcompat/app/k;->k:Ljava/lang/Object;

    .line 32
    monitor-enter v0

    .line 33
    :try_start_20
    sget-object v1, Landroidx/appcompat/app/k;->c:Li0/f;

    .line 35
    if-nez v1, :cond_43

    .line 37
    sget-object v1, Landroidx/appcompat/app/k;->d:Li0/f;

    .line 39
    if-nez v1, :cond_32

    .line 41
    invoke-static {p0}, Landroidx/appcompat/app/t;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 45
    invoke-static {p0}, Li0/f;->a(Ljava/lang/String;)Li0/f;

    .line 48
    move-result-object p0

    .line 49
    sput-object p0, Landroidx/appcompat/app/k;->d:Li0/f;

    .line 51
    :cond_32
    sget-object p0, Landroidx/appcompat/app/k;->d:Li0/f;

    .line 53
    iget-object p0, p0, Li0/f;->a:Li0/g;

    .line 55
    invoke-interface {p0}, Li0/g;->isEmpty()Z

    .line 58
    move-result p0

    .line 59
    if-eqz p0, :cond_3e

    .line 61
    monitor-exit v0

    .line 62
    return-void

    .line 63
    :cond_3e
    sget-object p0, Landroidx/appcompat/app/k;->d:Li0/f;

    .line 65
    sput-object p0, Landroidx/appcompat/app/k;->c:Li0/f;

    .line 67
    goto :goto_58

    .line 68
    :cond_43
    sget-object v2, Landroidx/appcompat/app/k;->d:Li0/f;

    .line 70
    invoke-virtual {v1, v2}, Li0/f;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result v1

    .line 74
    if-nez v1, :cond_58

    .line 76
    sget-object v1, Landroidx/appcompat/app/k;->c:Li0/f;

    .line 78
    sput-object v1, Landroidx/appcompat/app/k;->d:Li0/f;

    .line 80
    iget-object v1, v1, Li0/f;->a:Li0/g;

    .line 82
    invoke-interface {v1}, Li0/g;->a()Ljava/lang/String;

    .line 85
    move-result-object v1

    .line 86
    invoke-static {p0, v1}, Landroidx/appcompat/app/t;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    :cond_58
    :goto_58
    monitor-exit v0

    .line 90
    :cond_59
    :goto_59
    return-void

    .line 91
    :catchall_5a
    move-exception p0

    .line 92
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_20 .. :try_end_5c} :catchall_5a

    .line 93
    throw p0
.end method


# virtual methods
.method public abstract a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public c(Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    return-object p1
.end method

.method public abstract d(I)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation
.end method

.method public e()Landroid/content/Context;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public f()I
    .registers 2

    const/16 v0, -0x64

    return v0
.end method

.method public abstract h()Landroid/view/MenuInflater;
.end method

.method public abstract i()Landroidx/appcompat/app/a0;
.end method

.method public abstract j()V
.end method

.method public abstract k()V
.end method

.method public abstract m(Landroid/content/res/Configuration;)V
.end method

.method public abstract n()V
.end method

.method public abstract o()V
.end method

.method public abstract p()V
.end method

.method public abstract q()V
.end method

.method public abstract r()V
.end method

.method public abstract t(I)Z
.end method

.method public abstract u(I)V
.end method

.method public abstract v(Landroid/view/View;)V
.end method

.method public abstract w(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public x(I)V
    .registers 2

    return-void
.end method

.method public abstract y(Ljava/lang/CharSequence;)V
.end method
