.class public final Lcom/google/android/gms/tasks/TaskExecutors;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tasks/TaskExecutors$zza;
    }
.end annotation


# static fields
.field public static final MAIN_THREAD:Ljava/util/concurrent/Executor;

.field public static final zzw:Ljava/util/concurrent/Executor;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/tasks/TaskExecutors$zza;

    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskExecutors$zza;-><init>()V

    .line 6
    sput-object v0, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    .line 8
    new-instance v0, Lcom/google/android/gms/tasks/zzt;

    .line 10
    invoke-direct {v0}, Lcom/google/android/gms/tasks/zzt;-><init>()V

    .line 13
    sput-object v0, Lcom/google/android/gms/tasks/TaskExecutors;->zzw:Ljava/util/concurrent/Executor;

    .line 15
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
