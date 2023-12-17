.class public final Lcom/google/android/gms/common/util/ArrayUtils;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendToArray([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_d

    .line 3
    if-eqz p1, :cond_5

    .line 5
    goto :goto_d

    .line 6
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 8
    const-string p1, "Cannot generate array of generic type w/o class info"

    .line 10
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    throw p0

    .line 14
    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 15
    if-nez p0, :cond_1b

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 25
    check-cast p0, [Ljava/lang/Object;

    .line 27
    goto :goto_21

    .line 28
    :cond_1b
    array-length v1, p0

    .line 29
    add-int/2addr v1, v0

    .line 30
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 33
    move-result-object p0

    .line 34
    :goto_21
    array-length v1, p0

    .line 35
    sub-int/2addr v1, v0

    .line 36
    aput-object p1, p0, v1

    .line 38
    return-object p0
.end method

.method public static varargs concat([[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 7
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([[TT;)[TT;"
        }
    .end annotation

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez v0, :cond_f

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 13
    check-cast p0, [Ljava/lang/Object;

    .line 15
    return-object p0

    .line 16
    :cond_f
    move v0, v1

    .line 17
    move v2, v0

    .line 18
    :goto_11
    array-length v3, p0

    .line 19
    if-ge v0, v3, :cond_1b

    .line 21
    aget-object v3, p0, v0

    .line 23
    array-length v3, v3

    .line 24
    add-int/2addr v2, v3

    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 27
    goto :goto_11

    .line 28
    :cond_1b
    aget-object v0, p0, v1

    .line 30
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    aget-object v2, p0, v1

    .line 36
    array-length v2, v2

    .line 37
    const/4 v3, 0x1

    .line 38
    :goto_25
    array-length v4, p0

    .line 39
    if-ge v3, v4, :cond_33

    .line 41
    aget-object v4, p0, v3

    .line 43
    array-length v5, v4

    .line 44
    invoke-static {v4, v1, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    array-length v4, v4

    .line 48
    add-int/2addr v2, v4

    .line 49
    add-int/lit8 v3, v3, 0x1

    .line 51
    goto :goto_25

    .line 52
    :cond_33
    return-object v0
.end method

.method public static varargs concatByteArrays([[B)[B
    .registers 7
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez v0, :cond_7

    .line 5
    new-array p0, v1, [B

    .line 7
    return-object p0

    .line 8
    :cond_7
    move v0, v1

    .line 9
    move v2, v0

    .line 10
    :goto_9
    array-length v3, p0

    .line 11
    if-ge v0, v3, :cond_13

    .line 13
    aget-object v3, p0, v0

    .line 15
    array-length v3, v3

    .line 16
    add-int/2addr v2, v3

    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 19
    goto :goto_9

    .line 20
    :cond_13
    aget-object v0, p0, v1

    .line 22
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 25
    move-result-object v0

    .line 26
    aget-object v2, p0, v1

    .line 28
    array-length v2, v2

    .line 29
    const/4 v3, 0x1

    .line 30
    :goto_1d
    array-length v4, p0

    .line 31
    if-ge v3, v4, :cond_2b

    .line 33
    aget-object v4, p0, v3

    .line 35
    array-length v5, v4

    .line 36
    invoke-static {v4, v1, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    array-length v4, v4

    .line 40
    add-int/2addr v2, v4

    .line 41
    add-int/lit8 v3, v3, 0x1

    .line 43
    goto :goto_1d

    .line 44
    :cond_2b
    return-object v0
.end method

.method public static contains([II)Z
    .registers 6
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 3
    :cond_4
    array-length v1, p0

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_11

    aget v3, p0, v2

    if-ne v3, p1, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_11
    return v0
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 1
    array-length v1, p0

    goto :goto_6

    :cond_5
    move v1, v0

    :goto_6
    move v2, v0

    :goto_7
    if-ge v2, v1, :cond_15

    .line 2
    aget-object v3, p0, v2

    invoke-static {v3, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    goto :goto_16

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_15
    const/4 v2, -0x1

    :goto_16
    if-ltz v2, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    return v0
.end method

.method public static newArrayList()Ljava/util/ArrayList;
    .registers 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    return-object v0
.end method

.method public static varargs removeAll([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 10
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_4

    .line 4
    return-object v0

    .line 5
    :cond_4
    if-eqz p1, :cond_55

    .line 7
    array-length v1, p1

    .line 8
    if-nez v1, :cond_a

    .line 10
    goto :goto_55

    .line 11
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 18
    move-result-object v1

    .line 19
    array-length v2, p0

    .line 20
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, [Ljava/lang/Object;

    .line 26
    array-length v2, p1

    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x1

    .line 29
    if-ne v2, v4, :cond_35

    .line 31
    array-length v2, p0

    .line 32
    move v4, v3

    .line 33
    move v5, v4

    .line 34
    :goto_21
    if-ge v4, v2, :cond_4a

    .line 36
    aget-object v6, p0, v4

    .line 38
    aget-object v7, p1, v3

    .line 40
    invoke-static {v7, v6}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    move-result v7

    .line 44
    if-nez v7, :cond_32

    .line 46
    add-int/lit8 v7, v5, 0x1

    .line 48
    aput-object v6, v1, v5

    .line 50
    move v5, v7

    .line 51
    :cond_32
    add-int/lit8 v4, v4, 0x1

    .line 53
    goto :goto_21

    .line 54
    :cond_35
    array-length v2, p0

    .line 55
    move v4, v3

    .line 56
    :goto_37
    if-ge v3, v2, :cond_49

    .line 58
    aget-object v5, p0, v3

    .line 60
    invoke-static {p1, v5}, Lcom/google/android/gms/common/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    move-result v6

    .line 64
    if-nez v6, :cond_46

    .line 66
    add-int/lit8 v6, v4, 0x1

    .line 68
    aput-object v5, v1, v4

    .line 70
    move v4, v6

    .line 71
    :cond_46
    add-int/lit8 v3, v3, 0x1

    .line 73
    goto :goto_37

    .line 74
    :cond_49
    move v5, v4

    .line 75
    :cond_4a
    if-nez v1, :cond_4d

    .line 77
    return-object v0

    .line 78
    :cond_4d
    array-length p0, v1

    .line 79
    if-eq v5, p0, :cond_54

    .line 81
    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 84
    move-result-object v1

    .line 85
    :cond_54
    return-object v1

    .line 86
    :cond_55
    :goto_55
    array-length p1, p0

    .line 87
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 90
    move-result-object p0

    .line 91
    return-object p0
.end method

.method public static toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 1
    array-length v0, p0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_7
    if-ge v2, v0, :cond_11

    .line 10
    aget-object v3, p0, v2

    .line 12
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    add-int/lit8 v2, v2, 0x1

    .line 17
    goto :goto_7

    .line 18
    :cond_11
    return-object v1
.end method

.method public static toPrimitiveArray(Ljava/util/Collection;)[I
    .registers 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2b

    .line 4
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_a

    .line 10
    goto :goto_2b

    .line 11
    :cond_a
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 14
    move-result v1

    .line 15
    new-array v1, v1, [I

    .line 17
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object p0

    .line 21
    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_2a

    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/Integer;

    .line 33
    add-int/lit8 v3, v0, 0x1

    .line 35
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 38
    move-result v2

    .line 39
    aput v2, v1, v0

    .line 41
    move v0, v3

    .line 42
    goto :goto_14

    .line 43
    :cond_2a
    return-object v1

    .line 44
    :cond_2b
    :goto_2b
    new-array p0, v0, [I

    .line 46
    return-object p0
.end method

.method public static toWrapperArray([I)[Ljava/lang/Integer;
    .registers 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    array-length v0, p0

    .line 6
    new-array v1, v0, [Ljava/lang/Integer;

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_8
    if-ge v2, v0, :cond_15

    .line 11
    aget v3, p0, v2

    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v3

    .line 17
    aput-object v3, v1, v2

    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 21
    goto :goto_8

    .line 22
    :cond_15
    return-object v1
.end method

.method public static writeArray(Ljava/lang/StringBuilder;[D)V
    .registers 6
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 13
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_17

    if-eqz v1, :cond_b

    const-string v2, ","

    .line 14
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :cond_b
    aget-wide v2, p1, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_17
    return-void
.end method

.method public static writeArray(Ljava/lang/StringBuilder;[F)V
    .registers 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 10
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_17

    if-eqz v1, :cond_b

    const-string v2, ","

    .line 11
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    :cond_b
    aget v2, p1, v1

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_17
    return-void
.end method

.method public static writeArray(Ljava/lang/StringBuilder;[I)V
    .registers 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 4
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_17

    if-eqz v1, :cond_b

    const-string v2, ","

    .line 5
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_b
    aget v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_17
    return-void
.end method

.method public static writeArray(Ljava/lang/StringBuilder;[J)V
    .registers 6
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 7
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_17

    if-eqz v1, :cond_b

    const-string v2, ","

    .line 8
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_b
    aget-wide v2, p1, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_17
    return-void
.end method

.method public static writeArray(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V
    .registers 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/StringBuilder;",
            "[TT;)V"
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_17

    if-eqz v1, :cond_b

    const-string v2, ","

    .line 2
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    :cond_b
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_17
    return-void
.end method

.method public static writeArray(Ljava/lang/StringBuilder;[Z)V
    .registers 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 16
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_17

    if-eqz v1, :cond_b

    const-string v2, ","

    .line 17
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    :cond_b
    aget-boolean v2, p1, v1

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_17
    return-void
.end method

.method public static writeStringArray(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .registers 6
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_2
    if-ge v1, v0, :cond_1b

    .line 5
    if-eqz v1, :cond_b

    .line 7
    const-string v2, ","

    .line 9
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    :cond_b
    const-string v2, "\""

    .line 14
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    aget-object v3, p1, v1

    .line 19
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 27
    goto :goto_2

    .line 28
    :cond_1b
    return-void
.end method
