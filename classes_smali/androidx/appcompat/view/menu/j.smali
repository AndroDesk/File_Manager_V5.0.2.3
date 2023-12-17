.class public final Landroidx/appcompat/view/menu/j;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Lh0/b;


# instance fields
.field public A:Lm0/b;

.field public B:Landroid/view/MenuItem$OnActionExpandListener;

.field public C:Z

.field public D:Landroid/view/ContextMenu$ContextMenuInfo;

.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public e:Ljava/lang/CharSequence;

.field public f:Ljava/lang/CharSequence;

.field public g:Landroid/content/Intent;

.field public h:C

.field public i:I

.field public j:C

.field public k:I

.field public l:Landroid/graphics/drawable/Drawable;

.field public m:I

.field public n:Landroidx/appcompat/view/menu/h;

.field public o:Landroidx/appcompat/view/menu/s;

.field public p:Landroid/view/MenuItem$OnMenuItemClickListener;

.field public q:Ljava/lang/CharSequence;

.field public r:Ljava/lang/CharSequence;

.field public s:Landroid/content/res/ColorStateList;

.field public t:Landroid/graphics/PorterDuff$Mode;

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:I

.field public y:I

.field public z:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/h;IIIILjava/lang/CharSequence;I)V
    .registers 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 v0, 0x1000

    .line 6
    iput v0, p0, Landroidx/appcompat/view/menu/j;->i:I

    .line 8
    iput v0, p0, Landroidx/appcompat/view/menu/j;->k:I

    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Landroidx/appcompat/view/menu/j;->m:I

    .line 13
    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Landroidx/appcompat/view/menu/j;->s:Landroid/content/res/ColorStateList;

    .line 16
    iput-object v1, p0, Landroidx/appcompat/view/menu/j;->t:Landroid/graphics/PorterDuff$Mode;

    .line 18
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/j;->u:Z

    .line 20
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/j;->v:Z

    .line 22
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/j;->w:Z

    .line 24
    const/16 v1, 0x10

    .line 26
    iput v1, p0, Landroidx/appcompat/view/menu/j;->x:I

    .line 28
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/j;->C:Z

    .line 30
    iput-object p1, p0, Landroidx/appcompat/view/menu/j;->n:Landroidx/appcompat/view/menu/h;

    .line 32
    iput p3, p0, Landroidx/appcompat/view/menu/j;->a:I

    .line 34
    iput p2, p0, Landroidx/appcompat/view/menu/j;->b:I

    .line 36
    iput p4, p0, Landroidx/appcompat/view/menu/j;->c:I

    .line 38
    iput p5, p0, Landroidx/appcompat/view/menu/j;->d:I

    .line 40
    iput-object p6, p0, Landroidx/appcompat/view/menu/j;->e:Ljava/lang/CharSequence;

    .line 42
    iput p7, p0, Landroidx/appcompat/view/menu/j;->y:I

    .line 44
    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;IILjava/lang/String;)V
    .registers 4

    .line 1
    and-int/2addr p1, p2

    .line 2
    if-ne p1, p2, :cond_6

    .line 4
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_6
    return-void
.end method


# virtual methods
.method public final b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    if-eqz p1, :cond_27

    .line 3
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/j;->w:Z

    .line 5
    if-eqz v0, :cond_27

    .line 7
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/j;->u:Z

    .line 9
    if-nez v0, :cond_e

    .line 11
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/j;->v:Z

    .line 13
    if-eqz v0, :cond_27

    .line 15
    :cond_e
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 18
    move-result-object p1

    .line 19
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/j;->u:Z

    .line 21
    if-eqz v0, :cond_1b

    .line 23
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->s:Landroid/content/res/ColorStateList;

    .line 25
    invoke-static {p1, v0}, Lg0/a$b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 28
    :cond_1b
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/j;->v:Z

    .line 30
    if-eqz v0, :cond_24

    .line 32
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->t:Landroid/graphics/PorterDuff$Mode;

    .line 34
    invoke-static {p1, v0}, Lg0/a$b;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 37
    :cond_24
    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/j;->w:Z

    .line 40
    :cond_27
    return-object p1
.end method

