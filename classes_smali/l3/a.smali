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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(III)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_50

    const/high16 v0, -0x80000000

    if-eq p3, v0, :cond_48

    iput p1, p0, Ll3/a;->a:I

    if-lez p3, :cond_23

    if-lt p1, p2, :cond_10

    goto :goto_3b

    :cond_10
    rem-int v0, p2, p3

    if-ltz v0, :cond_15

    goto :goto_16

    :cond_15
    add-int/2addr v0, p3

    :goto_16
    rem-int/2addr p1, p3

    if-ltz p1, :cond_1a

    goto :goto_1b

    :cond_1a
    add-int/2addr p1, p3

    :goto_1b
    sub-int/2addr v0, p1

    rem-int/2addr v0, p3

    if-ltz v0, :cond_20

    goto :goto_21

    :cond_20
    add-int/2addr v0, p3

    :goto_21
    sub-int/2addr p2, v0

    goto :goto_3b

    :cond_23
    if-gez p3, :cond_40

    if-gt p1, p2, :cond_28

    goto :goto_3b

    :cond_28
    neg-int v0, p3

    rem-int/2addr p1, v0

    if-ltz p1, :cond_2d

    goto :goto_2e

    :cond_2d
    add-int/2addr p1, v0

    :goto_2e
    rem-int v1, p2, v0

    if-ltz v1, :cond_33

    goto :goto_34

    :cond_33
    add-int/2addr v1, v0

    :goto_34
    sub-int/2addr p1, v1

    rem-int/2addr p1, v0

    if-ltz p1, :cond_39

    goto :goto_3a

    :cond_39
    add-int/2addr p1, v0

    :goto_3a
    add-int/2addr p2, p1

    :goto_3b
    iput p2, p0, Ll3/a;->b:I

    iput p3, p0, Ll3/a;->c:I

    return-void

    :cond_40
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Step is zero."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_48
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Step must be greater than Int.MIN_VALUE to avoid overflow on negation."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_50
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Step must be non-zero."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Ll3/a;

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Ll3/a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Ll3/a;

    invoke-virtual {v0}, Ll3/a;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    :cond_13
    iget v0, p0, Ll3/a;->a:I

    check-cast p1, Ll3/a;

    iget v1, p1, Ll3/a;->a:I

    if-ne v0, v1, :cond_29

    iget v0, p0, Ll3/a;->b:I

    iget v1, p1, Ll3/a;->b:I

    if-ne v0, v1, :cond_29

    iget v0, p0, Ll3/a;->c:I

    iget p1, p1, Ll3/a;->c:I

    if-ne v0, p1, :cond_29

    :cond_27
    const/4 p1, 0x1

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    return p1
.end method

.method public hashCode()I
    .registers 3

    invoke-virtual {p0}, Ll3/a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    goto :goto_14

    :cond_8
    iget v0, p0, Ll3/a;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ll3/a;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ll3/a;->c:I

    add-int/2addr v0, v1

    :goto_14
    return v0
.end method

.method public isEmpty()Z
    .registers 5

    iget v0, p0, Ll3/a;->c:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_d

    iget v0, p0, Ll3/a;->a:I

    iget v3, p0, Ll3/a;->b:I

    if-le v0, v3, :cond_14

    goto :goto_15

    :cond_d
    iget v0, p0, Ll3/a;->a:I

    iget v3, p0, Ll3/a;->b:I

    if-ge v0, v3, :cond_14

    goto :goto_15

    :cond_14
    move v1, v2

    :goto_15
    return v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 5

    new-instance v0, Ll3/b;

    iget v1, p0, Ll3/a;->a:I

    iget v2, p0, Ll3/a;->b:I

    iget v3, p0, Ll3/a;->c:I

    invoke-direct {v0, v1, v2, v3}, Ll3/b;-><init>(III)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget v0, p0, Ll3/a;->c:I

    const-string v1, " step "

    if-lez v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Ll3/a;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ll3/a;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ll3/a;->c:I

    goto :goto_3a

    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Ll3/a;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " downTo "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ll3/a;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ll3/a;->c:I

    neg-int v1, v1

    :goto_3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
