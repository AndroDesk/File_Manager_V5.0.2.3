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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/i;->a:Lj1/b;

    iput-object p2, p0, Landroidx/window/layout/i;->b:Landroidx/window/layout/i$a;

    iput-object p3, p0, Landroidx/window/layout/i;->c:Landroidx/window/layout/h$b;

    iget p2, p1, Lj1/b;->c:I

    iget p3, p1, Lj1/b;->a:I

    sub-int/2addr p2, p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1c

    iget p2, p1, Lj1/b;->d:I

    iget v2, p1, Lj1/b;->b:I

    sub-int/2addr p2, v2

    if-eqz p2, :cond_1a

    goto :goto_1c

    :cond_1a
    move p2, v0

    goto :goto_1d

    :cond_1c
    :goto_1c
    move p2, v1

    :goto_1d
    if-eqz p2, :cond_35

    if-eqz p3, :cond_25

    iget p1, p1, Lj1/b;->b:I

    if-nez p1, :cond_26

    :cond_25
    move v0, v1

    :cond_26
    if-eqz v0, :cond_29

    return-void

    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bounding rectangle must start at the top or left window edge for folding features"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bounds must be non zero"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Z
    .registers 4

    iget-object v0, p0, Landroidx/window/layout/i;->b:Landroidx/window/layout/i$a;

    sget-object v1, Landroidx/window/layout/i$a;->c:Landroidx/window/layout/i$a;

    invoke-static {v0, v1}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    goto :goto_22

    :cond_c
    iget-object v0, p0, Landroidx/window/layout/i;->b:Landroidx/window/layout/i$a;

    sget-object v2, Landroidx/window/layout/i$a;->b:Landroidx/window/layout/i$a;

    invoke-static {v0, v2}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroidx/window/layout/i;->c:Landroidx/window/layout/h$b;

    sget-object v2, Landroidx/window/layout/h$b;->c:Landroidx/window/layout/h$b;

    invoke-static {v0, v2}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    return v1
.end method

.method public final b()Landroidx/window/layout/h$a;
    .registers 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Landroidx/window/layout/i;->a:Lj1/b;

    iget v1, v0, Lj1/b;->c:I

    iget v2, v0, Lj1/b;->a:I

    sub-int/2addr v1, v2

    iget v2, v0, Lj1/b;->d:I

    iget v0, v0, Lj1/b;->b:I

    sub-int/2addr v2, v0

    if-le v1, v2, :cond_11

    sget-object v0, Landroidx/window/layout/h$a;->c:Landroidx/window/layout/h$a;

    goto :goto_13

    :cond_11
    sget-object v0, Landroidx/window/layout/h$a;->b:Landroidx/window/layout/h$a;

    :goto_13
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const-class v1, Landroidx/window/layout/i;

    if-nez p1, :cond_a

    const/4 v2, 0x0

    goto :goto_e

    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :goto_e
    invoke-static {v1, v2}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    return v2

    :cond_16
    if-eqz p1, :cond_3c

    check-cast p1, Landroidx/window/layout/i;

    iget-object v1, p0, Landroidx/window/layout/i;->a:Lj1/b;

    iget-object v3, p1, Landroidx/window/layout/i;->a:Lj1/b;

    invoke-static {v1, v3}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    return v2

    :cond_25
    iget-object v1, p0, Landroidx/window/layout/i;->b:Landroidx/window/layout/i$a;

    iget-object v3, p1, Landroidx/window/layout/i;->b:Landroidx/window/layout/i$a;

    invoke-static {v1, v3}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v2

    :cond_30
    iget-object v1, p0, Landroidx/window/layout/i;->c:Landroidx/window/layout/h$b;

    iget-object p1, p1, Landroidx/window/layout/i;->c:Landroidx/window/layout/h$b;

    invoke-static {v1, p1}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3b

    return v2

    :cond_3b
    return v0

    :cond_3c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type androidx.window.layout.HardwareFoldingFeature"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getBounds()Landroid/graphics/Rect;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Landroidx/window/layout/i;->a:Lj1/b;

    invoke-virtual {v0}, Lj1/b;->a()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Landroidx/window/layout/i;->a:Lj1/b;

    invoke-virtual {v0}, Lj1/b;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/window/layout/i;->b:Landroidx/window/layout/i$a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/window/layout/i;->c:Landroidx/window/layout/h$b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroidx/window/layout/i;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/window/layout/i;->a:Lj1/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/window/layout/i;->b:Landroidx/window/layout/i$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/window/layout/i;->c:Landroidx/window/layout/h$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