.method public final c()Z
    .registers 3

    .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/j;->y:I

    .line 3
    and-int/lit8 v0, v0, 0x8

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1a

    .line 8
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->z:Landroid/view/View;

    .line 10
    if-nez v0, :cond_15

    .line 12
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->A:Lm0/b;

    .line 14
    if-eqz v0, :cond_15

    .line 16
    invoke-virtual {v0, p0}, Lm0/b;->d(Landroid/view/MenuItem;)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Landroidx/appcompat/view/menu/j;->z:Landroid/view/View;

    .line 22
    :cond_15
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->z:Landroid/view/View;

    .line 24
    if-eqz v0, :cond_1a

    .line 26
    const/4 v1, 0x1

    .line 27
    :cond_1a
    return v1
.end method

.method public final collapseActionView()Z
    .registers 3

    .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/j;->y:I

    .line 3
    and-int/lit8 v0, v0, 0x8

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->z:Landroid/view/View;

    .line 11
    if-nez v0, :cond_e

    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_e
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->B:Landroid/view/MenuItem$OnActionExpandListener;

    .line 17
    if-eqz v0, :cond_1a

    .line 19
    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_19

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    return v1

    .line 27
    :cond_1a
    :goto_1a
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->n:Landroidx/appcompat/view/menu/h;

    .line 29
    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/h;->collapseItemActionView(Landroidx/appcompat/view/menu/j;)Z

    .line 32
    move-result v0

    .line 33
    return v0
.end method

.method public final d(Z)V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/j;->x:I

    .line 3
    and-int/lit8 v0, v0, -0x5

    .line 5
    if-eqz p1, :cond_8

    .line 7
    const/4 p1, 0x4

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 p1, 0x0

    .line 10
    :goto_9
    or-int/2addr p1, v0

    .line 11
    iput p1, p0, Landroidx/appcompat/view/menu/j;->x:I

    .line 13
    return-void
.end method

.method public final e(Z)V
    .registers 2

    .line 1
    if-eqz p1, :cond_9

    .line 3
    iget p1, p0, Landroidx/appcompat/view/menu/j;->x:I

    .line 5
    or-int/lit8 p1, p1, 0x20

    .line 7
    iput p1, p0, Landroidx/appcompat/view/menu/j;->x:I

    .line 9
    goto :goto_f

    .line 10
    :cond_9
    iget p1, p0, Landroidx/appcompat/view/menu/j;->x:I

    .line 12
    and-int/lit8 p1, p1, -0x21

    .line 14
    iput p1, p0, Landroidx/appcompat/view/menu/j;->x:I

    .line 16
    :goto_f
    return-void
.end method

.method public final expandActionView()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/j;->c()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->B:Landroid/view/MenuItem$OnActionExpandListener;

    .line 11
    if-eqz v0, :cond_14

    .line 13
    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_13

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    return v1

    .line 21
    :cond_14
    :goto_14
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->n:Landroidx/appcompat/view/menu/h;

    .line 23
    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/h;->expandItemActionView(Landroidx/appcompat/view/menu/j;)Z

    .line 26
    move-result v0

    .line 27
    return v0
.end method

.method public final getActionProvider()Landroid/view/ActionProvider;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string v1, "This is not supported, use MenuItemCompat.getActionProvider()"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw v0
.end method

.method public final getActionView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->z:Landroid/view/View;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-object v0

    .line 6
    :cond_5
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->A:Lm0/b;

    .line 8
    if-eqz v0, :cond_10

    .line 10
    invoke-virtual {v0, p0}, Lm0/b;->d(Landroid/view/MenuItem;)Landroid/view/View;

    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Landroidx/appcompat/view/menu/j;->z:Landroid/view/View;

    .line 16
    return-object v0

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    return-object v0
.end method

.method public final getAlphabeticModifiers()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/j;->k:I

    .line 3
    return v0
.end method

.method public final getAlphabeticShortcut()C
    .registers 2

    .line 1
    iget-char v0, p0, Landroidx/appcompat/view/menu/j;->j:C

    .line 3
    return v0
.end method

