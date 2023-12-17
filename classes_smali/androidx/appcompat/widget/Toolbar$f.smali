.class public final Landroidx/appcompat/widget/Toolbar$f;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Landroidx/appcompat/view/menu/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public a:Landroidx/appcompat/view/menu/h;

.field public b:Landroidx/appcompat/view/menu/j;

.field public final synthetic c:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar$f;->c:Landroidx/appcompat/widget/Toolbar;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final collapseItemActionView(Landroidx/appcompat/view/menu/h;Landroidx/appcompat/view/menu/j;)Z
    .registers 4

    .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$f;->c:Landroidx/appcompat/widget/Toolbar;

    .line 3
    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 5
    instance-of v0, p1, Lm/b;

    .line 7
    if-eqz v0, :cond_d

    .line 9
    check-cast p1, Lm/b;

    .line 11
    invoke-interface {p1}, Lm/b;->onActionViewCollapsed()V

    .line 14
    :cond_d
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$f;->c:Landroidx/appcompat/widget/Toolbar;

    .line 16
    iget-object v0, p1, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 21
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$f;->c:Landroidx/appcompat/widget/Toolbar;

    .line 23
    iget-object v0, p1, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 28
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$f;->c:Landroidx/appcompat/widget/Toolbar;

    .line 30
    const/4 v0, 0x0

    .line 31
    iput-object v0, p1, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 33
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->addChildrenForExpandedActionView()V

    .line 36
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar$f;->b:Landroidx/appcompat/view/menu/j;

    .line 38
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$f;->c:Landroidx/appcompat/widget/Toolbar;

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 43
    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p2, Landroidx/appcompat/view/menu/j;->C:Z

    .line 46
    iget-object p2, p2, Landroidx/appcompat/view/menu/j;->n:Landroidx/appcompat/view/menu/h;

    .line 48
    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/h;->onItemsChanged(Z)V

    .line 51
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$f;->c:Landroidx/appcompat/widget/Toolbar;

    .line 53
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->updateBackInvokedCallbackState()V

    .line 56
    const/4 p1, 0x1

    .line 57
    return p1
.end method

.method public final expandItemActionView(Landroidx/appcompat/view/menu/h;Landroidx/appcompat/view/menu/j;)Z
    .registers 6

    .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$f;->c:Landroidx/appcompat/widget/Toolbar;

    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->ensureCollapseButtonView()V

    .line 6
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$f;->c:Landroidx/appcompat/widget/Toolbar;

    .line 8
    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 13
    move-result-object p1

    .line 14
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$f;->c:Landroidx/appcompat/widget/Toolbar;

    .line 16
    if-eq p1, v0, :cond_23

    .line 18
    instance-of v1, p1, Landroid/view/ViewGroup;

    .line 20
    if-eqz v1, :cond_1c

    .line 22
    check-cast p1, Landroid/view/ViewGroup;

    .line 24
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 29
    :cond_1c
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$f;->c:Landroidx/appcompat/widget/Toolbar;

    .line 31
    iget-object v0, p1, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 36
    :cond_23
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$f;->c:Landroidx/appcompat/widget/Toolbar;

    .line 38
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/j;->getActionView()Landroid/view/View;

    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p1, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 44
    iput-object p2, p0, Landroidx/appcompat/widget/Toolbar$f;->b:Landroidx/appcompat/view/menu/j;

    .line 46
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$f;->c:Landroidx/appcompat/widget/Toolbar;

    .line 48
    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 53
    move-result-object p1

    .line 54
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$f;->c:Landroidx/appcompat/widget/Toolbar;

    .line 56
    if-eq p1, v0, :cond_65

    .line 58
    instance-of v1, p1, Landroid/view/ViewGroup;

    .line 60
    if-eqz v1, :cond_44

    .line 62
    check-cast p1, Landroid/view/ViewGroup;

    .line 64
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 66
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 69
    :cond_44
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$f;->c:Landroidx/appcompat/widget/Toolbar;

    .line 71
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->generateDefaultLayoutParams()Landroidx/appcompat/widget/Toolbar$g;

    .line 74
    move-result-object p1

    .line 75
    const v0, 0x800003

    .line 78
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar$f;->c:Landroidx/appcompat/widget/Toolbar;

    .line 80
    iget v2, v1, Landroidx/appcompat/widget/Toolbar;->mButtonGravity:I

    .line 82
    and-int/lit8 v2, v2, 0x70

    .line 84
    or-int/2addr v0, v2

    .line 85
    iput v0, p1, Landroidx/appcompat/app/a$a;->a:I

    .line 87
    const/4 v0, 0x2

    .line 88
    iput v0, p1, Landroidx/appcompat/widget/Toolbar$g;->b:I

    .line 90
    iget-object v0, v1, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 92
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$f;->c:Landroidx/appcompat/widget/Toolbar;

    .line 97
    iget-object v0, p1, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 99
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 102
    :cond_65
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$f;->c:Landroidx/appcompat/widget/Toolbar;

    .line 104
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->removeChildrenForExpandedActionView()V

    .line 107
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$f;->c:Landroidx/appcompat/widget/Toolbar;

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 112
    const/4 p1, 0x1

    .line 113
    iput-boolean p1, p2, Landroidx/appcompat/view/menu/j;->C:Z

    .line 115
    iget-object p2, p2, Landroidx/appcompat/view/menu/j;->n:Landroidx/appcompat/view/menu/h;

    .line 117
    const/4 v0, 0x0

    .line 118
    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/h;->onItemsChanged(Z)V

    .line 121
    iget-object p2, p0, Landroidx/appcompat/widget/Toolbar$f;->c:Landroidx/appcompat/widget/Toolbar;

    .line 123
    iget-object p2, p2, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 125
    instance-of v0, p2, Lm/b;

    .line 127
    if-eqz v0, :cond_85

    .line 129
    check-cast p2, Lm/b;

    .line 131
    invoke-interface {p2}, Lm/b;->onActionViewExpanded()V

    .line 134
    :cond_85
    iget-object p2, p0, Landroidx/appcompat/widget/Toolbar$f;->c:Landroidx/appcompat/widget/Toolbar;

    .line 136
    invoke-virtual {p2}, Landroidx/appcompat/widget/Toolbar;->updateBackInvokedCallbackState()V

    .line 139
    return p1
