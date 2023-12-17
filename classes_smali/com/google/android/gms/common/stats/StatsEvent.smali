.class public abstract Lcom/google/android/gms/common/stats/StatsEvent;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/stats/StatsEvent$Types;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public abstract getEventType()I
.end method

.method public abstract getTimeMillis()J
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/StatsEvent;->getTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/StatsEvent;->getEventType()I

    .line 8
    move-result v2

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/StatsEvent;->zzu()J

    .line 12
    move-result-wide v3

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/StatsEvent;->zzv()Ljava/lang/String;

    .line 16
    move-result-object v5

    .line 17
    const/16 v6, 0x35

    .line 19
    invoke-static {v5, v6}, La/a;->a(Ljava/lang/String;I)I

    .line 22
    move-result v6

    .line 23
    new-instance v7, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 28
    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    const-string v0, "\t"

    .line 33
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    return-object v0
.end method

.method public abstract zzu()J
.end method

.method public abstract zzv()Ljava/lang/String;
.end method