.method public final getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->q:Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method public final getGroupId()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/j;->b:I

    .line 3
    return v0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->l:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/j;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_9
    iget v0, p0, Landroidx/appcompat/view/menu/j;->m:I

    .line 12
    if-eqz v0, :cond_23

    .line 14
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->n:Landroidx/appcompat/view/menu/h;

    .line 16
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v0

    .line 20
    iget v1, p0, Landroidx/appcompat/view/menu/j;->m:I

    .line 22
    invoke-static {v0, v1}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x0

    .line 27
    iput v1, p0, Landroidx/appcompat/view/menu/j;->m:I

    .line 29
    iput-object v0, p0, Landroidx/appcompat/view/menu/j;->l:Landroid/graphics/drawable/Drawable;

    .line 31
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/j;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 34
    move-result-object v0

    .line 35
    return-object v0

    .line 36
    :cond_23
    const/4 v0, 0x0

    .line 37
    return-object v0
.end method

.method public final getIconTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->s:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public final getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->t:Landroid/graphics/PorterDuff$Mode;

    .line 3
    return-object v0
.end method

.method public final getIntent()Landroid/content/Intent;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->g:Landroid/content/Intent;

    .line 3
    return-object v0
.end method

.method public final getItemId()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/j;->a:I

    .line 3
    return v0
.end method

.method public final getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->D:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3
    return-object v0
.end method

.method public final getNumericModifiers()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/j;->i:I

    .line 3
    return v0
.end method

.method public final getNumericShortcut()C
    .registers 2

    .line 1
    iget-char v0, p0, Landroidx/appcompat/view/menu/j;->h:C

    .line 3
    return v0
.end method

.method public final getOrder()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/j;->c:I

    .line 3
    return v0
.end method

.method public final getSubMenu()Landroid/view/SubMenu;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->o:Landroidx/appcompat/view/menu/s;

    .line 3
    return-object v0
.end method

.method public final getSupportActionProvider()Lm0/b;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->A:Lm0/b;

    .line 3
    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->e:Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method public final getTitleCondensed()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->f:Ljava/lang/CharSequence;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    goto :goto_7

    .line 6
    :cond_5
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->e:Ljava/lang/CharSequence;

    .line 8
    :goto_7
    return-object v0
.end method

.method public final getTooltipText()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->r:Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method public final hasSubMenu()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->o:Landroidx/appcompat/view/menu/s;

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public final isActionViewExpanded()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/j;->C:Z

    .line 3
    return v0
.end method

.method public final isCheckable()Z
    .registers 3

    .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/j;->x:I

    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_7

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v1, 0x0

    .line 9
    :goto_8
    return v1
.end method

.method public final isChecked()Z
    .registers 3

    .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/j;->x:I

    .line 3
    const/4 v1, 0x2

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public final isEnabled()Z
    .registers 2

    .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/j;->x:I

    .line 3
    and-int/lit8 v0, v0, 0x10

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public final isVisible()Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->A:Lm0/b;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_1d

    .line 7
    invoke-virtual {v0}, Lm0/b;->g()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1d

    .line 13
    iget v0, p0, Landroidx/appcompat/view/menu/j;->x:I

    .line 15
    and-int/lit8 v0, v0, 0x8

    .line 17
    if-nez v0, :cond_1b

    .line 19
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->A:Lm0/b;

    .line 21
    invoke-virtual {v0}, Lm0/b;->b()Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1b

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    move v1, v2

    .line 29
    :goto_1c
    return v1

    .line 30
    :cond_1d
    iget v0, p0, Landroidx/appcompat/view/menu/j;->x:I

    .line 32
    and-int/lit8 v0, v0, 0x8

    .line 34
    if-nez v0, :cond_24

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    move v1, v2

    .line 38
    :goto_25
    return v1
.end method

.method public final setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string v0, "This is not supported, use MenuItemCompat.setActionProvider()"

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public final setActionView(I)Landroid/view/MenuItem;
    .registers 5

    .line 6
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->n:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 8
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 9
    iput-object p1, p0, Landroidx/appcompat/view/menu/j;->z:Landroid/view/View;

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Landroidx/appcompat/view/menu/j;->A:Lm0/b;

    if-eqz p1, :cond_29

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_29

    iget v0, p0, Landroidx/appcompat/view/menu/j;->a:I

    if-lez v0, :cond_29

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 13
    :cond_29
    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->n:Landroidx/appcompat/view/menu/h;

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/h;->onItemActionRequestChanged(Landroidx/appcompat/view/menu/j;)V

    return-object p0
