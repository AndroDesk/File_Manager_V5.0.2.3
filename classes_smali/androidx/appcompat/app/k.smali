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

    new-instance v0, Landroidx/appcompat/app/t$a;

    new-instance v1, Landroidx/appcompat/app/t$b;

    invoke-direct {v1}, Landroidx/appcompat/app/t$b;-><init>()V

    invoke-direct {v0, v1}, Landroidx/appcompat/app/t$a;-><init>(Landroidx/appcompat/app/t$b;)V

    sput-object v0, Landroidx/appcompat/app/k;->a:Landroidx/appcompat/app/t$a;

    const/16 v0, -0x64

    sput v0, Landroidx/appcompat/app/k;->b:I

    const/4 v0, 0x0

    sput-object v0, Landroidx/appcompat/app/k;->c:Li0/f;

    sput-object v0, Landroidx/appcompat/app/k;->d:Li0/f;

    sput-object v0, Landroidx/appcompat/app/k;->e:Ljava/lang/Boolean;

    const/4 v1, 0x0

    sput-boolean v1, Landroidx/appcompat/app/k;->f:Z

    sput-object v0, Landroidx/appcompat/app/k;->g:Ljava/lang/Object;

    sput-object v0, Landroidx/appcompat/app/k;->h:Landroid/content/Context;

    new-instance v0, Landroidx/collection/b;

    invoke-direct {v0, v1}, Landroidx/collection/b;-><init>(I)V

    sput-object v0, Landroidx/appcompat/app/k;->i:Landroidx/collection/b;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/appcompat/app/k;->j:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/appcompat/app/k;->k:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static g()Ljava/lang/Object;
    .registers 2

    sget-object v0, Landroidx/appcompat/app/k;->g:Ljava/lang/Object;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    sget-object v0, Landroidx/appcompat/app/k;->h:Landroid/content/Context;

    if-nez v0, :cond_2f

    sget-object v0, Landroidx/appcompat/app/k;->i:Landroidx/collection/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/collection/b$a;

    invoke-direct {v1, v0}, Landroidx/collection/b$a;-><init>(Landroidx/collection/b;)V

    :cond_13
    invoke-virtual {v1}, Landroidx/collection/c;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {v1}, Landroidx/collection/c;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/k;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroidx/appcompat/app/k;->e()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_13

    sput-object v0, Landroidx/appcompat/app/k;->h:Landroid/content/Context;

    :cond_2f
    sget-object v0, Landroidx/appcompat/app/k;->h:Landroid/content/Context;

    if-eqz v0, :cond_3b

    const-string v1, "locale"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/app/k;->g:Ljava/lang/Object;

    :cond_3b
    sget-object v0, Landroidx/appcompat/app/k;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public static l(Landroid/content/Context;)Z
    .registers 5

    sget-object v0, Landroidx/appcompat/app/k;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_37

    :try_start_4
    sget v0, Landroidx/appcompat/app/AppLocalesMetadataHolderService;->a:I

    invoke-static {}, Landroidx/appcompat/app/AppLocalesMetadataHolderService$a;->a()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Landroidx/appcompat/app/AppLocalesMetadataHolderService;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_37

    const-string v0, "autoStoreLocales"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Landroidx/appcompat/app/k;->e:Ljava/lang/Boolean;
    :try_end_2b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_2b} :catch_2c

    goto :goto_37

    :catch_2c
    const-string p0, "AppCompatDelegate"

    const-string v0, "Checking for metadata for AppLocalesMetadataHolderService : Service not found"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object p0, Landroidx/appcompat/app/k;->e:Ljava/lang/Boolean;

    :cond_37
    :goto_37
    sget-object p0, Landroidx/appcompat/app/k;->e:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static s(Landroidx/appcompat/app/k;)V
    .registers 4

    sget-object v0, Landroidx/appcompat/app/k;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroidx/appcompat/app/k;->i:Landroidx/collection/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/collection/b$a;

    invoke-direct {v2, v1}, Landroidx/collection/b$a;-><init>(Landroidx/collection/b;)V

    :cond_d
    :goto_d
    invoke-virtual {v2}, Landroidx/collection/c;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {v2}, Landroidx/collection/c;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/app/k;

    if-eq v1, p0, :cond_23

    if-nez v1, :cond_d

    :cond_23
    invoke-virtual {v2}, Landroidx/collection/c;->remove()V

    goto :goto_d

    :cond_27
    monitor-exit v0

    return-void

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public static z(Landroid/content/Context;)V
    .registers 4

    invoke-static {p0}, Landroidx/appcompat/app/k;->l(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Li0/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-boolean v0, Landroidx/appcompat/app/k;->f:Z

    if-nez v0, :cond_59

    sget-object v0, Landroidx/appcompat/app/k;->a:Landroidx/appcompat/app/t$a;

    new-instance v1, Landroidx/appcompat/app/j;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/appcompat/app/j;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/t$a;->execute(Ljava/lang/Runnable;)V

    goto :goto_59

    :cond_1d
    sget-object v0, Landroidx/appcompat/app/k;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_20
    sget-object v1, Landroidx/appcompat/app/k;->c:Li0/f;

    if-nez v1, :cond_43

    sget-object v1, Landroidx/appcompat/app/k;->d:Li0/f;

    if-nez v1, :cond_32

    invoke-static {p0}, Landroidx/appcompat/app/t;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Li0/f;->a(Ljava/lang/String;)Li0/f;

    move-result-object p0

    sput-object p0, Landroidx/appcompat/app/k;->d:Li0/f;

    :cond_32
    sget-object p0, Landroidx/appcompat/app/k;->d:Li0/f;

    iget-object p0, p0, Li0/f;->a:Li0/g;

    invoke-interface {p0}, Li0/g;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3e

    monitor-exit v0

    return-void

    :cond_3e
    sget-object p0, Landroidx/appcompat/app/k;->d:Li0/f;

    sput-object p0, Landroidx/appcompat/app/k;->c:Li0/f;

    goto :goto_58

    :cond_43
    sget-object v2, Landroidx/appcompat/app/k;->d:Li0/f;

    invoke-virtual {v1, v2}, Li0/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    sget-object v1, Landroidx/appcompat/app/k;->c:Li0/f;

    sput-object v1, Landroidx/appcompat/app/k;->d:Li0/f;

    iget-object v1, v1, Li0/f;->a:Li0/g;

    invoke-interface {v1}, Li0/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroidx/appcompat/app/t;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_58
    :goto_58
    monitor-exit v0

    :cond_59
    :goto_59
    return-void

    :catchall_5a
    move-exception p0

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_20 .. :try_end_5c} :catchall_5a

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
