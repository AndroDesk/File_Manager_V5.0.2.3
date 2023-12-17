.class public Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static beginObjectHeader(Landroid/os/Parcel;)I
    .registers 2

    .line 1
    const/16 v0, 0x4f45

    .line 3
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static finishObjectHeader(Landroid/os/Parcel;I)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 4
    return-void
.end method

.method public static writeBigDecimal(Landroid/os/Parcel;ILjava/math/BigDecimal;Z)V
    .registers 4

    .line 1
    if-nez p2, :cond_9

    .line 3
    if-eqz p3, :cond_8

    .line 5
    const/4 p2, 0x0

    .line 6
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 9
    :cond_8
    return-void

    .line 10
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    .line 13
    move-result p1

    .line 14
    invoke-virtual {p2}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    .line 17
    move-result-object p3

    .line 18
    invoke-virtual {p3}, Ljava/math/BigInteger;->toByteArray()[B

    .line 21
    move-result-object p3

    .line 22
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 25
    invoke-virtual {p2}, Ljava/math/BigDecimal;->scale()I

    .line 28
    move-result p2

    .line 29
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 35
    return-void
.end method

.method public static writeBigDecimalArray(Landroid/os/Parcel;I[Ljava/math/BigDecimal;Z)V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_9

    .line 4
    if-eqz p3, :cond_8

    .line 6
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 9
    :cond_8
    return-void

    .line 10
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    .line 13
    move-result p1

    .line 14
    array-length p3, p2

    .line 15
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    :goto_11
    if-ge v0, p3, :cond_2c

    .line 20
    aget-object v1, p2, v0

    .line 22
    invoke-virtual {v1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 33
    aget-object v1, p2, v0

    .line 35
    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    .line 38
    move-result v1

    .line 39
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    add-int/lit8 v0, v0, 0x1

    .line 44
    goto :goto_11

    .line 45
    :cond_2c
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 48
    return-void
.end method

.method public static writeBigInteger(Landroid/os/Parcel;ILjava/math/BigInteger;Z)V
    .registers 4

    .line 1
    if-nez p2, :cond_9

    .line 3
    if-eqz p3, :cond_8

    .line 5
    const/4 p2, 0x0

    .line 6
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 9
    :cond_8
    return-void

    .line 10
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    .line 13
    move-result p1

    .line 14
    invoke-virtual {p2}, Ljava/math/BigInteger;->toByteArray()[B

    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 21
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 24
    return-void
.end method

.method public static writeBigIntegerArray(Landroid/os/Parcel;I[Ljava/math/BigInteger;Z)V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_9

    .line 4
    if-eqz p3, :cond_8

    .line 6
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 9
    :cond_8
    return-void

    .line 10
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    .line 13
    move-result p1

    .line 14
    array-length p3, p2

    .line 15
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    :goto_11
    if-ge v0, p3, :cond_1f

    .line 20
    aget-object v1, p2, v0

    .line 22
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 31
    goto :goto_11

    .line 32
    :cond_1f
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 35
    return-void
.end method

.method public static writeBoolean(Landroid/os/Parcel;IZ)V
    .registers 4

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 5
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    return-void
.end method

.method public static writeBooleanArray(Landroid/os/Parcel;I[ZZ)V
    .registers 4

    .line 1
    if-nez p2, :cond_9

    .line 3
    if-eqz p3, :cond_8

    .line 5
    const/4 p2, 0x0

    .line 6
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 9
    :cond_8
    return-void

    .line 10
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    .line 13
    move-result p1

    .line 14
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 17
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 20
    return-void
.end method

.method public static writeBooleanList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_9

    .line 4
    if-eqz p3, :cond_8

    .line 6
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 9
    :cond_8
    return-void

    .line 10
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    .line 13
    move-result p1

    .line 14
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 17
    move-result p3

    .line 18
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    :goto_14
    if-ge v0, p3, :cond_26

    .line 23
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/Boolean;

    .line 29
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    move-result v1

    .line 33
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 38
    goto :goto_14

    .line 39
    :cond_26
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 42
    return-void
.end method

.method public static writeBooleanObject(Landroid/os/Parcel;ILjava/lang/Boolean;Z)V
    .registers 4

    .line 1
    if-nez p2, :cond_9

    .line 3
    if-eqz p3, :cond_8

    .line 5
    const/4 p2, 0x0

    .line 6
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 9
    :cond_8
    return-void

    .line 10
    :cond_9
    const/4 p3, 0x4

    .line 11
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 14
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    move-result p1

    .line 18
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    return-void
.end method

.method public static writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V
    .registers 4

    .line 1
    if-nez p2, :cond_9

    .line 3
    if-eqz p3, :cond_8

    .line 5
    const/4 p2, 0x0

    .line 6
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 9
    :cond_8
    return-void

    .line 10
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    .line 13
    move-result p1

    .line 14
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 17
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 20
    return-void
.end method

.method public static writeByte(Landroid/os/Parcel;IB)V
    .registers 4

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 5
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    return-void
.end method

.method public static writeByteArray(Landroid/os/Parcel;I[BZ)V
    .registers 4

    .line 1
    if-nez p2, :cond_9

    .line 3
    if-eqz p3, :cond_8

    .line 5
    const/4 p2, 0x0

    .line 6
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 9
    :cond_8
    return-void

    .line 10
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    .line 13
    move-result p1

    .line 14
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 17
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 20
    return-void
.end method

.method public static writeByteArrayArray(Landroid/os/Parcel;I[[BZ)V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_9

    .line 4
    if-eqz p3, :cond_8

    .line 6
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 9
    :cond_8
    return-void

    .line 10
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    .line 13
    move-result p1

    .line 14
    array-length p3, p2

    .line 15
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    :goto_11
    if-ge v0, p3, :cond_1b

    .line 20
    aget-object v1, p2, v0

    .line 22
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 27
    goto :goto_11

    .line 28
    :cond_1b
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 31
    return-void
.end method

.method public static writeByteArraySparseArray(Landroid/os/Parcel;ILandroid/util/SparseArray;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/util/SparseArray<",
            "[B>;Z)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_9

    .line 4
    if-eqz p3, :cond_8

    .line 6
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 9
    :cond_8
    return-void

    .line 10
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    .line 13
    move-result p1

    .line 14
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 17
    move-result p3

    .line 18
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    :goto_14
    if-ge v0, p3, :cond_29

    .line 23
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 26
    move-result v1

    .line 27
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    check-cast v1, [B

    .line 36
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 39
    add-int/lit8 v0, v0, 0x1

    .line 41
    goto :goto_14

    .line 42
    :cond_29
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 45
    return-void
.end method

.method public static writeChar(Landroid/os/Parcel;IC)V
    .registers 4

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 5
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    return-void
.end method

.method public static writeCharArray(Landroid/os/Parcel;I[CZ)V
    .registers 4

    .line 1
    if-nez p2, :cond_9

    .line 3
    if-eqz p3, :cond_8

    .line 5
    const/4 p2, 0x0

    .line 6
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 9
    :cond_8
    return-void

    .line 10
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    .line 13
    move-result p1

    .line 14
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeCharArray([C)V

    .line 17
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 20
    return-void
.end method

.method public static writeDouble(Landroid/os/Parcel;ID)V
    .registers 5

    .line 1
    const/16 v0, 0x8

    .line 3
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 6
    invoke-virtual {p0, p2, p3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 9
    return-void
.end method

.method public static writeDoubleArray(Landroid/os/Parcel;I[DZ)V
    .registers 4

    .line 1
    if-nez p2, :cond_9

    .line 3
    if-eqz p3, :cond_8

    .line 5
    const/4 p2, 0x0

    .line 6
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 9
    :cond_8
    return-void

    .line 10
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    .line 13
    move-result p1

    .line 14
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeDoubleArray([D)V

    .line 17
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 20
    return-void
.end method

.method public static writeDoubleList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_9

    .line 4
    if-eqz p3, :cond_8

    .line 6
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 9
    :cond_8
    return-void

    .line 10
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    .line 13
    move-result p1

    .line 14
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 17
    move-result p3

    .line 18
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    :goto_14
    if-ge v0, p3, :cond_26

    .line 23
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/Double;

    .line 29
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 32
    move-result-wide v1

    .line 33
    invoke-virtual {p0, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 38
    goto :goto_14

    .line 39
    :cond_26
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 42
    return-void
.end method

.method public static writeDoubleObject(Landroid/os/Parcel;ILjava/lang/Double;Z)V
    .registers 4

    .line 1
    if-nez p2, :cond_9

    .line 3
    if-eqz p3, :cond_8

    .line 5
    const/4 p2, 0x0

    .line 6
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 9
    :cond_8
    return-void

    .line 10
    :cond_9
    const/16 p3, 0x8

    .line 12
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 15
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 18
    move-result-wide p1

    .line 19
    invoke-virtual {p0, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 22
    return-void
.end method

.method public static writeDoubleSparseArray(Landroid/os/Parcel;ILandroid/util/SparseArray;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Double;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_9

    .line 4
    if-eqz p3, :cond_8

    .line 6
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 9
    :cond_8
    return-void

    .line 10
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    .line 13
    move-result p1

    .line 14
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 17
    move-result p3

    .line 18
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    :goto_14
    if-ge v0, p3, :cond_2d

    .line 23
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 26
    move-result v1

    .line 27
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/Double;

    .line 36
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 39
    move-result-wide v1

    .line 40
    invoke-virtual {p0, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 43
    add-int/lit8 v0, v0, 0x1

    .line 45
    goto :goto_14

    .line 46
    :cond_2d
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 49
    return-void
.end method

.method public static writeFloat(Landroid/os/Parcel;IF)V
    .registers 4

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 5
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 8
    return-void
.end method

.method public static writeFloatArray(Landroid/os/Parcel;I[FZ)V
    .registers 4

    .line 1
    if-nez p2, :cond_9

    .line 3
    if-eqz p3, :cond_8

    .line 5
    const/4 p2, 0x0

    .line 6
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 9
    :cond_8
    return-void

    .line 10
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    .line 13
    move-result p1

    .line 14
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 17
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 20
    return-void
.end method

.method public static writeFloatList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_9

    .line 4
    if-eqz p3, :cond_8

    .line 6
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 9
    :cond_8
    return-void

    .line 10
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    .line 13
    move-result p1

    .line 14
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 17
    move-result p3

    .line 18
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    :goto_14
    if-ge v0, p3, :cond_26

    .line 23
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/Float;

    .line 29
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 32
    move-result v1

    .line 33
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 38
    goto :goto_14

    .line 39
    :cond_26
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 42
    return-void
.end method

.method public static writeFloatObject(Landroid/os/Parcel;ILjava/lang/Float;Z)V
    .registers 4

    .line 1
    if-nez p2, :cond_9

    .line 3
    if-eqz p3, :cond_8

    .line 5
    const/4 p2, 0x0

    .line 6
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 9
    :cond_8
    return-void

    .line 10
    :cond_9
    const/4 p3, 0x4

    .line 11
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 14
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 17
    move-result p1

    .line 18
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 21
    return-void
.end method

.method public static writeFloatSparseArray(Landroid/os/Parcel;ILandroid/util/SparseArray;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_9

    .line 4
    if-eqz p3, :cond_8

    .line 6
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 9
    :cond_8
    return-void

    .line 10
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    .line 13
    move-result p1

    .line 14
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 17
    move-result p3

    .line 18
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    :goto_14
    if-ge v0, p3, :cond_2d

    .line 23
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 26
    move-result v1

    .line 27
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/Float;

    .line 36
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 39
    move-result v1

    .line 40
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 43
    add-int/lit8 v0, v0, 0x1

    .line 45
    goto :goto_14

    .line 46
    :cond_2d
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 49
    return-void
.end method

.method public static writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V
    .registers 4

    .line 1
    if-nez p2, :cond_9

    .line 3
    if-eqz p3, :cond_8

    .line 5
    const/4 p2, 0x0

    .line 6
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 9
    :cond_8
    return-void

    .line 10
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    .line 13
    move-result p1

    .line 14
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 17
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 20
    return-void
.end method

.method public static writeIBinderArray(Landroid/os/Parcel;I[Landroid/os/IBinder;Z)V
    .registers 4

    .line 1
    if-nez p2, :cond_9

    .line 3
    if-eqz p3, :cond_8

    .line 5
    const/4 p2, 0x0

    .line 6
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 9
    :cond_8
    return-void

    .line 10
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    .line 13
    move-result p1

    .line 14
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeBinderArray([Landroid/os/IBinder;)V

    .line 17
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 20
    return-void
.end method

.method public static writeIBinderList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_9

    .line 3
    if-eqz p3, :cond_8

    .line 5
    const/4 p2, 0x0

    .line 6
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 9
    :cond_8
    return-void

    .line 10
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    .line 13
    move-result p1

    .line 14
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 17
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 20
    return-void
.end method

.method public static writeIBinderSparseArray(Landroid/os/Parcel;ILandroid/util/SparseArray;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/util/SparseArray<",
            "Landroid/os/IBinder;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_9

    .line 4
    if-eqz p3, :cond_8

    .line 6
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 9
    :cond_8
    return-void

    .line 10
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    .line 13
    move-result p1

    .line 14
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 17
    move-result p3

    .line 18
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    :goto_14
    if-ge v0, p3, :cond_29

    .line 23
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 26
    move-result v1

    .line 27
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Landroid/os/IBinder;

    .line 36
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 39
    add-int/lit8 v0, v0, 0x1

    .line 41
    goto :goto_14

    .line 42
    :cond_29
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 45
    return-void
.end method

.method public static writeInt(Landroid/os/Parcel;II)V
    .registers 4

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 5
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    return-void
.end method

.method public static writeIntArray(Landroid/os/Parcel;I[IZ)V
    .registers 4

    .line 1
    if-nez p2, :cond_9

    .line 3
    if-eqz p3, :cond_8

    .line 5
    const/4 p2, 0x0

    .line 6
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 9
    :cond_8
    return-void

    .line 10
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    .line 13
    move-result p1

    .line 14
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 17
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 20
    return-void
.end method

.method public static writeIntegerList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_9

    .line 4
    if-eqz p3, :cond_8

    .line 6
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 9
    :cond_8
    return-void

    .line 10
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    .line 13
    move-result p1

    .line 14
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 17
    move-result p3

    .line 18
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    :goto_14
    if-ge v0, p3, :cond_26

    .line 23
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/Integer;

    .line 29
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 32
    move-result v1

    .line 33
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 38
    goto :goto_14

    .line 39
    :cond_26
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 42
    return-void
.end method

.method public static writeIntegerObject(Landroid/os/Parcel;ILjava/lang/Integer;Z)V
    .registers 4

    .line 1
    if-nez p2, :cond_9

    .line 3
    if-eqz p3, :cond_8

    .line 5
    const/4 p2, 0x0

    .line 6
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 9
    :cond_8
    return-void

    .line 10
    :cond_9
    const/4 p3, 0x4

    .line 11
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 14
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 17
    move-result p1

    .line 18
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    return-void
.end method

.method public static writeList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .registers 4

    .line 1
    if-nez p2, :cond_9

    .line 3
    if-eqz p3, :cond_8

    .line 5
    const/4 p2, 0x0

    .line 6
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 9
    :cond_8
    return-void

    .line 10
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    .line 13
    move-result p1

    .line 14
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 17
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 20
    return-void
.end method

.method public static writeLong(Landroid/os/Parcel;IJ)V
    .registers 5

    .line 1
    const/16 v0, 0x8

    .line 3
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 6
    invoke-virtual {p0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 9
    return-void
.end method

.method public static writeLongArray(Landroid/os/Parcel;I[JZ)V
    .registers 4

    .line 1
    if-nez p2, :cond_9

    .line 3
    if-eqz p3, :cond_8

    .line 5
    const/4 p2, 0x0

    .line 6
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 9
    :cond_8
    return-void

    .line 10
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    .line 13
    move-result p1

    .line 14
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 17
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 20
    return-void
.end method

.method public static writeLongList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_9

    .line 4
    if-eqz p3, :cond_8

    .line 6
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 9
    :cond_8
    return-void

    .line 10
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    .line 13
    move-result p1

    .line 14
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 17
    move-result p3

    .line 18
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    :goto_14
    if-ge v0, p3, :cond_26

    .line 23
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/Long;

    .line 29
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 32
    move-result-wide v1

    .line 33
    invoke-virtual {p0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 38
    goto :goto_14

    .line 39
    :cond_26
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 42
    return-void
.end method

.method public static writeLongObject(Landroid/os/Parcel;ILjava/lang/Long;Z)V
    .registers 4

    .line 1
    if-nez p2, :cond_9

    .line 3
    if-eqz p3, :cond_8

    .line 5
    const/4 p2, 0x0

    .line 6
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 9
    :cond_8
    return-void

    .line 10
    :cond_9
    const/16 p3, 0x8

    .line 12
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 15
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 18
    move-result-wide p1

    .line 19
    invoke-virtual {p0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 22
    return-void
.end method

.method public static writeParcel(Landroid/os/Parcel;ILandroid/os/Parcel;Z)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_9

    .line 4
    if-eqz p3, :cond_8

    .line 6
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 9
    :cond_8
    return-void

    .line 10
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    .line 13
    move-result p1

    .line 14
    invoke-virtual {p2}, Landroid/os/Parcel;->dataSize()I

    .line 17
    move-result p3

    .line 18
    invoke-virtual {p0, p2, v0, p3}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 21
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 24
    return-void
.end method

.method public static writeParcelArray(Landroid/os/Parcel;I[Landroid/os/Parcel;Z)V
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_9

    .line 4
    if-eqz p3, :cond_8

    .line 6
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 9
    :cond_8
    return-void

    .line 10
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    .line 13
    move-result p1

    .line 14
    array-length p3, p2

    .line 15
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    move v1, v0

    .line 19
    :goto_12
    if-ge v1, p3, :cond_2d

    .line 21
    aget-object v2, p2, v1

    .line 23
    if-eqz v2, :cond_27

    .line 25
    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    .line 28
    move-result v3

    .line 29
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    .line 35
    move-result v3

    .line 36
    invoke-virtual {p0, v2, v0, v3}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 39
    goto :goto_2a

    .line 40
    :cond_27
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    :goto_2a
    add-int/lit8 v1, v1, 0x1

    .line 45
    goto :goto_12

    .line 46
    :cond_2d
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 49
    return-void
.end method

.method public static writeParcelList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "Landroid/os/Parcel;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_9

    .line 4
    if-eqz p3, :cond_8

    .line 6
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 9
    :cond_8
    return-void

    .line 10
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    .line 13
    move-result p1

    .line 14
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 17
    move-result p3

    .line 18
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    move v1, v0

    .line 22
    :goto_15
    if-ge v1, p3, :cond_34

    .line 24
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Landroid/os/Parcel;

    .line 30
    if-eqz v2, :cond_2e

    .line 32
    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    .line 35
    move-result v3

    .line 36
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    .line 42
    move-result v3

    .line 43
    invoke-virtual {p0, v2, v0, v3}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 46
    goto :goto_31

    .line 47
    :cond_2e
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    :goto_31
    add-int/lit8 v1, v1, 0x1

    .line 52
    goto :goto_15

    .line 53
    :cond_34
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 56
    return-void
.end method

.method public static writeParcelSparseArray(Landroid/os/Parcel;ILandroid/util/SparseArray;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcel;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_9

    .line 4
    if-eqz p3, :cond_8

    .line 6
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 9
    :cond_8
    return-void

    .line 10
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    .line 13
    move-result p1

    .line 14
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 17
    move-result p3

    .line 18
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    move v1, v0

    .line 22
    :goto_15
    if-ge v1, p3, :cond_3b

    .line 24
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 27
    move-result v2

    .line 28
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroid/os/Parcel;

    .line 37
    if-eqz v2, :cond_35

    .line 39
    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    .line 42
    move-result v3

    .line 43
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    .line 49
    move-result v3

    .line 50
    invoke-virtual {p0, v2, v0, v3}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 53
    goto :goto_38

    .line 54
    :cond_35
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    :goto_38
    add-int/lit8 v1, v1, 0x1

    .line 59
    goto :goto_15

    .line 60
    :cond_3b
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 63
    return-void
.end method

.method public static writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
    .registers 5

    .line 1
    if-nez p2, :cond_9

    .line 3
    if-eqz p4, :cond_8

    .line 5
    const/4 p2, 0x0

    .line 6
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 9
    :cond_8
    return-void

    .line 10
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    .line 13
    move-result p1

    .line 14
    invoke-interface {p2, p0, p3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 17
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 20
    return-void
.end method

.method public static writeShort(Landroid/os/Parcel;IS)V
    .registers 4

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 5
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    return-void
.end method

.method public static writeSparseBooleanArray(Landroid/os/Parcel;ILandroid/util/SparseBooleanArray;Z)V
    .registers 4

    .line 1
    if-nez p2, :cond_9

    .line 3
    if-eqz p3, :cond_8

    .line 5
    const/4 p2, 0x0

    .line 6
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 9
    :cond_8
    return-void

    .line 10
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    .line 13
    move-result p1

    .line 14
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V

    .line 17
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 20
    return-void
.end method

.method public static writeSparseIntArray(Landroid/os/Parcel;ILandroid/util/SparseIntArray;Z)V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_9

    .line 4
    if-eqz p3, :cond_8

    .line 6
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 9
    :cond_8
    return-void

    .line 10
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    .line 13
    move-result p1

    .line 14
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    .line 17
    move-result p3

    .line 18
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    :goto_14
    if-ge v0, p3, :cond_27

    .line 23
    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 26
    move-result v1

    .line 27
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 33
    move-result v1

    .line 34
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 39
    goto :goto_14

    .line 40
    :cond_27
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 43
    return-void
.end method

.method public static writeSparseLongArray(Landroid/os/Parcel;ILandroid/util/SparseLongArray;Z)V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_9

    .line 4
    if-eqz p3, :cond_8

    .line 6
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 9
    :cond_8
    return-void

    .line 10
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    .line 13
    move-result p1

    .line 14
    invoke-virtual {p2}, Landroid/util/SparseLongArray;->size()I

    .line 17
    move-result p3

    .line 18
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    :goto_14
    if-ge v0, p3, :cond_27

    .line 23
    invoke-virtual {p2, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    .line 26
    move-result v1

    .line 27
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    invoke-virtual {p2, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    .line 33
    move-result-wide v1

    .line 34
    invoke-virtual {p0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 39
    goto :goto_14

    .line 40
    :cond_27
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 43
    return-void
.end method

.method public static writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V
    .registers 4

    .line 1
    if-nez p2, :cond_9

    .line 3
    if-eqz p3, :cond_8

    .line 5
    const/4 p2, 0x0

    .line 6
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 9
    :cond_8
    return-void

    .line 10
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    .line 13
    move-result p1

    .line 14
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 20
    return-void
.end method

.method public static writeStringArray(Landroid/os/Parcel;I[Ljava/lang/String;Z)V
    .registers 4

    .line 1
    if-nez p2, :cond_9

    .line 3
    if-eqz p3, :cond_8

    .line 5
    const/4 p2, 0x0

    .line 6
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 9
    :cond_8
    return-void

    .line 10
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    .line 13
    move-result p1

    .line 14
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 20
    return-void
.end method

.method public static writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_9

    .line 3
    if-eqz p3, :cond_8

    .line 5
    const/4 p2, 0x0

    .line 6
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 9
    :cond_8
    return-void

    .line 10
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    .line 13
    move-result p1

    .line 14
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 17
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 20
    return-void
.end method

.method public static writeStringSparseArray(Landroid/os/Parcel;ILandroid/util/SparseArray;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_9

    .line 4
    if-eqz p3, :cond_8

    .line 6
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 9
    :cond_8
    return-void

    .line 10
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    .line 13
    move-result p1

    .line 14
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 17
    move-result p3

    .line 18
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    :goto_14
    if-ge v0, p3, :cond_29

    .line 23
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 26
    move-result v1

    .line 27
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/String;

    .line 36
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    add-int/lit8 v0, v0, 0x1

    .line 41
    goto :goto_14

    .line 42
    :cond_29
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 45
    return-void
.end method

.method public static writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I[TT;IZ)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_9

    .line 4
    if-eqz p4, :cond_8

    .line 6
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 9
    :cond_8
    return-void

    .line 10
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    .line 13
    move-result p1

    .line 14
    array-length p4, p2

    .line 15
    invoke-virtual {p0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    move v1, v0

    .line 19
    :goto_12
    if-ge v1, p4, :cond_22

    .line 21
    aget-object v2, p2, v1

    .line 23
    if-nez v2, :cond_1c

    .line 25
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    goto :goto_1f

    .line 29
    :cond_1c
    invoke-static {p0, v2, p3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 32
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_12

    .line 35
    :cond_22
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 38
    return-void
.end method

.method public static writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_9

    .line 4
    if-eqz p3, :cond_8

    .line 6
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 9
    :cond_8
    return-void

    .line 10
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    .line 13
    move-result p1

    .line 14
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 17
    move-result p3

    .line 18
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    move v1, v0

    .line 22
    :goto_15
    if-ge v1, p3, :cond_29

    .line 24
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Landroid/os/Parcelable;

    .line 30
    if-nez v2, :cond_23

    .line 32
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    goto :goto_26

    .line 36
    :cond_23
    invoke-static {p0, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 39
    :goto_26
    add-int/lit8 v1, v1, 0x1

    .line 41
    goto :goto_15

    .line 42
    :cond_29
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 45
    return-void
.end method

.method public static writeTypedSparseArray(Landroid/os/Parcel;ILandroid/util/SparseArray;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/util/SparseArray<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_9

    .line 4
    if-eqz p3, :cond_8

    .line 6
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 9
    :cond_8
    return-void

    .line 10
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    .line 13
    move-result p1

    .line 14
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 17
    move-result p3

    .line 18
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    move v1, v0

    .line 22
    :goto_15
    if-ge v1, p3, :cond_30

    .line 24
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 27
    move-result v2

    .line 28
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroid/os/Parcelable;

    .line 37
    if-nez v2, :cond_2a

    .line 39
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    goto :goto_2d

    .line 43
    :cond_2a
    invoke-static {p0, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 46
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    .line 48
    goto :goto_15

    .line 49
    :cond_30
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 52
    return-void
.end method

.method private static zza(Landroid/os/Parcel;I)I
    .registers 3

    const/high16 v0, -0x10000

    or-int/2addr p1, v0

    .line 1
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    return p0
.end method

.method private static zza(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "TT;I)V"
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x1

    .line 5
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 7
    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 8
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result p1

    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p1, v1

    .line 10
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method private static zzb(Landroid/os/Parcel;I)V
    .registers 4

    .line 4
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    sub-int v1, v0, p1

    add-int/lit8 p1, p1, -0x4

    .line 5
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 6
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method private static zzb(Landroid/os/Parcel;II)V
    .registers 4

    const v0, 0xffff

    if-lt p2, v0, :cond_f

    const/high16 v0, -0x10000

    or-int/2addr p1, v0

    .line 1
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_f
    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p1, p2

    .line 3
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