.end method

.method public final setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .registers 4

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/j;->z:Landroid/view/View;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/appcompat/view/menu/j;->A:Lm0/b;

    if-eqz p1, :cond_15

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    iget v0, p0, Landroidx/appcompat/view/menu/j;->a:I

    if-lez v0, :cond_15

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 5
    :cond_15
    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->n:Landroidx/appcompat/view/menu/h;

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/h;->onItemActionRequestChanged(Landroidx/appcompat/view/menu/j;)V

    return-object p0
.end method

.method public final setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .registers 3

    .line 1
    iget-char v0, p0, Landroidx/appcompat/view/menu/j;->j:C

    if-ne v0, p1, :cond_5

    return-object p0

    .line 2
    :cond_5
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Landroidx/appcompat/view/menu/j;->j:C

    .line 3
    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->n:Landroidx/appcompat/view/menu/h;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/h;->onItemsChanged(Z)V

    return-object p0
.end method

.method public final setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .registers 4

    .line 4
    iget-char v0, p0, Landroidx/appcompat/view/menu/j;->j:C

    if-ne v0, p1, :cond_9

    iget v0, p0, Landroidx/appcompat/view/menu/j;->k:I

    if-ne v0, p2, :cond_9

    return-object p0

    .line 5
    :cond_9
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Landroidx/appcompat/view/menu/j;->j:C

    .line 6
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/j;->k:I

    .line 7
    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->n:Landroidx/appcompat/view/menu/h;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/h;->onItemsChanged(Z)V

    return-object p0
.end method

.method public final setCheckable(Z)Landroid/view/MenuItem;
    .registers 4

    .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/j;->x:I

    .line 3
    and-int/lit8 v1, v0, -0x2

    .line 5
    or-int/2addr p1, v1

    .line 6
    iput p1, p0, Landroidx/appcompat/view/menu/j;->x:I

    .line 8
    if-eq v0, p1, :cond_f

    .line 10
    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->n:Landroidx/appcompat/view/menu/h;

    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/h;->onItemsChanged(Z)V

    .line 16
    :cond_f
    return-object p0
.end method

.method public final setChecked(Z)Landroid/view/MenuItem;
    .registers 5

    .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/j;->x:I

    .line 3
    and-int/lit8 v1, v0, 0x4

    .line 5
    if-eqz v1, :cond_c

    .line 7
    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->n:Landroidx/appcompat/view/menu/h;

    .line 9
    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/h;->setExclusiveItemChecked(Landroid/view/MenuItem;)V

    .line 12
    goto :goto_1e

    .line 13
    :cond_c
    and-int/lit8 v1, v0, -0x3

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz p1, :cond_13

    .line 18
    const/4 p1, 0x2

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    move p1, v2

    .line 21
    :goto_14
    or-int/2addr p1, v1

    .line 22
    iput p1, p0, Landroidx/appcompat/view/menu/j;->x:I

    .line 24
    if-eq v0, p1, :cond_1e

    .line 26
    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->n:Landroidx/appcompat/view/menu/h;

    .line 28
    invoke-virtual {p1, v2}, Landroidx/appcompat/view/menu/h;->onItemsChanged(Z)V

    .line 31
    :cond_1e
    :goto_1e
    return-object p0
.end method

.method public final bridge synthetic setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/j;->setContentDescription(Ljava/lang/CharSequence;)Lh0/b;

    return-object p0
.end method

.method public final setContentDescription(Ljava/lang/CharSequence;)Lh0/b;
    .registers 3

    .line 2
    iput-object p1, p0, Landroidx/appcompat/view/menu/j;->q:Ljava/lang/CharSequence;

    .line 3
    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->n:Landroidx/appcompat/view/menu/h;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/h;->onItemsChanged(Z)V

    return-object p0
.end method

