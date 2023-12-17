.class public final Lorg/greenrobot/greendao/internal/LongHashMap;
.super Ljava/lang/Object;
.source "LongHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/greenrobot/greendao/internal/LongHashMap$Entry;
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
.field private capacity:I

.field private size:I

.field private table:[Lorg/greenrobot/greendao/internal/LongHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/greenrobot/greendao/internal/LongHashMap$Entry<",
            "TT;>;"
        }
    .end annotation
.end field

.field private threshold:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x10

    .line 1
    invoke-direct {p0, v0}, Lorg/greenrobot/greendao/internal/LongHashMap;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->capacity:I

    mul-int/lit8 v0, p1, 0x4

    .line 4
    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->threshold:I

    .line 5
    new-array p1, p1, [Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    iput-object p1, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->table:[Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->size:I

    .line 4
    iget-object v0, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->table:[Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    return-void
.end method

.method public containsKey(J)Z
    .registers 6

    .line 1
    const/16 v0, 0x20

    .line 3
    ushr-long v0, p1, v0

    .line 5
    long-to-int v0, v0

    .line 6
    long-to-int v1, p1

    .line 7
    xor-int/2addr v0, v1

    .line 8
    const v1, 0x7fffffff

    .line 11
    and-int/2addr v0, v1

    .line 12
    iget v1, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->capacity:I

    .line 14
    rem-int/2addr v0, v1

    .line 15
    iget-object v1, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->table:[Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    .line 17
    aget-object v0, v1, v0

    .line 19
    :goto_12
    if-eqz v0, :cond_1f

    .line 21
    iget-wide v1, v0, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->key:J

    .line 23
    cmp-long v1, v1, p1

    .line 25
    if-nez v1, :cond_1c

    .line 27
    const/4 p1, 0x1

    .line 28
    return p1

    .line 29
    :cond_1c
    iget-object v0, v0, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->next:Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    .line 31
    goto :goto_12

    .line 32
    :cond_1f
    const/4 p1, 0x0

    .line 33
    return p1
.end method

.method public get(J)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 1
    const/16 v0, 0x20

    .line 3
    ushr-long v0, p1, v0

    .line 5
    long-to-int v0, v0

    .line 6
    long-to-int v1, p1

    .line 7
    xor-int/2addr v0, v1

    .line 8
    const v1, 0x7fffffff

    .line 11
    and-int/2addr v0, v1

    .line 12
    iget v1, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->capacity:I

    .line 14
    rem-int/2addr v0, v1

    .line 15
    iget-object v1, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->table:[Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    .line 17
    aget-object v0, v1, v0

    .line 19
    :goto_12
    if-eqz v0, :cond_20

    .line 21
    iget-wide v1, v0, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->key:J

    .line 23
    cmp-long v1, v1, p1

    .line 25
    if-nez v1, :cond_1d

    .line 27
    iget-object p1, v0, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->value:Ljava/lang/Object;

    .line 29
    return-object p1

    .line 30
    :cond_1d
    iget-object v0, v0, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->next:Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    .line 32
    goto :goto_12

    .line 33
    :cond_20
    const/4 p1, 0x0

    .line 34
    return-object p1
.end method

.method public logStats()V
    .registers 6

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->table:[Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_5
    if-ge v2, v1, :cond_15

    .line 8
    aget-object v4, v0, v2

    .line 10
    :goto_9
    if-eqz v4, :cond_12

    .line 12
    iget-object v4, v4, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->next:Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    .line 14
    if-eqz v4, :cond_12

    .line 16
    add-int/lit8 v3, v3, 0x1

    .line 18
    goto :goto_9

    .line 19
    :cond_12
    add-int/lit8 v2, v2, 0x1

    .line 21
    goto :goto_5

    .line 22
    :cond_15
    const-string v0, "load: "

    .line 24
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    move-result-object v0

    .line 28
    iget v1, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->size:I

    .line 30
    int-to-float v1, v1

    .line 31
    iget v2, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->capacity:I

    .line 33
    int-to-float v2, v2

    .line 34
    div-float/2addr v1, v2

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 38
    const-string v1, ", size: "

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget v1, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->size:I

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    const-string v1, ", capa: "

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget v1, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->capacity:I

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    const-string v1, ", collisions: "

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ", collision ratio: "

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    int-to-float v1, v3

    .line 72
    iget v2, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->size:I

    .line 74
    int-to-float v2, v2

    .line 75
    div-float/2addr v1, v2

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object v0

    .line 83
    invoke-static {v0}, Lorg/greenrobot/greendao/DaoLog;->d(Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method public put(JLjava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;)TT;"
        }
    .end annotation

    .line 1
    const/16 v0, 0x20

    .line 3
    ushr-long v0, p1, v0

    .line 5
    long-to-int v0, v0

    .line 6
    long-to-int v1, p1

    .line 7
    xor-int/2addr v0, v1

    .line 8
    const v1, 0x7fffffff

    .line 11
    and-int/2addr v0, v1

    .line 12
    iget v1, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->capacity:I

    .line 14
    rem-int/2addr v0, v1

    .line 15
    iget-object v1, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->table:[Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    .line 17
    aget-object v1, v1, v0

    .line 19
    move-object v2, v1

    .line 20
    :goto_13
    if-eqz v2, :cond_23

    .line 22
    iget-wide v3, v2, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->key:J

    .line 24
    cmp-long v3, v3, p1

    .line 26
    if-nez v3, :cond_20

    .line 28
    iget-object p1, v2, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->value:Ljava/lang/Object;

    .line 30
    iput-object p3, v2, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->value:Ljava/lang/Object;

    .line 32
    return-object p1

    .line 33
    :cond_20
    iget-object v2, v2, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->next:Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    .line 35
    goto :goto_13

    .line 36
    :cond_23
    iget-object v2, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->table:[Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    .line 38
    new-instance v3, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    .line 40
    invoke-direct {v3, p1, p2, p3, v1}, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;-><init>(JLjava/lang/Object;Lorg/greenrobot/greendao/internal/LongHashMap$Entry;)V

    .line 43
    aput-object v3, v2, v0

    .line 45
    iget p1, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->size:I

    .line 47
    add-int/lit8 p1, p1, 0x1

    .line 49
    iput p1, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->size:I

    .line 51
    iget p2, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->threshold:I

    .line 53
    if-le p1, p2, :cond_3d

    .line 55
    iget p1, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->capacity:I

    .line 57
    mul-int/lit8 p1, p1, 0x2

    .line 59
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/internal/LongHashMap;->setCapacity(I)V

    .line 62
    :cond_3d
    const/4 p1, 0x0

    .line 63
    return-object p1
.end method

.method public remove(J)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 1
    const/16 v0, 0x20

    .line 3
    ushr-long v0, p1, v0

    .line 5
    long-to-int v0, v0

    .line 6
    long-to-int v1, p1

    .line 7
    xor-int/2addr v0, v1

    .line 8
    const v1, 0x7fffffff

    .line 11
    and-int/2addr v0, v1

    .line 12
    iget v1, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->capacity:I

    .line 14
    rem-int/2addr v0, v1

    .line 15
    iget-object v1, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->table:[Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    .line 17
    aget-object v1, v1, v0

    .line 19
    const/4 v2, 0x0

    .line 20
    move-object v3, v2

    .line 21
    :goto_14
    if-eqz v1, :cond_33

    .line 23
    iget-object v4, v1, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->next:Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    .line 25
    iget-wide v5, v1, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->key:J

    .line 27
    cmp-long v5, v5, p1

    .line 29
    if-nez v5, :cond_30

    .line 31
    if-nez v3, :cond_25

    .line 33
    iget-object p1, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->table:[Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    .line 35
    aput-object v4, p1, v0

    .line 37
    goto :goto_27

    .line 38
    :cond_25
    iput-object v4, v3, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->next:Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    .line 40
    :goto_27
    iget p1, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->size:I

    .line 42
    add-int/lit8 p1, p1, -0x1

    .line 44
    iput p1, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->size:I

    .line 46
    iget-object p1, v1, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->value:Ljava/lang/Object;

    .line 48
    return-object p1

    .line 49
    :cond_30
    move-object v3, v1

    .line 50
    move-object v1, v4

    .line 51
    goto :goto_14

    .line 52
    :cond_33
    return-object v2
.end method

.method public reserveRoom(I)V
    .registers 2

    .line 1
    mul-int/lit8 p1, p1, 0x5

    .line 3
    div-int/lit8 p1, p1, 0x3

    .line 5
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/internal/LongHashMap;->setCapacity(I)V

    .line 8
    return-void
.end method

.method public setCapacity(I)V
    .registers 10

    .line 1
    new-array v0, p1, [Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    .line 3
    iget-object v1, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->table:[Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    .line 5
    array-length v1, v1

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_6
    if-ge v2, v1, :cond_29

    .line 9
    iget-object v3, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->table:[Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    .line 11
    aget-object v3, v3, v2

    .line 13
    :goto_c
    if-eqz v3, :cond_26

    .line 15
    iget-wide v4, v3, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->key:J

    .line 17
    const/16 v6, 0x20

    .line 19
    ushr-long v6, v4, v6

    .line 21
    long-to-int v6, v6

    .line 22
    long-to-int v4, v4

    .line 23
    xor-int/2addr v4, v6

    .line 24
    const v5, 0x7fffffff

    .line 27
    and-int/2addr v4, v5

    .line 28
    rem-int/2addr v4, p1

    .line 29
    iget-object v5, v3, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->next:Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    .line 31
    aget-object v6, v0, v4

    .line 33
    iput-object v6, v3, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->next:Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    .line 35
    aput-object v3, v0, v4

    .line 37
    move-object v3, v5

    .line 38
    goto :goto_c

    .line 39
    :cond_26
    add-int/lit8 v2, v2, 0x1

    .line 41
    goto :goto_6

    .line 42
    :cond_29
    iput-object v0, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->table:[Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    .line 44
    iput p1, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->capacity:I

    .line 46
    mul-int/lit8 p1, p1, 0x4

    .line 48
    div-int/lit8 p1, p1, 0x3

    .line 50
    iput p1, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->threshold:I

    .line 52
    return-void
.end method

.method public size()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->size:I

    .line 3
    return v0
.end method
