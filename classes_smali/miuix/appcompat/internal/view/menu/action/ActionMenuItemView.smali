.class public Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuItemView.java"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;


# instance fields
.field private mChildren:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;

.field private mIsCheckable:Z

.field private mItemData:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

.field private mItemInvoker:Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;

    invoke-direct {p1, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;-><init>(Landroid/widget/LinearLayout;)V

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->mChildren:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;

    return-void
.end method


# virtual methods
.method public getItemData()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->mItemData:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 3
    return-object v0
.end method

.method public initialize(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;I)V
    .registers 4

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->mItemData:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 3
    const/4 p2, 0x0

    .line 4
    invoke-virtual {p0, p2}, Landroid/view/View;->setSelected(Z)V

    .line 7
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 21
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isCheckable()Z

    .line 24
    move-result p2

    .line 25
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->setCheckable(Z)V

    .line 28
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isChecked()Z

    .line 31
    move-result p2

    .line 32
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->setChecked(Z)V

    .line 35
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isEnabled()Z

    .line 38
    move-result p2

    .line 39
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->setEnabled(Z)V

    .line 42
    const/4 p2, 0x1

    .line 43
    invoke-virtual {p0, p2}, Landroid/view/View;->setClickable(Z)V

    .line 46
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 48
    const/16 v0, 0x1a

    .line 50
    if-lt p2, v0, :cond_3d

    .line 52
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->mChildren:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;

    .line 54
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p2, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 61
    goto :goto_46

    .line 62
    :cond_3d
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->mChildren:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;

    .line 64
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p2, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 71
    :goto_46
    return-void
.end method

.method public performClick()Z
    .registers 5

    .line 1
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->mItemInvoker:Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_19

    .line 14
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->mItemData:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 16
    invoke-interface {v0, v3, v2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;I)Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_19

    .line 22
    invoke-virtual {p0, v2}, Landroid/view/View;->playSoundEffect(I)V

    .line 25
    return v1

    .line 26
    :cond_19
    return v2
.end method

.method public prefersCondensedTitle()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->mIsCheckable:Z

    .line 3
    return-void
.end method

.method public setChecked(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->mIsCheckable:Z

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 8
    :cond_7
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->mChildren:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;

    .line 6
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->setEnabled(Z)V

    .line 9
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->mChildren:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 6
    return-void
.end method

.method public setItemInvoker(Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->mItemInvoker:Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;

    .line 3
    return-void
.end method

.method public setShortcut(ZC)V
    .registers 3

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->mChildren:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->setText(Ljava/lang/CharSequence;)V

    .line 6
    return-void
.end method

.method public showsIcon()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