.method public final setEnabled(Z)Landroid/view/MenuItem;
    .registers 3

    .line 1
    if-eqz p1, :cond_9

    .line 3
    iget p1, p0, Landroidx/appcompat/view/menu/j;->x:I

    .line 5
    or-int/lit8 p1, p1, 0x10

    .line 7
    iput p1, p0, Landroidx/appcompat/view/menu/j;->x:I

    .line 9
    goto :goto_f

    .line 10
    :cond_9
    iget p1, p0, Landroidx/appcompat/view/menu/j;->x:I

    .line 12
    and-int/lit8 p1, p1, -0x11

    .line 14
    iput p1, p0, Landroidx/appcompat/view/menu/j;->x:I

    .line 16
    :goto_f
    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->n:Landroidx/appcompat/view/menu/h;

    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/h;->onItemsChanged(Z)V

    .line 22
    return-object p0
.end method

.method public final setIcon(I)Landroid/view/MenuItem;
    .registers 3

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/appcompat/view/menu/j;->l:Landroid/graphics/drawable/Drawable;

    .line 6
    iput p1, p0, Landroidx/appcompat/view/menu/j;->m:I

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/j;->w:Z

    .line 8
    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->n:Landroidx/appcompat/view/menu/h;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/h;->onItemsChanged(Z)V

    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroidx/appcompat/view/menu/j;->m:I

    .line 2
    iput-object p1, p0, Landroidx/appcompat/view/menu/j;->l:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/j;->w:Z

    .line 4
    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->n:Landroidx/appcompat/view/menu/h;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/h;->onItemsChanged(Z)V

    return-object p0
.end method

.method public final setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/j;->s:Landroid/content/res/ColorStateList;

    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/j;->u:Z

    .line 6
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/j;->w:Z

    .line 8
    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->n:Landroidx/appcompat/view/menu/h;

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/h;->onItemsChanged(Z)V

    .line 14
    return-object p0
.end method

.method public final setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/j;->t:Landroid/graphics/PorterDuff$Mode;

    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/j;->v:Z

    .line 6
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/j;->w:Z

    .line 8
    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->n:Landroidx/appcompat/view/menu/h;

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/h;->onItemsChanged(Z)V

    .line 14
    return-object p0
.end method

.method public final setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/j;->g:Landroid/content/Intent;

    .line 3
    return-object p0
.end method

.method public final setNumericShortcut(C)Landroid/view/MenuItem;
    .registers 3

    .line 1
    iget-char v0, p0, Landroidx/appcompat/view/menu/j;->h:C

    if-ne v0, p1, :cond_5

    return-object p0

    .line 2
    :cond_5
    iput-char p1, p0, Landroidx/appcompat/view/menu/j;->h:C

    .line 3
    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->n:Landroidx/appcompat/view/menu/h;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/h;->onItemsChanged(Z)V

    return-object p0
.end method

.method public final setNumericShortcut(CI)Landroid/view/MenuItem;
    .registers 4

    .line 4
    iget-char v0, p0, Landroidx/appcompat/view/menu/j;->h:C

    if-ne v0, p1, :cond_9

    iget v0, p0, Landroidx/appcompat/view/menu/j;->i:I

    if-ne v0, p2, :cond_9

    return-object p0

    .line 5
    :cond_9
    iput-char p1, p0, Landroidx/appcompat/view/menu/j;->h:C

    .line 6
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/j;->i:I

    .line 7
    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->n:Landroidx/appcompat/view/menu/h;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/h;->onItemsChanged(Z)V

    return-object p0
.end method

.method public final setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/j;->B:Landroid/view/MenuItem$OnActionExpandListener;

    .line 3
    return-object p0
.end method

.method public final setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/j;->p:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3
    return-object p0
.end method

.method public final setShortcut(CC)Landroid/view/MenuItem;
    .registers 3

    .line 1
    iput-char p1, p0, Landroidx/appcompat/view/menu/j;->h:C

    .line 2
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Landroidx/appcompat/view/menu/j;->j:C

    .line 3
    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->n:Landroidx/appcompat/view/menu/h;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/h;->onItemsChanged(Z)V

    return-object p0
.end method

