.class public final Lh1/b;
.super Lh1/a;
.source "VersionedParcelParcel.java"


# instance fields
.field public final d:Landroid/util/SparseIntArray;

.field public final e:Landroid/os/Parcel;

.field public final f:I

.field public final g:I

.field public final h:Ljava/lang/String;

.field public i:I

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 10

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    new-instance v5, Landroidx/collection/a;

    invoke-direct {v5}, Landroidx/collection/a;-><init>()V

    new-instance v6, Landroidx/collection/a;

    invoke-direct {v6}, Landroidx/collection/a;-><init>()V

    new-instance v7, Landroidx/collection/a;

    invoke-direct {v7}, Landroidx/collection/a;-><init>()V

    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lh1/b;-><init>(Landroid/os/Parcel;IILjava/lang/String;Landroidx/collection/a;Landroidx/collection/a;Landroidx/collection/a;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;IILjava/lang/String;Landroidx/collection/a;Landroidx/collection/a;Landroidx/collection/a;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "II",
            "Ljava/lang/String;",
            "Landroidx/collection/a<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Landroidx/collection/a<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Landroidx/collection/a<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p5, p6, p7}, Lh1/a;-><init>(Landroidx/collection/a;Landroidx/collection/a;Landroidx/collection/a;)V

    .line 3
    new-instance p5, Landroid/util/SparseIntArray;

    invoke-direct {p5}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p5, p0, Lh1/b;->d:Landroid/util/SparseIntArray;

    const/4 p5, -0x1

    .line 4
    iput p5, p0, Lh1/b;->i:I

    .line 5
    iput p5, p0, Lh1/b;->k:I

    .line 6
    iput-object p1, p0, Lh1/b;->e:Landroid/os/Parcel;

    .line 7
    iput p2, p0, Lh1/b;->f:I

    .line 8
    iput p3, p0, Lh1/b;->g:I

    .line 9
    iput p2, p0, Lh1/b;->j:I

    .line 10
    iput-object p4, p0, Lh1/b;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lh1/b;
    .registers 10

    .line 1
    new-instance v8, Lh1/b;

    .line 3
    iget-object v1, p0, Lh1/b;->e:Landroid/os/Parcel;

    .line 5
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 8
    move-result v2

    .line 9
    iget v0, p0, Lh1/b;->j:I

    .line 11
    iget v3, p0, Lh1/b;->f:I

    .line 13
    if-ne v0, v3, :cond_10

    .line 15
    iget v0, p0, Lh1/b;->g:I

    .line 17
    :cond_10
    move v3, v0

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    iget-object v4, p0, Lh1/b;->h:Ljava/lang/String;

    .line 25
    const-string v5, "  "

    .line 27
    invoke-static {v0, v4, v5}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v4

    .line 31
    iget-object v5, p0, Lh1/a;->a:Landroidx/collection/a;

    .line 33
    iget-object v6, p0, Lh1/a;->b:Landroidx/collection/a;

    .line 35
    iget-object v7, p0, Lh1/a;->c:Landroidx/collection/a;

    .line 37
    move-object v0, v8

    .line 38
    invoke-direct/range {v0 .. v7}, Lh1/b;-><init>(Landroid/os/Parcel;IILjava/lang/String;Landroidx/collection/a;Landroidx/collection/a;Landroidx/collection/a;)V

    .line 41
    return-object v8
.end method

.method public final e()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lh1/b;->e:Landroid/os/Parcel;

    .line 3
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    return v0
.end method

.method public final f()[B
    .registers 3

    .line 1
    iget-object v0, p0, Lh1/b;->e:Landroid/os/Parcel;

    .line 3
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 6
    move-result v0

    .line 7
    if-gez v0, :cond_a

    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_a
    new-array v0, v0, [B

    .line 13
    iget-object v1, p0, Lh1/b;->e:Landroid/os/Parcel;

    .line 15
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 18
    return-object v0
.end method

.method public final g()Ljava/lang/CharSequence;
    .registers 3

    .line 1
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 3
    iget-object v1, p0, Lh1/b;->e:Landroid/os/Parcel;

    .line 5
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/CharSequence;

    .line 11
    return-object v0
.end method

.method public final h(I)Z
    .registers 6

    .line 1
    :goto_0
    iget v0, p0, Lh1/b;->j:I

    .line 3
    iget v1, p0, Lh1/b;->g:I

    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-ge v0, v1, :cond_37

    .line 9
    iget v0, p0, Lh1/b;->k:I

    .line 11
    if-ne v0, p1, :cond_d

    .line 13
    return v2

    .line 14
    :cond_d
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 25
    move-result v0

    .line 26
    if-lez v0, :cond_1c

    .line 28
    return v3

    .line 29
    :cond_1c
    iget-object v0, p0, Lh1/b;->e:Landroid/os/Parcel;

    .line 31
    iget v1, p0, Lh1/b;->j:I

    .line 33
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 36
    iget-object v0, p0, Lh1/b;->e:Landroid/os/Parcel;

    .line 38
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 41
    move-result v0

    .line 42
    iget-object v1, p0, Lh1/b;->e:Landroid/os/Parcel;

    .line 44
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 47
    move-result v1

    .line 48
    iput v1, p0, Lh1/b;->k:I

    .line 50
    iget v1, p0, Lh1/b;->j:I

    .line 52
    add-int/2addr v1, v0

    .line 53
    iput v1, p0, Lh1/b;->j:I

    .line 55
    goto :goto_0

    .line 56
    :cond_37
    iget v0, p0, Lh1/b;->k:I

    .line 58
    if-ne v0, p1, :cond_3c

    .line 60
    goto :goto_3d

    .line 61
    :cond_3c
    move v2, v3

    .line 62
    :goto_3d
    return v2
.end method

.method public final i()I
    .registers 2

    .line 1
    iget-object v0, p0, Lh1/b;->e:Landroid/os/Parcel;

    .line 3
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final j()Landroid/os/Parcelable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh1/b;->e:Landroid/os/Parcel;

    .line 3
    const-class v1, Lh1/b;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lh1/b;->e:Landroid/os/Parcel;

    .line 3
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final m(I)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lh1/b;->u()V

    .line 4
    iput p1, p0, Lh1/b;->i:I

    .line 6
    iget-object v0, p0, Lh1/b;->d:Landroid/util/SparseIntArray;

    .line 8
    iget-object v1, p0, Lh1/b;->e:Landroid/os/Parcel;

    .line 10
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Lh1/b;->q(I)V

    .line 21
    invoke-virtual {p0, p1}, Lh1/b;->q(I)V

    .line 24
    return-void
.end method

.method public final n(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lh1/b;->e:Landroid/os/Parcel;

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    return-void
.end method

.method public final o([B)V
    .registers 4

    .line 1
    if-eqz p1, :cond_e

    .line 3
    iget-object v0, p0, Lh1/b;->e:Landroid/os/Parcel;

    .line 5
    array-length v1, p1

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-object v0, p0, Lh1/b;->e:Landroid/os/Parcel;

    .line 11
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 14
    goto :goto_14

    .line 15
    :cond_e
    iget-object p1, p0, Lh1/b;->e:Landroid/os/Parcel;

    .line 17
    const/4 v0, -0x1

    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    :goto_14
    return-void
.end method

.method public final p(Ljava/lang/CharSequence;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lh1/b;->e:Landroid/os/Parcel;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v0, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 7
    return-void
.end method

.method public final q(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lh1/b;->e:Landroid/os/Parcel;

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    return-void
.end method

.method public final r(Landroid/os/Parcelable;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lh1/b;->e:Landroid/os/Parcel;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 7
    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lh1/b;->e:Landroid/os/Parcel;

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public final u()V
    .registers 5

    .line 1
    iget v0, p0, Lh1/b;->i:I

    .line 3
    if-ltz v0, :cond_21

    .line 5
    iget-object v1, p0, Lh1/b;->d:Landroid/util/SparseIntArray;

    .line 7
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lh1/b;->e:Landroid/os/Parcel;

    .line 13
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 16
    move-result v1

    .line 17
    sub-int v2, v1, v0

    .line 19
    iget-object v3, p0, Lh1/b;->e:Landroid/os/Parcel;

    .line 21
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 24
    iget-object v0, p0, Lh1/b;->e:Landroid/os/Parcel;

    .line 26
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    iget-object v0, p0, Lh1/b;->e:Landroid/os/Parcel;

    .line 31
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 34
    :cond_21
    return-void
.end method
