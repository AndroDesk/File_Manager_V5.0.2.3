.class public final Landroidx/window/layout/i;
.super Ljava/lang/Object;
.source "HardwareFoldingFeature.kt"

# interfaces
.implements Landroidx/window/layout/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/layout/i$a;
    }
.end annotation


# instance fields
.field public final a:Lj1/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Landroidx/window/layout/i$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Landroidx/window/layout/h$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj1/b;Landroidx/window/layout/i$a;Landroidx/window/layout/h$b;)V
    .registers 7
    .param p1  # Lj1/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Landroidx/window/layout/i$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3  # Landroidx/window/layout/h$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/window/layout/i;->a:Lj1/b;

    .line 6
    iput-object p2, p0, Landroidx/window/layout/i;->b:Landroidx/window/layout/i$a;

    .line 8
    iput-object p3, p0, Landroidx/window/layout/i;->c:Landroidx/window/layout/h$b;

    .line 10
    iget p2, p1, Lj1/b;->c:I

    .line 12
    iget p3, p1, Lj1/b;->a:I

    .line 14
    sub-int/2addr p2, p3

    .line 15
    const/4 v0, 0x0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-nez p2, :cond_1c

    .line 19
    iget p2, p1, Lj1/b;->d:I

    .line 21
    iget v2, p1, Lj1/b;->b:I

    .line 23
    sub-int/2addr p2, v2

    .line 24
    if-eqz p2, :cond_1a

    .line 26
    goto :goto_1c

    .line 27
    :cond_1a
    move p2, v0

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    :goto_1c
    move p2, v1

    .line 30
    :goto_1d
    if-eqz p2, :cond_35

    .line 32
    if-eqz p3, :cond_25

    .line 34
    iget p1, p1, Lj1/b;->b:I

    .line 36
    if-nez p1, :cond_26

    .line 38
    :cond_25
    move v0, v1

    .line 39
    :cond_26
    if-eqz v0, :cond_29

    .line 41
    return-void

    .line 42
    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 44
    const-string p2, "Bounding rectangle must start at the top or left window edge for folding features"

    .line 46
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 49
    move-result-object p2

    .line 50
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    throw p1

    .line 54
    :cond_35
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 56
    const-string p2, "Bounds must be non zero"

    .line 58
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 61
    move-result-object p2

    .line 62
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    throw p1
.end method


# virtual methods
.method public final a()Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/window/layout/i;->b:Landroidx/window/layout/i$a;

    .line 3
    sget-object v1, Landroidx/window/layout/i$a;->c:Landroidx/window/layout/i$a;

    .line 5
    invoke-static {v0, v1}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_c

    .line 12
    goto :goto_22

    .line 13
    :cond_c
    iget-object v0, p0, Landroidx/window/layout/i;->b:Landroidx/window/layout/i$a;

    .line 15
    sget-object v2, Landroidx/window/layout/i$a;->b:Landroidx/window/layout/i$a;

    .line 17
    invoke-static {v0, v2}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_21

    .line 23
    iget-object v0, p0, Landroidx/window/layout/i;->c:Landroidx/window/layout/h$b;

    .line 25
    sget-object v2, Landroidx/window/layout/h$b;->c:Landroidx/window/layout/h$b;

    .line 27
    invoke-static {v0, v2}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_21

    .line 33
    goto :goto_22

    .line 34
    :cond_21
    const/4 v1, 0x0

    .line 35
    :goto_22
    return v1
.end method

.method public final b()Landroidx/window/layout/h$a;
    .registers 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/window/layout/i;->a:Lj1/b;

    .line 3
    iget v1, v0, Lj1/b;->c:I

    .line 5
    iget v2, v0, Lj1/b;->a:I

    .line 7
    sub-int/2addr v1, v2

    .line 8
    iget v2, v0, Lj1/b;->d:I

    .line 10
    iget v0, v0, Lj1/b;->b:I

    .line 12
    sub-int/2addr v2, v0

    .line 13
    if-le v1, v2, :cond_11

    .line 15
    sget-object v0, Landroidx/window/layout/h$a;->c:Landroidx/window/layout/h$a;

    .line 17
    goto :goto_13

    .line 18
    :cond_11
    sget-object v0, Landroidx/window/layout/h$a;->b:Landroidx/window/layout/h$a;

    .line 20
    :goto_13
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
    const-class v1, Landroidx/window/layout/i;

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
    if-eqz p1, :cond_3c

    .line 25
    check-cast p1, Landroidx/window/layout/i;

    .line 27
    iget-object v1, p0, Landroidx/window/layout/i;->a:Lj1/b;

    .line 29
    iget-object v3, p1, Landroidx/window/layout/i;->a:Lj1/b;

    .line 31
    invoke-static {v1, v3}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_25

    .line 37
    return v2

    .line 38
    :cond_25
    iget-object v1, p0, Landroidx/window/layout/i;->b:Landroidx/window/layout/i$a;

    .line 40
    iget-object v3, p1, Landroidx/window/layout/i;->b:Landroidx/window/layout/i$a;

    .line 42
    invoke-static {v1, v3}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_30

    .line 48
    return v2

    .line 49
    :cond_30
    iget-object v1, p0, Landroidx/window/layout/i;->c:Landroidx/window/layout/h$b;

    .line 51
    iget-object p1, p1, Landroidx/window/layout/i;->c:Landroidx/window/layout/h$b;

    .line 53
    invoke-static {v1, p1}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_3b

    .line 59
    return v2

    .line 60
    :cond_3b
    return v0

    .line 61
    :cond_3c
    new-instance p1, Ljava/lang/NullPointerException;

    .line 63
    const-string v0, "null cannot be cast to non-null type androidx.window.layout.HardwareFoldingFeature"

    .line 65
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 68
    throw p1
.end method

.method public final getBounds()Landroid/graphics/Rect;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/window/layout/i;->a:Lj1/b;

    .line 3
    invoke-virtual {v0}, Lj1/b;->a()Landroid/graphics/Rect;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/window/layout/i;->a:Lj1/b;

    .line 3
    invoke-virtual {v0}, Lj1/b;->hashCode()I

    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-object v1, p0, Landroidx/window/layout/i;->b:Landroidx/window/layout/i$a;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 18
    iget-object v0, p0, Landroidx/window/layout/i;->c:Landroidx/window/layout/h$b;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 23
    move-result v0

    .line 24
    add-int/2addr v0, v1

    .line 25
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-class v1, Landroidx/window/layout/i;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, " { "

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-object v1, p0, Landroidx/window/layout/i;->a:Lj1/b;

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    const-string v1, ", type="

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget-object v1, p0, Landroidx/window/layout/i;->b:Landroidx/window/layout/i$a;

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    const-string v1, ", state="

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-object v1, p0, Landroidx/window/layout/i;->c:Landroidx/window/layout/h$b;

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    const-string v1, " }"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    return-object v0
.end method