.method public final setShortcut(CCII)Landroid/view/MenuItem;
    .registers 5

    .line 4
    iput-char p1, p0, Landroidx/appcompat/view/menu/j;->h:C

    .line 5
    invoke-static {p3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/j;->i:I

    .line 6
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Landroidx/appcompat/view/menu/j;->j:C

    .line 7
    invoke-static {p4}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/j;->k:I

    .line 8
    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->n:Landroidx/appcompat/view/menu/h;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/h;->onItemsChanged(Z)V

    return-object p0
.end method

.method public final setShowAsAction(I)V
    .registers 4

    .line 1
    and-int/lit8 v0, p1, 0x3

    .line 3
    if-eqz v0, :cond_13

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_13

    .line 8
    const/4 v1, 0x2

    .line 9
    if-ne v0, v1, :cond_b

    .line 11
    goto :goto_13

    .line 12
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    const-string v0, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    .line 16
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p1

    .line 20
    :cond_13
    :goto_13
    iput p1, p0, Landroidx/appcompat/view/menu/j;->y:I

    .line 22
    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->n:Landroidx/appcompat/view/menu/h;

    .line 24
    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/h;->onItemActionRequestChanged(Landroidx/appcompat/view/menu/j;)V

    .line 27
    return-void
.end method

.method public final setShowAsActionFlags(I)Landroid/view/MenuItem;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/j;->setShowAsAction(I)V

    .line 4
    return-object p0
.end method

.method public final setSupportActionProvider(Lm0/b;)Lh0/b;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->A:Lm0/b;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_7

    .line 6
    iput-object v1, v0, Lm0/b;->a:Lm0/b$a;

    .line 8
    :cond_7
    iput-object v1, p0, Landroidx/appcompat/view/menu/j;->z:Landroid/view/View;

    .line 10
    iput-object p1, p0, Landroidx/appcompat/view/menu/j;->A:Lm0/b;

    .line 12
    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->n:Landroidx/appcompat/view/menu/h;

    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/h;->onItemsChanged(Z)V

    .line 18
    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->A:Lm0/b;

    .line 20
    if-eqz p1, :cond_1d

    .line 22
    new-instance v0, Landroidx/appcompat/view/menu/j$a;

    .line 24
    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/j$a;-><init>(Landroidx/appcompat/view/menu/j;)V

    .line 27
    invoke-virtual {p1, v0}, Lm0/b;->h(Lm0/b$a;)V

    .line 30
    :cond_1d
    return-object p0
.end method

.method public final setTitle(I)Landroid/view/MenuItem;
    .registers 3

    .line 5
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->n:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/j;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 4

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/j;->e:Ljava/lang/CharSequence;

    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->n:Landroidx/appcompat/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/h;->onItemsChanged(Z)V

    .line 3
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->o:Landroidx/appcompat/view/menu/s;

    if-eqz v0, :cond_f

    .line 4
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/s;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    :cond_f
    return-object p0
.end method

.method public final setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/j;->f:Ljava/lang/CharSequence;

    .line 3
    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->n:Landroidx/appcompat/view/menu/h;

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/h;->onItemsChanged(Z)V

    .line 9
    return-object p0
.end method

.method public final bridge synthetic setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/j;->setTooltipText(Ljava/lang/CharSequence;)Lh0/b;

    return-object p0
.end method

.method public final setTooltipText(Ljava/lang/CharSequence;)Lh0/b;
    .registers 3

    .line 2
    iput-object p1, p0, Landroidx/appcompat/view/menu/j;->r:Ljava/lang/CharSequence;

    .line 3
    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->n:Landroidx/appcompat/view/menu/h;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/h;->onItemsChanged(Z)V

    return-object p0
.end method

.method public final setVisible(Z)Landroid/view/MenuItem;
    .registers 5

    .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/j;->x:I

    .line 3
    and-int/lit8 v1, v0, -0x9

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p1, :cond_9

    .line 8
    move p1, v2

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const/16 p1, 0x8

    .line 12
    :goto_b
    or-int/2addr p1, v1

    .line 13
    iput p1, p0, Landroidx/appcompat/view/menu/j;->x:I

    .line 15
    if-eq v0, p1, :cond_11

    .line 17
    const/4 v2, 0x1

    .line 18
    :cond_11
    if-eqz v2, :cond_18

    .line 20
    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->n:Landroidx/appcompat/view/menu/h;

    .line 22
    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/h;->onItemVisibleChanged(Landroidx/appcompat/view/menu/j;)V

    .line 25
    :cond_18
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->e:Ljava/lang/CharSequence;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return-object v0
.end method
