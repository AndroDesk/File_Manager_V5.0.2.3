.class public final Landroidx/collection/d;
.super Ljava/lang/Object;
.source "LongSparseArray.java"

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
.field public static final e:Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:[J

.field public c:[Ljava/lang/Object;

.field public d:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/collection/d;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroidx/collection/d;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/collection/d;->a:Z

    if-nez p1, :cond_11

    sget-object p1, La/b;->b:[J

    iput-object p1, p0, Landroidx/collection/d;->b:[J

    sget-object p1, La/b;->c:[Ljava/lang/Object;

    iput-object p1, p0, Landroidx/collection/d;->c:[Ljava/lang/Object;

    goto :goto_2d

    :cond_11
    mul-int/lit8 p1, p1, 0x8

    const/4 v0, 0x4

    :goto_14
    const/16 v1, 0x20

    if-ge v0, v1, :cond_23

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p1, v1, :cond_20

    move p1, v1

    goto :goto_23

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_23
    :goto_23
    div-int/lit8 p1, p1, 0x8

    new-array v0, p1, [J

    iput-object v0, p0, Landroidx/collection/d;->b:[J

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroidx/collection/d;->c:[Ljava/lang/Object;

    :goto_2d
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    iget v0, p0, Landroidx/collection/d;->d:I

    iget-object v1, p0, Landroidx/collection/d;->c:[Ljava/lang/Object;

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, v0, :cond_e

    const/4 v4, 0x0

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_e
    iput v2, p0, Landroidx/collection/d;->d:I

    iput-boolean v2, p0, Landroidx/collection/d;->a:Z

    return-void
.end method

.method public final b()Landroidx/collection/d;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/d<",
            "TE;>;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/d;

    iget-object v1, p0, Landroidx/collection/d;->b:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Landroidx/collection/d;->b:[J

    iget-object v1, p0, Landroidx/collection/d;->c:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Landroidx/collection/d;->c:[Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object v0

    :catch_1b
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final c()V
    .registers 10

    iget v0, p0, Landroidx/collection/d;->d:I

    iget-object v1, p0, Landroidx/collection/d;->b:[J

    iget-object v2, p0, Landroidx/collection/d;->c:[Ljava/lang/Object;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_9
    if-ge v4, v0, :cond_21

    aget-object v6, v2, v4

    sget-object v7, Landroidx/collection/d;->e:Ljava/lang/Object;

    if-eq v6, v7, :cond_1e

    if-eq v4, v5, :cond_1c

    aget-wide v7, v1, v4

    aput-wide v7, v1, v5

    aput-object v6, v2, v5

    const/4 v6, 0x0

    aput-object v6, v2, v4

    :cond_1c
    add-int/lit8 v5, v5, 0x1

    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_21
    iput-boolean v3, p0, Landroidx/collection/d;->a:Z

    iput v5, p0, Landroidx/collection/d;->d:I

    return-void
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Landroidx/collection/d;->b()Landroidx/collection/d;

    move-result-object v0

    return-object v0
.end method

.method public final d(JLjava/lang/Long;)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Landroidx/collection/d;->b:[J

    iget v1, p0, Landroidx/collection/d;->d:I

    invoke-static {v0, v1, p1, p2}, La/b;->i([JIJ)I

    move-result p1

    if-ltz p1, :cond_14

    iget-object p2, p0, Landroidx/collection/d;->c:[Ljava/lang/Object;

    aget-object p1, p2, p1

    sget-object p2, Landroidx/collection/d;->e:Ljava/lang/Object;

    if-ne p1, p2, :cond_13

    goto :goto_14

    :cond_13
    return-object p1

    :cond_14
    :goto_14
    return-object p3
.end method

.method public final e(I)J
    .registers 5

    iget-boolean v0, p0, Landroidx/collection/d;->a:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroidx/collection/d;->c()V

    :cond_7
    iget-object v0, p0, Landroidx/collection/d;->b:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public final f(JLjava/lang/Object;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/collection/d;->b:[J

    iget v1, p0, Landroidx/collection/d;->d:I

    invoke-static {v0, v1, p1, p2}, La/b;->i([JIJ)I

    move-result v0

    if-ltz v0, :cond_10

    iget-object p1, p0, Landroidx/collection/d;->c:[Ljava/lang/Object;

    aput-object p3, p1, v0

    goto/16 :goto_8c

    :cond_10
    not-int v0, v0

    iget v1, p0, Landroidx/collection/d;->d:I

    if-ge v0, v1, :cond_24

    iget-object v2, p0, Landroidx/collection/d;->c:[Ljava/lang/Object;

    aget-object v3, v2, v0

    sget-object v4, Landroidx/collection/d;->e:Ljava/lang/Object;

    if-ne v3, v4, :cond_24

    iget-object v1, p0, Landroidx/collection/d;->b:[J

    aput-wide p1, v1, v0

    aput-object p3, v2, v0

    return-void

    :cond_24
    iget-boolean v2, p0, Landroidx/collection/d;->a:Z

    if-eqz v2, :cond_39

    iget-object v2, p0, Landroidx/collection/d;->b:[J

    array-length v2, v2

    if-lt v1, v2, :cond_39

    invoke-virtual {p0}, Landroidx/collection/d;->c()V

    iget-object v0, p0, Landroidx/collection/d;->b:[J

    iget v1, p0, Landroidx/collection/d;->d:I

    invoke-static {v0, v1, p1, p2}, La/b;->i([JIJ)I

    move-result v0

    not-int v0, v0

    :cond_39
    iget v1, p0, Landroidx/collection/d;->d:I

    iget-object v2, p0, Landroidx/collection/d;->b:[J

    array-length v2, v2

    const/4 v3, 0x1

    if-lt v1, v2, :cond_6b

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x8

    const/4 v2, 0x4

    :goto_45
    const/16 v4, 0x20

    if-ge v2, v4, :cond_54

    shl-int v4, v3, v2

    add-int/lit8 v4, v4, -0xc

    if-gt v1, v4, :cond_51

    move v1, v4

    goto :goto_54

    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    :cond_54
    :goto_54
    div-int/lit8 v1, v1, 0x8

    new-array v2, v1, [J

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Landroidx/collection/d;->b:[J

    array-length v5, v4

    const/4 v6, 0x0

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Landroidx/collection/d;->c:[Ljava/lang/Object;

    array-length v5, v4

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Landroidx/collection/d;->b:[J

    iput-object v1, p0, Landroidx/collection/d;->c:[Ljava/lang/Object;

    :cond_6b
    iget v1, p0, Landroidx/collection/d;->d:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_7f

    iget-object v2, p0, Landroidx/collection/d;->b:[J

    add-int/lit8 v4, v0, 0x1

    invoke-static {v2, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Landroidx/collection/d;->c:[Ljava/lang/Object;

    iget v2, p0, Landroidx/collection/d;->d:I

    sub-int/2addr v2, v0

    invoke-static {v1, v0, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7f
    iget-object v1, p0, Landroidx/collection/d;->b:[J

    aput-wide p1, v1, v0

    iget-object p1, p0, Landroidx/collection/d;->c:[Ljava/lang/Object;

    aput-object p3, p1, v0

    iget p1, p0, Landroidx/collection/d;->d:I

    add-int/2addr p1, v3

    iput p1, p0, Landroidx/collection/d;->d:I

    :goto_8c
    return-void
.end method

.method public final g(J)V
    .registers 5

    iget-object v0, p0, Landroidx/collection/d;->b:[J

    iget v1, p0, Landroidx/collection/d;->d:I

    invoke-static {v0, v1, p1, p2}, La/b;->i([JIJ)I

    move-result p1

    if-ltz p1, :cond_17

    iget-object p2, p0, Landroidx/collection/d;->c:[Ljava/lang/Object;

    aget-object v0, p2, p1

    sget-object v1, Landroidx/collection/d;->e:Ljava/lang/Object;

    if-eq v0, v1, :cond_17

    aput-object v1, p2, p1

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/collection/d;->a:Z

    :cond_17
    return-void
.end method

.method public final h()I
    .registers 2

    iget-boolean v0, p0, Landroidx/collection/d;->a:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroidx/collection/d;->c()V

    :cond_7
    iget v0, p0, Landroidx/collection/d;->d:I

    return v0
.end method

.method public final i(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/collection/d;->a:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroidx/collection/d;->c()V

    :cond_7
    iget-object v0, p0, Landroidx/collection/d;->c:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Landroidx/collection/d;->h()I

    move-result v0

    if-gtz v0, :cond_9

    const-string v0, "{}"

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/collection/d;->d:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_18
    iget v2, p0, Landroidx/collection/d;->d:I

    if-ge v1, v2, :cond_41

    if-lez v1, :cond_23

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    invoke-virtual {p0, v1}, Landroidx/collection/d;->e(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroidx/collection/d;->i(I)Ljava/lang/Object;

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
