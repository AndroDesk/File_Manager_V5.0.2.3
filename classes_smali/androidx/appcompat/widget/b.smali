.class public final Landroidx/appcompat/widget/b;
.super Landroid/graphics/drawable/Drawable;
.source "ActionBarBackgroundDrawable.java"


# instance fields
.field public final a:Landroidx/appcompat/widget/ActionBarContainer;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActionBarContainer;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/appcompat/widget/b;->a:Landroidx/appcompat/widget/ActionBarContainer;

    .line 6
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b;->a:Landroidx/appcompat/widget/ActionBarContainer;

    .line 3
    iget-boolean v1, v0, Landroidx/appcompat/widget/ActionBarContainer;->h:Z

    .line 5
    if-eqz v1, :cond_e

    .line 7
    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarContainer;->g:Landroid/graphics/drawable/Drawable;

    .line 9
    if-eqz v0, :cond_22

    .line 11
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 14
    goto :goto_22

    .line 15
    :cond_e
    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarContainer;->e:Landroid/graphics/drawable/Drawable;

    .line 17
    if-eqz v0, :cond_15

    .line 19
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 22
    :cond_15
    iget-object v0, p0, Landroidx/appcompat/widget/b;->a:Landroidx/appcompat/widget/ActionBarContainer;

    .line 24
    iget-object v1, v0, Landroidx/appcompat/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;

    .line 26
    if-eqz v1, :cond_22

    .line 28
    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionBarContainer;->i:Z

    .line 30
    if-eqz v0, :cond_22

    .line 32
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 35
    :cond_22
    :goto_22
    return-void
.end method

.method public final getOpacity()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getOutline(Landroid/graphics/Outline;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b;->a:Landroidx/appcompat/widget/ActionBarContainer;

    .line 3
    iget-boolean v1, v0, Landroidx/appcompat/widget/ActionBarContainer;->h:Z

    .line 5
    if-eqz v1, :cond_10

    .line 7
    iget-object v1, v0, Landroidx/appcompat/widget/ActionBarContainer;->g:Landroid/graphics/drawable/Drawable;

    .line 9
    if-eqz v1, :cond_17

    .line 11
    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarContainer;->e:Landroid/graphics/drawable/Drawable;

    .line 13
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 16
    goto :goto_17

    .line 17
    :cond_10
    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarContainer;->e:Landroid/graphics/drawable/Drawable;

    .line 19
    if-eqz v0, :cond_17

    .line 21
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 24
    :cond_17
    :goto_17
    return-void
.end method

.method public final setAlpha(I)V
    .registers 2

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method
