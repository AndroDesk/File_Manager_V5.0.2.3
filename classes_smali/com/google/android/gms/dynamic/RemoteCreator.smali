.class public abstract Lcom/google/android/gms/dynamic/RemoteCreator;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzic:Ljava/lang/String;

.field private zzid:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/dynamic/RemoteCreator;->zzic:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public abstract getRemoteCreator(Landroid/os/IBinder;)Ljava/lang/Object;
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method public final getRemoteCreatorInstance(Landroid/content/Context;)Ljava/lang/Object;
    .registers 4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/dynamic/RemoteCreator;->zzid:Ljava/lang/Object;

    .line 3
    if-nez v0, :cond_47

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_3f

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 17
    move-result-object p1

    .line 18
    :try_start_11
    iget-object v0, p0, Lcom/google/android/gms/dynamic/RemoteCreator;->zzic:Ljava/lang/String;

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroid/os/IBinder;

    .line 30
    invoke-virtual {p0, p1}, Lcom/google/android/gms/dynamic/RemoteCreator;->getRemoteCreator(Landroid/os/IBinder;)Ljava/lang/Object;

    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/google/android/gms/dynamic/RemoteCreator;->zzid:Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_23} :catch_36
    .catch Ljava/lang/InstantiationException; {:try_start_11 .. :try_end_23} :catch_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_23} :catch_24

    .line 36
    goto :goto_47

    .line 37
    :catch_24
    move-exception p1

    .line 38
    new-instance v0, Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException;

    .line 40
    const-string v1, "Could not access creator."

    .line 42
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    throw v0

    .line 46
    :catch_2d
    move-exception p1

    .line 47
    new-instance v0, Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException;

    .line 49
    const-string v1, "Could not instantiate creator."

    .line 51
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    throw v0

    .line 55
    :catch_36
    move-exception p1

    .line 56
    new-instance v0, Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException;

    .line 58
    const-string v1, "Could not load creator class."

    .line 60
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    throw v0

    .line 64
    :cond_3f
    new-instance p1, Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException;

    .line 66
    const-string v0, "Could not get remote context."

    .line 68
    invoke-direct {p1, v0}, Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException;-><init>(Ljava/lang/String;)V

    .line 71
    throw p1

    .line 72
    :cond_47
    :goto_47
    iget-object p1, p0, Lcom/google/android/gms/dynamic/RemoteCreator;->zzid:Ljava/lang/Object;

    .line 74
    return-object p1
.end method
