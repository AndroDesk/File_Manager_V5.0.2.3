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

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Landroidx/collection/d;->e:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xa

    .line 1
    invoke-direct {p0, v0}, Landroidx/collection/d;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroidx/collection/d;->a:Z

    if-nez p1, :cond_11

    .line 4
    sget-object p1, La/b;->b:[J

    iput-object p1, p0, Landroidx/collection/d;->b:[J

    .line 5
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

    .line 6
    :cond_23
    :goto_23
    div-int/lit8 p1, p1, 0x8

    .line 7
    new-array v0, p1, [J

    iput-object v0, p0, Landroidx/collection/d;->b:[J

    .line 8
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroidx/collection/d;->c:[Ljava/lang/Object;

    :goto_2d
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    .line 1
    iget v0, p0, Landroidx/collection/d;->d:I

    .line 3
    iget-object v1, p0, Landroidx/collection/d;->c:[Ljava/lang/Object;

    .line 5
    const/4 v2, 0x0

    .line 6
    move v3, v2

    .line 7
    :goto_6
    if-ge v3, v0, :cond_e

    .line 9
    const/4 v4, 0x0

    .line 10
    aput-object v4, v1, v3

    .line 12
    add-int/lit8 v3, v3, 0x1

    .line 14
    goto :goto_6

    .line 15
    :cond_e
    iput v2, p0, Landroidx/collection/d;->d:I

    .line 17
    iput-boolean v2, p0, Landroidx/collection/d;->a:Z

    .line 19
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

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/collection/d;

    .line 7
    iget-object v1, p0, Landroidx/collection/d;->b:[J

    .line 9
    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    check-cast v1, [J

    .line 15
    iput-object v1, v0, Landroidx/collection/d;->b:[J

    .line 17
    iget-object v1, p0, Landroidx/collection/d;->c:[Ljava/lang/Object;

    .line 19
    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    check-cast v1, [Ljava/lang/Object;

    .line 25
    iput-object v1, v0, Landroidx/collection/d;->c:[Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 27
    return-object v0

    .line 28
    :catch_1b
    move-exception v0

    .line 29
    new-instance v1, Ljava/lang/AssertionError;

    .line 31
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 34
    throw v1
.end method

.method public final c()V
    .registers 10

    .line 1
    iget v0, p0, Landroidx/collection/d;->d:I

    .line 3
    iget-object v1, p0, Landroidx/collection/d;->b:[J

    .line 5
    iget-object v2, p0, Landroidx/collection/d;->c:[Ljava/lang/Object;

    .line 7
    const/4 v3, 0x0

    .line 8
    move v4, v3

    .line 9
    move v5, v4

    .line 10
    :goto_9
    if-ge v4, v0, :cond_21

    .line 12
    aget-object v6, v2, v4

    .line 14
    sget-object v7, Landroidx/collection/d;->e:Ljava/lang/Object;

    .line 16
    if-eq v6, v7, :cond_1e

    .line 18
    if-eq v4, v5, :cond_1c

    .line 20
    aget-wide v7, v1, v4

    .line 22
    aput-wide v7, v1, v5

    .line 24
    aput-object v6, v2, v5

    .line 26
    const/4 v6, 0x0

    .line 27
    aput-object v6, v2, v4

    .line 29
    :cond_1c
    add-int/lit8 v5, v5, 0x1

    .line 31
    :cond_1e
    add-int/lit8 v4, v4, 0x1

    .line 33
    goto :goto_9

    .line 34
    :cond_21
    iput-boolean v3, p0, Landroidx/collection/d;->a:Z

    .line 36
    iput v5, p0, Landroidx/collection/d;->d:I

    .line 38
    return-void
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/collection/d;->b()Landroidx/collection/d;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final d(JLjava/lang/Long;)Ljava/lang/Object;
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/collection/d;->b:[J

    .line 3
    iget v1, p0, Landroidx/collection/d;->d:I

    .line 5
    invoke-static {v0, v1, p1, p2}, La/b;->i([JIJ)I

    .line 8
    move-result p1

    .line 9
    if-ltz p1, :cond_14

    .line 11
    iget-object p2, p0, Landroidx/collection/d;->c:[Ljava/lang/Object;

    .line 13
    aget-object p1, p2, p1

    .line 15
    sget-object p2, Landroidx/collection/d;->e:Ljava/lang/Object;

    .line 17
    if-ne p1, p2, :cond_13

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    return-object p1

    .line 21
    :cond_14
    :goto_14
    return-object p3
.end method

.method public final e(I)J
    .registers 5

    .line 1
    iget-boolean v0, p0, Landroidx/collection/d;->a:Z

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {p0}, Landroidx/collection/d;->c()V

    .line 8
    :cond_7
    iget-object v0, p0, Landroidx/collection/d;->b:[J

    .line 10
    aget-wide v1, v0, p1

    .line 12
    return-wide v1
.end method

.method public final f(JLjava/lang/Object;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/collection/d;->b:[J

    .line 3
    iget v1, p0, Landroidx/collection/d;->d:I

    .line 5
    invoke-static {v0, v1, p1, p2}, La/b;->i([JIJ)I

    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_10

    .line 11
    iget-object p1, p0, Landroidx/collection/d;->c:[Ljava/lang/Object;

    .line 13
    aput-object p3, p1, v0

    .line 15
    goto/16 :goto_8c

    .line 17
    :cond_10
    not-int v0, v0

    .line 18
    iget v1, p0, Landroidx/collection/d;->d:I

    .line 20
    if-ge v0, v1, :cond_24

    .line 22
    iget-object v2, p0, Landroidx/collection/d;->c:[Ljava/lang/Object;

    .line 24
    aget-object v3, v2, v0

    .line 26
    sget-object v4, Landroidx/collection/d;->e:Ljava/lang/Object;

    .line 28
    if-ne v3, v4, :cond_24

    .line 30
    iget-object v1, p0, Landroidx/collection/d;->b:[J

    .line 32
    aput-wide p1, v1, v0

    .line 34
    aput-object p3, v2, v0

    .line 36
    return-void

    .line 37
    :cond_24
    iget-boolean v2, p0, Landroidx/collection/d;->a:Z

    .line 39
    if-eqz v2, :cond_39

    .line 41
    iget-object v2, p0, Landroidx/collection/d;->b:[J

    .line 43
    array-length v2, v2

    .line 44
    if-lt v1, v2, :cond_39

    .line 46
    invoke-virtual {p0}, Landroidx/collection/d;->c()V

    .line 49
    iget-object v0, p0, Landroidx/collection/d;->b:[J

    .line 51
    iget v1, p0, Landroidx/collection/d;->d:I

    .line 53
    invoke-static {v0, v1, p1, p2}, La/b;->i([JIJ)I

    .line 56
    move-result v0

    .line 57
    not-int v0, v0

    .line 58
    :cond_39
    iget v1, p0, Landroidx/collection/d;->d:I

    .line 60
    iget-object v2, p0, Landroidx/collection/d;->b:[J

    .line 62
    array-length v2, v2

    .line 63
    const/4 v3, 0x1

    .line 64
    if-lt v1, v2, :cond_6b

    .line 66
    add-int/2addr v1, v3

    .line 67
    mul-int/lit8 v1, v1, 0x8

    .line 69
    const/4 v2, 0x4

    .line 70
    :goto_45
    const/16 v4, 0x20

    .line 72
    if-ge v2, v4, :cond_54

    .line 74
    shl-int v4, v3, v2

    .line 76
    add-int/lit8 v4, v4, -0xc

    .line 78
    if-gt v1, v4, :cond_51

    .line 80
    move v1, v4

    .line 81
    goto :goto_54

    .line 82
    :cond_51
    add-int/lit8 v2, v2, 0x1

    .line 84
    goto :goto_45

    .line 85
    :cond_54
    :goto_54
    div-int/lit8 v1, v1, 0x8

    .line 87
    new-array v2, v1, [J

    .line 89
    new-array v1, v1, [Ljava/lang/Object;

    .line 91
    iget-object v4, p0, Landroidx/collection/d;->b:[J

    .line 93
    array-length v5, v4

    .line 94
    const/4 v6, 0x0

    .line 95
    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    iget-object v4, p0, Landroidx/collection/d;->c:[Ljava/lang/Object;

    .line 100
    array-length v5, v4

    .line 101
    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    iput-object v2, p0, Landroidx/collection/d;->b:[J

    .line 106
    iput-object v1, p0, Landroidx/collection/d;->c:[Ljava/lang/Object;

    .line 108
    :cond_6b
    iget v1, p0, Landroidx/collection/d;->d:I

    .line 110
    sub-int/2addr v1, v0

    .line 111
    if-eqz v1, :cond_7f

    .line 113
    iget-object v2, p0, Landroidx/collection/d;->b:[J

    .line 115
    add-int/lit8 v4, v0, 0x1

    .line 117
    invoke-static {v2, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    iget-object v1, p0, Landroidx/collection/d;->c:[Ljava/lang/Object;

    .line 122
    iget v2, p0, Landroidx/collection/d;->d:I

    .line 124
    sub-int/2addr v2, v0

    .line 125
    invoke-static {v1, v0, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    :cond_7f
    iget-object v1, p0, Landroidx/collection/d;->b:[J

    .line 130
    aput-wide p1, v1, v0

    .line 132
    iget-object p1, p0, Landroidx/collection/d;->c:[Ljava/lang/Object;

    .line 134
    aput-object p3, p1, v0

    .line 136
    iget p1, p0, Landroidx/collection/d;->d:I

    .line 138
    add-int/2addr p1, v3

    .line 139
    iput p1, p0, Landroidx/collection/d;->d:I

    .line 141
    :goto_8c
    return-void
.end method

.method public final g(J)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/collection/d;->b:[J

    .line 3
    iget v1, p0, Landroidx/collection/d;->d:I

    .line 5
    invoke-static {v0, v1, p1, p2}, La/b;->i([JIJ)I

    .line 8
    move-result p1

    .line 9
    if-ltz p1, :cond_17

    .line 11
    iget-object p2, p0, Landroidx/collection/d;->c:[Ljava/lang/Object;

    .line 13
    aget-object v0, p2, p1

    .line 15
    sget-object v1, Landroidx/collection/d;->e:Ljava/lang/Object;

    .line 17
    if-eq v0, v1, :cond_17

    .line 19
    aput-object v1, p2, p1

    .line 21
    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Landroidx/collection/d;->a:Z

    .line 24
    :cond_17
    return-void
.end method

.method public final h()I
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/collection/d;->a:Z

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {p0}, Landroidx/collection/d;->c()V

    .line 8
    :cond_7
    iget v0, p0, Landroidx/collection/d;->d:I

    .line 10
    return v0
.end method

.method public final i(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/collection/d;->a:Z

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {p0}, Landroidx/collection/d;->c()V

    .line 8
    :cond_7
    iget-object v0, p0, Landroidx/collection/d;->c:[Ljava/lang/Object;

    .line 10
    aget-object p1, v0, p1

    .line 12
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/collection/d;->h()I

    .line 4
    move-result v0

    .line 5
    if-gtz v0, :cond_9

    .line 7
    const-string v0, "{}"

    .line 9
    return-object v0

    .line 10
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    iget v1, p0, Landroidx/collection/d;->d:I

    .line 14
    mul-int/lit8 v1, v1, 0x1c

    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 19
    const/16 v1, 0x7b

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_18
    iget v2, p0, Landroidx/collection/d;->d:I

    .line 27
    if-ge v1, v2, :cond_41

    .line 29
    if-lez v1, :cond_23

    .line 31
    const-string v2, ", "

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    :cond_23
    invoke-virtual {p0, v1}, Landroidx/collection/d;->e(I)J

    .line 39
    move-result-wide v2

    .line 40
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 43
    const/16 v2, 0x3d

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p0, v1}, Landroidx/collection/d;->i(I)Ljava/lang/Object;

    .line 51
    move-result-object v2

    .line 52
    if-eq v2, p0, :cond_39

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    goto :goto_3e

    .line 58
    :cond_39
    const-string v2, "(this Map)"

    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    :goto_3e
    add-int/lit8 v1, v1, 0x1

    .line 65
    goto :goto_18

    .line 66
    :cond_41
    const/16 v1, 0x7d

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    return-object v0
.end method
