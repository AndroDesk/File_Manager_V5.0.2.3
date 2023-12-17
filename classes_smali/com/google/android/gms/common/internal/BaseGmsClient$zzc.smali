.class public abstract Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/BaseGmsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Listener:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final synthetic zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

.field private zzcu:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT",
            "Listener;"
        }
    .end annotation
.end field

.field private zzcv:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/BaseGmsClient;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;->zzcu:Ljava/lang/Object;

    .line 8
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;->zzcv:Z

    .line 11
    return-void
.end method


# virtual methods
.method public final removeListener()V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_2
    iput-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;->zzcu:Ljava/lang/Object;

    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_6
    move-exception v0

    .line 8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    .line 9
    throw v0
.end method

.method public final unregister()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;->removeListener()V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzf(Lcom/google/android/gms/common/internal/BaseGmsClient;)Ljava/util/ArrayList;

    .line 9
    move-result-object v0

    .line 10
    monitor-enter v0

    .line 11
    :try_start_a
    iget-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 13
    invoke-static {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzf(Lcom/google/android/gms/common/internal/BaseGmsClient;)Ljava/util/ArrayList;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_15
    move-exception v1

    .line 23
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_15

    .line 24
    throw v1
.end method

.method public abstract zza(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract zzn()V
.end method

.method public final zzo()V
    .registers 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;->zzcu:Ljava/lang/Object;

    .line 4
    iget-boolean v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;->zzcv:Z

    .line 6
    if-eqz v1, :cond_2c

    .line 8
    const-string v1, "GmsClient"

    .line 10
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 17
    move-result v3

    .line 18
    add-int/lit8 v3, v3, 0x2f

    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 25
    const-string v3, "Callback proxy "

    .line 27
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string v2, " being reused. This is not safe."

    .line 35
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 42
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_47

    .line 46
    if-eqz v0, :cond_38

    .line 48
    :try_start_2f
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;->zza(Ljava/lang/Object;)V
    :try_end_32
    .catch Ljava/lang/RuntimeException; {:try_start_2f .. :try_end_32} :catch_33

    .line 51
    goto :goto_3b

    .line 52
    :catch_33
    move-exception v0

    .line 53
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;->zzn()V

    .line 56
    throw v0

    .line 57
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;->zzn()V

    .line 60
    :goto_3b
    monitor-enter p0

    .line 61
    const/4 v0, 0x1

    .line 62
    :try_start_3d
    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;->zzcv:Z

    .line 64
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_44

    .line 65
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;->unregister()V

    .line 68
    return-void

    .line 69
    :catchall_44
    move-exception v0

    .line 70
    :try_start_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    .line 71
    throw v0

    .line 72
    :catchall_47
    move-exception v0

    .line 73
    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    .line 74
    throw v0
.end method
