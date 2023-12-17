.class public Ll3/a;
.super Ljava/lang/Object;
.source "Progressions.kt"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(III)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    if-eqz p3, :cond_50

    .line 6
    const/high16 v0, -0x80000000

    .line 8
    if-eq p3, v0, :cond_48

    .line 10
    iput p1, p0, Ll3/a;->a:I

    .line 12
    if-lez p3, :cond_23

    .line 14
    if-lt p1, p2, :cond_10

    .line 16
    goto :goto_3b

    .line 17
    :cond_10
    rem-int v0, p2, p3

    .line 19
    if-ltz v0, :cond_15

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    add-int/2addr v0, p3

    .line 23
    :goto_16
    rem-int/2addr p1, p3

    .line 24
    if-ltz p1, :cond_1a

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    add-int/2addr p1, p3

    .line 28
    :goto_1b
    sub-int/2addr v0, p1

    .line 29
    rem-int/2addr v0, p3

    .line 30
    if-ltz v0, :cond_20

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    add-int/2addr v0, p3

    .line 34
    :goto_21
    sub-int/2addr p2, v0

    .line 35
    goto :goto_3b

    .line 36
    :cond_23
    if-gez p3, :cond_40

    .line 38
    if-gt p1, p2, :cond_28

    .line 40
    goto :goto_3b

    .line 41
    :cond_28
    neg-int v0, p3

    .line 42
    rem-int/2addr p1, v0

    .line 43
    if-ltz p1, :cond_2d

    .line 45
    goto :goto_2e

    .line 46
    :cond_2d
    add-int/2addr p1, v0

    .line 47
    :goto_2e
    rem-int v1, p2, v0

    .line 49
    if-ltz v1, :cond_33

    .line 51
    goto :goto_34

    .line 52
    :cond_33
    add-int/2addr v1, v0

    .line 53
    :goto_34
    sub-int/2addr p1, v1

    .line 54
    rem-int/2addr p1, v0

    .line 55
    if-ltz p1, :cond_39

    .line 57
    goto :goto_3a

    .line 58
    :cond_39
    add-int/2addr p1, v0

    .line 59
    :goto_3a
    add-int/2addr p2, p1

    .line 60
    :goto_3b
    iput p2, p0, Ll3/a;->b:I

    .line 62
    iput p3, p0, Ll3/a;->c:I

    .line 64
    return-void

    .line 65
    :cond_40
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 67
    const-string p2, "Step is zero."

    .line 69
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 72
    throw p1

    .line 73
    :cond_48
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 75
    const-string p2, "Step must be greater than Int.MIN_VALUE to avoid overflow on negation."

    .line 77
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    throw p1

    .line 81
    :cond_50
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 83
    const-string p2, "Step must be non-zero."

    .line 85
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 88
    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Ll3/a;

    .line 3
    if-eqz v0, :cond_29

    .line 5
    invoke-virtual {p0}, Ll3/a;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_13

    .line 11
    move-object v0, p1

    .line 12
    check-cast v0, Ll3/a;

    .line 14
    invoke-virtual {v0}, Ll3/a;->isEmpty()Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_27

    .line 20
    :cond_13
    iget v0, p0, Ll3/a;->a:I

    .line 22
    check-cast p1, Ll3/a;

    .line 24
    iget v1, p1, Ll3/a;->a:I

    .line 26
    if-ne v0, v1, :cond_29

    .line 28
    iget v0, p0, Ll3/a;->b:I

    .line 30
    iget v1, p1, Ll3/a;->b:I

    .line 32
    if-ne v0, v1, :cond_29

    .line 34
    iget v0, p0, Ll3/a;->c:I

    .line 36
    iget p1, p1, Ll3/a;->c:I

    .line 38
    if-ne v0, p1, :cond_29

    .line 40
    :cond_27
    const/4 p1, 0x1

    .line 41
    goto :goto_2a

    .line 42
    :cond_29
    const/4 p1, 0x0

    .line 43
    :goto_2a
    return p1
.end method

.method public hashCode()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Ll3/a;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 v0, -0x1

    .line 8
    goto :goto_14

    .line 9
    :cond_8
    iget v0, p0, Ll3/a;->a:I

    .line 11
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    iget v1, p0, Ll3/a;->b:I

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    iget v1, p0, Ll3/a;->c:I

    .line 20
    add-int/2addr v0, v1

    .line 21
    :goto_14
    return v0
.end method

.method public isEmpty()Z
    .registers 5

    .line 1
    iget v0, p0, Ll3/a;->c:I

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-lez v0, :cond_d

    .line 7
    iget v0, p0, Ll3/a;->a:I

    .line 9
    iget v3, p0, Ll3/a;->b:I

    .line 11
    if-le v0, v3, :cond_14

    .line 13
    goto :goto_15

    .line 14
    :cond_d
    iget v0, p0, Ll3/a;->a:I

    .line 16
    iget v3, p0, Ll3/a;->b:I

    .line 18
    if-ge v0, v3, :cond_14

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    move v1, v2

    .line 22
    :goto_15
    return v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 5

    .line 1
    new-instance v0, Ll3/b;

    .line 3
    iget v1, p0, Ll3/a;->a:I

    .line 5
    iget v2, p0, Ll3/a;->b:I

    .line 7
    iget v3, p0, Ll3/a;->c:I

    .line 9
    invoke-direct {v0, v1, v2, v3}, Ll3/b;-><init>(III)V

    .line 12
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget v0, p0, Ll3/a;->c:I

    .line 3
    const-string v1, " step "

    .line 5
    if-lez v0, :cond_20

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    iget v2, p0, Ll3/a;->a:I

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    const-string v2, ".."

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget v2, p0, Ll3/a;->b:I

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget v1, p0, Ll3/a;->c:I

    .line 32
    goto :goto_3a

    .line 33
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    iget v2, p0, Ll3/a;->a:I

    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    const-string v2, " downTo "

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget v2, p0, Ll3/a;->b:I

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget v1, p0, Ll3/a;->c:I

    .line 58
    neg-int v1, v1

    .line 59
    :goto_3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    return-object v0
.end method
