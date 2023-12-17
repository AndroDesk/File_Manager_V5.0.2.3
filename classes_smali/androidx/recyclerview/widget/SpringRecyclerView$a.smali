.class public final Landroidx/recyclerview/widget/SpringRecyclerView$a;
.super Landroid/widget/EdgeEffect;
.source "SpringRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/SpringRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 4
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public final finish()V
    .registers 1

    return-void
.end method

.method public final getBlendMode()Landroid/graphics/BlendMode;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getColor()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getMaxHeight()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final isFinished()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final onAbsorb(I)V
    .registers 2

    return-void
.end method

.method public final onPull(F)V
    .registers 2

    return-void
.end method

.method public final onPull(FF)V
    .registers 3

    return-void
.end method

.method public final onRelease()V
    .registers 1

    return-void
.end method

.method public final setBlendMode(Landroid/graphics/BlendMode;)V
    .registers 2

    return-void
.end method

.method public final setColor(I)V
    .registers 2

    return-void
.end method

.method public final setSize(II)V
    .registers 3

    return-void
.end method
