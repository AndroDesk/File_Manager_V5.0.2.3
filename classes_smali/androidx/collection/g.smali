.class public final Landroidx/collection/g;
.super Ljava/lang/Object;
.source "SparseArrayCompat.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/Object;


# instance fields
.field public a:[I

.field public b:[Ljava/lang/Object;

.field public c:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/collection/g;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    const/16 v1, 0x28

    move v2, v0

    :goto_7
    const/16 v3, 0x20

    if-ge v2, v3, :cond_16

    const/4 v3, 0x1

    shl-int/2addr v3, v2

    add-int/lit8 v3, v3, -0xc

    if-gt v1, v3, :cond_13

    move v1, v3

    goto :goto_16

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_16
    :goto_16
    div-int/2addr v1, v0

    new-array v0, v1, [I

    iput-object v0, p0, Landroidx/collection/g;->a:[I

    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/collection/g;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    iget v0, p0, Landroidx/collection/g;->c:I

    if-eqz v0, :cond_10

    iget-object v1, p0, Landroidx/collection/g;->a:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    if-gt p1, v1, :cond_10

    invoke-virtual {p0, p1, p2}, Landroidx/collection/g;->f(ILjava/lang/Object;)V

    return-void

    :cond_10
    iget-object v1, p0, Landroidx/collection/g;->a:[I

    array-length v1, v1

    const/4 v2, 0x1

    if-lt v0, v1, :cond_40

    add-int/lit8 v1, v0, 0x1

    const/4 v3, 0x4

    mul-int/2addr v1, v3

    move v4, v3

    :goto_1b
    const/16 v5, 0x20

    if-ge v4, v5, :cond_2a

    shl-int v5, v2, v4

    add-int/lit8 v5, v5, -0xc

    if-gt v1, v5, :cond_27

    move v1, v5

    goto :goto_2a

    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_2a
    :goto_2a
    div-int/2addr v1, v3

    new-array v3, v1, [I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Landroidx/collection/g;->a:[I

    array-length v5, v4

    const/4 v6, 0x0

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Landroidx/collection/g;->b:[Ljava/lang/Object;

    array-length v5, v4

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Landroidx/collection/g;->a:[I

    iput-object v1, p0, Landroidx/collection/g;->b:[Ljava/lang/Object;

    :cond_40
    iget-object v1, p0, Landroidx/collection/g;->a:[I

    aput p1, v1, v0

    iget-object p1, p0, Landroidx/collection/g;->b:[Ljava/lang/Object;

    aput-object p2, p1, v0

    add-int/2addr v0, v2

    iput v0, p0, Landroidx/collection/g;->c:I

    return-void
.end method

.method public final b()Landroidx/collection/g;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/g<",
            "TE;>;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/g;

    iget-object v1, p0, Landroidx/collection/g;->a:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Landroidx/collection/g;->a:[I

    iget-object v1, p0, Landroidx/collection/g;->b:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Landroidx/collection/g;->b:[Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object v0

    :catch_1b
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final c(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/collection/g;->a:[I

    iget v1, p0, Landroidx/collection/g;->c:I

    invoke-static {v0, v1, p1}, La/b;->h([III)I

    move-result p1

    if-ltz p1, :cond_14

    iget-object v0, p0, Landroidx/collection/g;->b:[Ljava/lang/Object;

    aget-object p1, v0, p1

    sget-object v0, Landroidx/collection/g;->d:Ljava/lang/Object;

    if-ne p1, v0, :cond_13

    goto :goto_14

    :cond_13
    return-object p1

    :cond_14
    :goto_14
    return-object p2
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Landroidx/collection/g;->b()Landroidx/collection/g;

    move-result-object v0

    return-object v0
.end method

.method public final d(I)I
    .registers 4

    iget-object v0, p0, Landroidx/collection/g;->a:[I

    iget v1, p0, Landroidx/collection/g;->c:I

    invoke-static {v0, v1, p1}, La/b;->h([III)I

    move-result p1

    return p1
.end method

.method public final e(I)I
    .registers 3

    iget-object v0, p0, Landroidx/collection/g;->a:[I

    aget p1, v0, p1

    return p1
.end method

.method public final f(ILjava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/collection/g;->a:[I

    iget v1, p0, Landroidx/collection/g;->c:I

    invoke-static {v0, v1, p1}, La/b;->h([III)I

    move-result v0

    if-ltz v0, :cond_f

    iget-object p1, p0, Landroidx/collection/g;->b:[Ljava/lang/Object;

    aput-object p2, p1, v0

    goto :goto_73

    :cond_f
    not-int v0, v0

    iget v1, p0, Landroidx/collection/g;->c:I

    if-ge v0, v1, :cond_23

    iget-object v2, p0, Landroidx/collection/g;->b:[Ljava/lang/Object;

    aget-object v3, v2, v0

    sget-object v4, Landroidx/collection/g;->d:Ljava/lang/Object;

    if-ne v3, v4, :cond_23

    iget-object v1, p0, Landroidx/collection/g;->a:[I

    aput p1, v1, v0

    aput-object p2, v2, v0

    return-void

    :cond_23
    iget-object v2, p0, Landroidx/collection/g;->a:[I

    array-length v2, v2

    const/4 v3, 0x1

    if-lt v1, v2, :cond_52

    add-int/2addr v1, v3

    const/4 v2, 0x4

    mul-int/2addr v1, v2

    move v4, v2

    :goto_2d
    const/16 v5, 0x20

    if-ge v4, v5, :cond_3c

    shl-int v5, v3, v4

    add-int/lit8 v5, v5, -0xc

    if-gt v1, v5, :cond_39

    move v1, v5

    goto :goto_3c

    :cond_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    :cond_3c
    :goto_3c
    div-int/2addr v1, v2

    new-array v2, v1, [I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Landroidx/collection/g;->a:[I

    array-length v5, v4

    const/4 v6, 0x0

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Landroidx/collection/g;->b:[Ljava/lang/Object;

    array-length v5, v4

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Landroidx/collection/g;->a:[I

    iput-object v1, p0, Landroidx/collection/g;->b:[Ljava/lang/Object;

    :cond_52
    iget v1, p0, Landroidx/collection/g;->c:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_66

    iget-object v2, p0, Landroidx/collection/g;->a:[I

    add-int/lit8 v4, v0, 0x1

    invoke-static {v2, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Landroidx/collection/g;->b:[Ljava/lang/Object;

    iget v2, p0, Landroidx/collection/g;->c:I

    sub-int/2addr v2, v0

    invoke-static {v1, v0, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_66
    iget-object v1, p0, Landroidx/collection/g;->a:[I

    aput p1, v1, v0

    iget-object p1, p0, Landroidx/collection/g;->b:[Ljava/lang/Object;

    aput-object p2, p1, v0

    iget p1, p0, Landroidx/collection/g;->c:I

    add-int/2addr p1, v3

    iput p1, p0, Landroidx/collection/g;->c:I

    :goto_73
    return-void
.end method

.method public final g()I
    .registers 2

    iget v0, p0, Landroidx/collection/g;->c:I

    return v0
.end method

.method public final h(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/collection/g;->b:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Landroidx/collection/g;->g()I

    move-result v0

    if-gtz v0, :cond_9

    const-string v0, "{}"

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/collection/g;->c:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_18
    iget v2, p0, Landroidx/collection/g;->c:I

    if-ge v1, v2, :cond_41

    if-lez v1, :cond_23

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    invoke-virtual {p0, v1}, Landroidx/collection/g;->e(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroidx/collection/g;->h(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_39

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3e

    :cond_39
    const-string v2, "(this Map)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_41
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
