.class public final Lcom/google/android/gms/common/api/internal/zzc;
.super Landroidx/fragment/app/Fragment;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/LifecycleFragment;


# static fields
.field private static zzbe:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroidx/fragment/app/FragmentActivity;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/common/api/internal/zzc;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private zzbf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/api/internal/LifecycleCallback;",
            ">;"
        }
    .end annotation
.end field

.field private zzbg:I

.field private zzbh:Landroid/os/Bundle;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 6
    sput-object v0, Lcom/google/android/gms/common/api/internal/zzc;->zzbe:Ljava/util/WeakHashMap;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 4
    new-instance v0, Landroidx/collection/a;

    .line 6
    invoke-direct {v0}, Landroidx/collection/a;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzbf:Ljava/util/Map;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzbg:I

    .line 14
    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/common/api/internal/zzc;)I
    .registers 1

    .line 15
    iget p0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzbg:I

    return p0
.end method

.method public static zza(Landroidx/fragment/app/FragmentActivity;)Lcom/google/android/gms/common/api/internal/zzc;
    .registers 6

    const-string v0, "SupportLifecycleFragmentImpl"

    .line 1
    sget-object v1, Lcom/google/android/gms/common/api/internal/zzc;->zzbe:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_15

    .line 2
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/zzc;

    if-eqz v1, :cond_15

    return-object v1

    .line 3
    :cond_15
    :try_start_15
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/zzc;
    :try_end_1f
    .catch Ljava/lang/ClassCastException; {:try_start_15 .. :try_end_1f} :catch_47

    if-eqz v1, :cond_27

    .line 4
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 5
    :cond_27
    new-instance v1, Lcom/google/android/gms/common/api/internal/zzc;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/zzc;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    .line 7
    invoke-static {v2, v2}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 8
    invoke-virtual {v2, v3, v1, v0, v4}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 9
    invoke-virtual {v2}, Landroidx/fragment/app/a;->d()I

    .line 10
    :cond_3c
    sget-object v0, Lcom/google/android/gms/common/api/internal/zzc;->zzbe:Ljava/util/WeakHashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :catch_47
    move-exception p0

    .line 11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment with tag SupportLifecycleFragmentImpl is not a SupportLifecycleFragmentImpl"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static synthetic zzb(Lcom/google/android/gms/common/api/internal/zzc;)Landroid/os/Bundle;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzbh:Landroid/os/Bundle;

    .line 3
    return-object p0
.end method


# virtual methods
.method public final addCallback(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzbf:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_23

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzbf:Ljava/util/Map;

    .line 11
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzbg:I

    .line 16
    if-lez v0, :cond_22

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/common/zze;

    .line 20
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/common/zze;-><init>(Landroid/os/Looper;)V

    .line 27
    new-instance v1, Lcom/google/android/gms/common/api/internal/zzd;

    .line 29
    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/common/api/internal/zzd;-><init>(Lcom/google/android/gms/common/api/internal/zzc;Lcom/google/android/gms/common/api/internal/LifecycleCallback;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    :cond_22
    return-void

    .line 36
    :cond_23
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 38
    const/16 v0, 0x3b

    .line 40
    invoke-static {p1, v0}, La/a;->a(Ljava/lang/String;I)I

    .line 43
    move-result v0

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 49
    const-string v0, "LifecycleCallback with tag "

    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string p1, " already added to this fragment."

    .line 59
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 69
    throw p2
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/fragment/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzbf:Ljava/util/Map;

    .line 6
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v0

    .line 14
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1d

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 26
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 29
    goto :goto_d

    .line 30
    :cond_1d
    return-void
.end method

.method public final getCallbackOrNull(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/common/api/internal/LifecycleCallback;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzbf:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 13
    return-object p1
.end method

.method public final synthetic getLifecycleActivity()Landroid/app/Activity;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final isCreated()Z
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzbg:I

    .line 3
    if-lez v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public final isStarted()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzbg:I

    .line 3
    const/4 v1, 0x2

    .line 4
    if-lt v0, v1, :cond_7

    .line 6
    const/4 v0, 0x1

    .line 7
    return v0

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzbf:Ljava/util/Map;

    .line 6
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v0

    .line 14
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1d

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 26
    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onActivityResult(IILandroid/content/Intent;)V

    .line 29
    goto :goto_d

    .line 30
    :cond_1d
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzbg:I

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzbh:Landroid/os/Bundle;

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzbf:Ljava/util/Map;

    .line 11
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v0

    .line 19
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_36

    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/util/Map$Entry;

    .line 31
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 37
    if-eqz p1, :cond_31

    .line 39
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Ljava/lang/String;

    .line 45
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 48
    move-result-object v1

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    const/4 v1, 0x0

    .line 51
    :goto_32
    invoke-virtual {v2, v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onCreate(Landroid/os/Bundle;)V

    .line 54
    goto :goto_12

    .line 55
    :cond_36
    return-void
.end method

.method public final onDestroy()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 4
    const/4 v0, 0x5

    .line 5
    iput v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzbg:I

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzbf:Ljava/util/Map;

    .line 9
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 17
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_20

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onDestroy()V

    .line 32
    goto :goto_10

    .line 33
    :cond_20
    return-void
.end method

.method public final onResume()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 4
    const/4 v0, 0x3

    .line 5
    iput v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzbg:I

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzbf:Ljava/util/Map;

    .line 9
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 17
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_20

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onResume()V

    .line 32
    goto :goto_10

    .line 33
    :cond_20
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    if-nez p1, :cond_6

    .line 6
    return-void

    .line 7
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzbf:Ljava/util/Map;

    .line 9
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 17
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_34

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/util/Map$Entry;

    .line 29
    new-instance v2, Landroid/os/Bundle;

    .line 31
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 34
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 40
    invoke-virtual {v3, v2}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 43
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Ljava/lang/String;

    .line 49
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 52
    goto :goto_10

    .line 53
    :cond_34
    return-void
.end method

.method public final onStart()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 4
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzbg:I

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzbf:Ljava/util/Map;

    .line 9
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 17
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_20

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onStart()V

    .line 32
    goto :goto_10

    .line 33
    :cond_20
    return-void
.end method

.method public final onStop()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 4
    const/4 v0, 0x4

    .line 5
    iput v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzbg:I

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzbf:Ljava/util/Map;

    .line 9
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 17
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_20

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onStop()V

    .line 32
    goto :goto_10

    .line 33
    :cond_20
    return-void
.end method