.end method

.method public final flagActionItems()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getId()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/h;)V
    .registers 4

    .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$f;->a:Landroidx/appcompat/view/menu/h;

    .line 3
    if-eqz p1, :cond_b

    .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$f;->b:Landroidx/appcompat/view/menu/j;

    .line 7
    if-eqz v0, :cond_b

    .line 9
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/h;->collapseItemActionView(Landroidx/appcompat/view/menu/j;)Z

    .line 12
    :cond_b
    iput-object p2, p0, Landroidx/appcompat/widget/Toolbar$f;->a:Landroidx/appcompat/view/menu/h;

    .line 14
    return-void
.end method

.method public final onCloseMenu(Landroidx/appcompat/view/menu/h;Z)V
    .registers 3

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 2

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onSubMenuSelected(Landroidx/appcompat/view/menu/s;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public final updateMenuView(Z)V
    .registers 6

    .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$f;->b:Landroidx/appcompat/view/menu/j;

    .line 3
    if-eqz p1, :cond_28

    .line 5
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$f;->a:Landroidx/appcompat/view/menu/h;

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_1f

    .line 10
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/h;->size()I

    .line 13
    move-result p1

    .line 14
    move v1, v0

    .line 15
    :goto_e
    if-ge v1, p1, :cond_1f

    .line 17
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar$f;->a:Landroidx/appcompat/view/menu/h;

    .line 19
    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/h;->getItem(I)Landroid/view/MenuItem;

    .line 22
    move-result-object v2

    .line 23
    iget-object v3, p0, Landroidx/appcompat/widget/Toolbar$f;->b:Landroidx/appcompat/view/menu/j;

    .line 25
    if-ne v2, v3, :cond_1c

    .line 27
    const/4 v0, 0x1

    .line 28
    goto :goto_1f

    .line 29
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    .line 31
    goto :goto_e

    .line 32
    :cond_1f
    :goto_1f
    if-nez v0, :cond_28

    .line 34
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$f;->a:Landroidx/appcompat/view/menu/h;

    .line 36
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$f;->b:Landroidx/appcompat/view/menu/j;

    .line 38
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/Toolbar$f;->collapseItemActionView(Landroidx/appcompat/view/menu/h;Landroidx/appcompat/view/menu/j;)Z

    .line 41
    :cond_28
    return-void
.end method
