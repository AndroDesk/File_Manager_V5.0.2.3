.class final Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;
.super Lcom/google/android/datatransport/runtime/backends/CreationContext;
.source "AutoValue_CreationContext.java"


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private final backendName:Ljava/lang/String;

.field private final monotonicClock:Lcom/google/android/datatransport/runtime/time/Clock;

.field private final wallClock:Lcom/google/android/datatransport/runtime/time/Clock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/time/Clock;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/backends/CreationContext;-><init>()V

    .line 4
    if-eqz p1, :cond_2c

    .line 6
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->applicationContext:Landroid/content/Context;

    .line 8
    if-eqz p2, :cond_24

    .line 10
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->wallClock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 12
    if-eqz p3, :cond_1c

    .line 14
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->monotonicClock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 16
    if-eqz p4, :cond_14

    .line 18
    iput-object p4, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->backendName:Ljava/lang/String;

    .line 20
    return-void

    .line 21
    :cond_14
    new-instance p1, Ljava/lang/NullPointerException;

    .line 23
    const-string p2, "Null backendName"

    .line 25
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 28
    throw p1

    .line 29
    :cond_1c
    new-instance p1, Ljava/lang/NullPointerException;

    .line 31
    const-string p2, "Null monotonicClock"

    .line 33
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 36
    throw p1

    .line 37
    :cond_24
    new-instance p1, Ljava/lang/NullPointerException;

    .line 39
    const-string p2, "Null wallClock"

    .line 41
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 44
    throw p1

    .line 45
    :cond_2c
    new-instance p1, Ljava/lang/NullPointerException;

    .line 47
    const-string p2, "Null applicationContext"

    .line 49
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Lcom/google/android/datatransport/runtime/backends/CreationContext;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_3e

    .line 10
    check-cast p1, Lcom/google/android/datatransport/runtime/backends/CreationContext;

    .line 12
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->applicationContext:Landroid/content/Context;

    .line 14
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/backends/CreationContext;->getApplicationContext()Landroid/content/Context;

    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_3c

    .line 24
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->wallClock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 26
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/backends/CreationContext;->getWallClock()Lcom/google/android/datatransport/runtime/time/Clock;

    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_3c

    .line 36
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->monotonicClock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 38
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/backends/CreationContext;->getMonotonicClock()Lcom/google/android/datatransport/runtime/time/Clock;

    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_3c

    .line 48
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->backendName:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/backends/CreationContext;->getBackendName()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_3c

    .line 60
    goto :goto_3d

    .line 61
    :cond_3c
    move v0, v2

    .line 62
    :goto_3d
    return v0

    .line 63
    :cond_3e
    return v2
.end method

.method public getApplicationContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->applicationContext:Landroid/content/Context;

    .line 3
    return-object v0
.end method

.method public getBackendName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->backendName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getMonotonicClock()Lcom/google/android/datatransport/runtime/time/Clock;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->monotonicClock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 3
    return-object v0
.end method

.method public getWallClock()Lcom/google/android/datatransport/runtime/time/Clock;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->wallClock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 3
    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->applicationContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 6
    move-result v0

    .line 7
    const v1, 0xf4243

    .line 10
    xor-int/2addr v0, v1

    .line 11
    mul-int/2addr v0, v1

    .line 12
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->wallClock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 17
    move-result v2

    .line 18
    xor-int/2addr v0, v2

    .line 19
    mul-int/2addr v0, v1

    .line 20
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->monotonicClock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 25
    move-result v2

    .line 26
    xor-int/2addr v0, v2

    .line 27
    mul-int/2addr v0, v1

    .line 28
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->backendName:Ljava/lang/String;

    .line 30
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 33
    move-result v1

    .line 34
    xor-int/2addr v0, v1

    .line 35
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "CreationContext{applicationContext="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->applicationContext:Landroid/content/Context;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", wallClock="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->wallClock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ", monotonicClock="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->monotonicClock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, ", backendName="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->backendName:Ljava/lang/String;

    .line 39
    const-string v2, "}"

    .line 41
    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method
