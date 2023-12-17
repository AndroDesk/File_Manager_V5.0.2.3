.class public final Lj1/b;
.super Ljava/lang/Object;
.source "Bounds.kt"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;)V
    .registers 5
    .param p1  # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 3
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 5
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 7
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v0, p0, Lj1/b;->a:I

    .line 14
    iput v1, p0, Lj1/b;->b:I

    .line 16
    iput v2, p0, Lj1/b;->c:I

    .line 18
    iput p1, p0, Lj1/b;->d:I

    .line 20
    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Rect;
    .registers 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 3
    iget v1, p0, Lj1/b;->a:I

    .line 5
    iget v2, p0, Lj1/b;->b:I

    .line 7
    iget v3, p0, Lj1/b;->c:I

    .line 9
    iget v4, p0, Lj1/b;->d:I

    .line 11
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 14
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    const-class v1, Lj1/b;

    .line 7
    if-nez p1, :cond_a

    .line 9
    const/4 v2, 0x0

    .line 10
    goto :goto_e

    .line 11
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    move-result-object v2

    .line 15
    :goto_e
    invoke-static {v1, v2}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-nez v1, :cond_16

    .line 22
    return v2

    .line 23
    :cond_16
    if-eqz p1, :cond_37

    .line 25
    check-cast p1, Lj1/b;

    .line 27
    iget v1, p0, Lj1/b;->a:I

    .line 29
    iget v3, p1, Lj1/b;->a:I

    .line 31
    if-eq v1, v3, :cond_21

    .line 33
    return v2

    .line 34
    :cond_21
    iget v1, p0, Lj1/b;->b:I

    .line 36
    iget v3, p1, Lj1/b;->b:I

    .line 38
    if-eq v1, v3, :cond_28

    .line 40
    return v2

    .line 41
    :cond_28
    iget v1, p0, Lj1/b;->c:I

    .line 43
    iget v3, p1, Lj1/b;->c:I

    .line 45
    if-eq v1, v3, :cond_2f

    .line 47
    return v2

    .line 48
    :cond_2f
    iget v1, p0, Lj1/b;->d:I

    .line 50
    iget p1, p1, Lj1/b;->d:I

    .line 52
    if-eq v1, p1, :cond_36

    .line 54
    return v2

    .line 55
    :cond_36
    return v0

    .line 56
    :cond_37
    new-instance p1, Ljava/lang/NullPointerException;

    .line 58
    const-string v0, "null cannot be cast to non-null type androidx.window.core.Bounds"

    .line 60
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 63
    throw p1
.end method

.method public final hashCode()I
    .registers 3

    .line 1
    iget v0, p0, Lj1/b;->a:I

    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget v1, p0, Lj1/b;->b:I

    .line 7
    add-int/2addr v0, v1

    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget v1, p0, Lj1/b;->c:I

    .line 12
    add-int/2addr v0, v1

    .line 13
    mul-int/lit8 v0, v0, 0x1f

    .line 15
    iget v1, p0, Lj1/b;->d:I

    .line 17
    add-int/2addr v0, v1

    .line 18
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-class v1, Lj1/b;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, " { ["

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget v1, p0, Lj1/b;->a:I

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    const/16 v1, 0x2c

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    iget v2, p0, Lj1/b;->b:I

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    iget v2, p0, Lj1/b;->c:I

    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    iget v1, p0, Lj1/b;->d:I

    .line 48
    const-string v2, "] }"

    .line 50
    invoke-static {v0, v1, v2}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    return-object v0
.end method
