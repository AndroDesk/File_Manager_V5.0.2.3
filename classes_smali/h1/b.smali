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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 10

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

    invoke-direct {p0, p5, p6, p7}, Lh1/a;-><init>(Landroidx/collection/a;Landroidx/collection/a;Landroidx/collection/a;)V

    new-instance p5, Landroid/util/SparseIntArray;

    invoke-direct {p5}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p5, p0, Lh1/b;->d:Landroid/util/SparseIntArray;

    const/4 p5, -0x1

    iput p5, p0, Lh1/b;->i:I

    iput p5, p0, Lh1/b;->k:I

    iput-object p1, p0, Lh1/b;->e:Landroid/os/Parcel;

    iput p2, p0, Lh1/b;->f:I

    iput p3, p0, Lh1/b;->g:I

    iput p2, p0, Lh1/b;->j:I

    iput-object p4, p0, Lh1/b;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lh1/b;
    .registers 10

    new-instance v8, Lh1/b;

    iget-object v1, p0, Lh1/b;->e:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    iget v0, p0, Lh1/b;->j:I

    iget v3, p0, Lh1/b;->f:I

    if-ne v0, v3, :cond_10

    iget v0, p0, Lh1/b;->g:I

    :cond_10
    move v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lh1/b;->h:Ljava/lang/String;

    const-string v5, "  "

    invoke-static {v0, v4, v5}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lh1/a;->a:Landroidx/collection/a;

    iget-object v6, p0, Lh1/a;->b:Landroidx/collection/a;

    iget-object v7, p0, Lh1/a;->c:Landroidx/collection/a;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lh1/b;-><init>(Landroid/os/Parcel;IILjava/lang/String;Landroidx/collection/a;Landroidx/collection/a;Landroidx/collection/a;)V

    return-object v8
.end method

.method public final e()Z
    .registers 2

    iget-object v0, p0, Lh1/b;->e:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final f()[B
    .registers 3

    iget-object v0, p0, Lh1/b;->e:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    new-array v0, v0, [B

    iget-object v1, p0, Lh1/b;->e:Landroid/os/Parcel;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    return-object v0
.end method

.method public final g()Ljava/lang/CharSequence;
    .registers 3

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    iget-object v1, p0, Lh1/b;->e:Landroid/os/Parcel;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final h(I)Z
    .registers 6

    :goto_0
    iget v0, p0, Lh1/b;->j:I

    iget v1, p0, Lh1/b;->g:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_37

    iget v0, p0, Lh1/b;->k:I

    if-ne v0, p1, :cond_d

    return v2

    :cond_d
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1c

    return v3

    :cond_1c
    iget-object v0, p0, Lh1/b;->e:Landroid/os/Parcel;

    iget v1, p0, Lh1/b;->j:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v0, p0, Lh1/b;->e:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iget-object v1, p0, Lh1/b;->e:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lh1/b;->k:I

    iget v1, p0, Lh1/b;->j:I

    add-int/2addr v1, v0

    iput v1, p0, Lh1/b;->j:I

    goto :goto_0

    :cond_37
    iget v0, p0, Lh1/b;->k:I

    if-ne v0, p1, :cond_3c

    goto :goto_3d

    :cond_3c
    move v2, v3

    :goto_3d
    return v2
.end method

.method public final i()I
    .registers 2

    iget-object v0, p0, Lh1/b;->e:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

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

    iget-object v0, p0, Lh1/b;->e:Landroid/os/Parcel;

    const-class v1, Lh1/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lh1/b;->e:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m(I)V
    .registers 4

    invoke-virtual {p0}, Lh1/b;->u()V

    iput p1, p0, Lh1/b;->i:I

    iget-object v0, p0, Lh1/b;->d:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lh1/b;->e:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lh1/b;->q(I)V

    invoke-virtual {p0, p1}, Lh1/b;->q(I)V

    return-void
.end method

.method public final n(Z)V
    .registers 3

    iget-object v0, p0, Lh1/b;->e:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public final o([B)V
    .registers 4

    if-eqz p1, :cond_e

    iget-object v0, p0, Lh1/b;->e:Landroid/os/Parcel;

    array-length v1, p1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lh1/b;->e:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_14

    :cond_e
    iget-object p1, p0, Lh1/b;->e:Landroid/os/Parcel;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_14
    return-void
.end method

.method public final p(Ljava/lang/CharSequence;)V
    .registers 4

    iget-object v0, p0, Lh1/b;->e:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    return-void
.end method

.method public final q(I)V
    .registers 3

    iget-object v0, p0, Lh1/b;->e:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public final r(Landroid/os/Parcelable;)V
    .registers 4

    iget-object v0, p0, Lh1/b;->e:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lh1/b;->e:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public final u()V
    .registers 5

    iget v0, p0, Lh1/b;->i:I

    if-ltz v0, :cond_21

    iget-object v1, p0, Lh1/b;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    iget-object v1, p0, Lh1/b;->e:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    sub-int v2, v1, v0

    iget-object v3, p0, Lh1/b;->e:Landroid/os/Parcel;

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v0, p0, Lh1/b;->e:Landroid/os/Parcel;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lh1/b;->e:Landroid/os/Parcel;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    :cond_21
    return-void
.end method
