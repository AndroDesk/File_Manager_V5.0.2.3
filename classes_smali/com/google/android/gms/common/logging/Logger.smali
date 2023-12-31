.class public Lcom/google/android/gms/common/logging/Logger;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# instance fields
.field private final mTag:Ljava/lang/String;

.field private final zzei:Ljava/lang/String;

.field private final zzew:Lcom/google/android/gms/common/internal/GmsLogger;

.field private final zzex:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p2, p0, Lcom/google/android/gms/common/logging/Logger;->zzei:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/common/logging/Logger;->mTag:Ljava/lang/String;

    .line 14
    new-instance p2, Lcom/google/android/gms/common/internal/GmsLogger;

    invoke-direct {p2, p1}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/common/logging/Logger;->zzew:Lcom/google/android/gms/common/internal/GmsLogger;

    const/4 p1, 0x2

    :goto_f
    const/4 p2, 0x7

    if-lt p2, p1, :cond_1d

    .line 15
    iget-object p2, p0, Lcom/google/android/gms/common/logging/Logger;->mTag:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_1d

    add-int/lit8 p1, p1, 0x1

    goto :goto_f

    .line 16
    :cond_1d
    iput p1, p0, Lcom/google/android/gms/common/logging/Logger;->zzex:I

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 9
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    array-length v0, p2

    if-nez v0, :cond_6

    const-string p2, ""

    goto :goto_36

    .line 2
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    array-length v1, p2

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_28

    aget-object v3, p2, v2

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_22

    const-string v4, ","

    .line 6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_22
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_28
    const/16 p2, 0x5d

    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 10
    :goto_36
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 1
    if-eqz p2, :cond_b

    .line 3
    array-length v0, p2

    .line 4
    if-lez v0, :cond_b

    .line 6
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 8
    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    :cond_b
    iget-object p2, p0, Lcom/google/android/gms/common/logging/Logger;->zzei:Ljava/lang/String;

    .line 14
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method


# virtual methods
.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/logging/Logger;->isLoggable(I)Z

    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_10

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/common/logging/Logger;->mTag:Ljava/lang/String;

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/logging/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_10
    return-void
.end method

.method public varargs e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .registers 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/logging/Logger;->mTag:Ljava/lang/String;

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/common/logging/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/logging/Logger;->mTag:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/logging/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/logging/Logger;->mTag:Ljava/lang/String;

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/logging/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void
.end method

.method public isLoggable(I)Z
    .registers 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/common/logging/Logger;->zzex:I

    .line 3
    if-gt v0, p1, :cond_6

    .line 5
    const/4 p1, 0x1

    .line 6
    return p1

    .line 7
    :cond_6
    const/4 p1, 0x0

    .line 8
    return p1
.end method

.method public varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/logging/Logger;->isLoggable(I)Z

    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_10

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/common/logging/Logger;->mTag:Ljava/lang/String;

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/logging/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_10
    return-void
.end method

.method public varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/logging/Logger;->mTag:Ljava/lang/String;

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/logging/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void
.end method

.method public varargs wtf(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .registers 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/logging/Logger;->mTag:Ljava/lang/String;

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/common/logging/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public wtf(Ljava/lang/Throwable;)V
    .registers 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/logging/Logger;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
