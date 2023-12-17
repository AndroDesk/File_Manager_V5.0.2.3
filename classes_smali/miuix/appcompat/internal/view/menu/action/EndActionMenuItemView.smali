.class public Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;
.super Landroid/widget/LinearLayout;
.source "EndActionMenuItemView.java"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;
.implements Lmiuix/animation/ViewHoverListener;


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mIsCheckable:Z

.field private mIsHover:Z

.field private mItemData:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

.field private mItemInvoker:Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 4
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 p3, 0x11

    .line 5
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 6
    sget p3, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_end_menu_item_child_layout:I

    invoke-static {p1, p3, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 7
    sget p1, Lmiuix/appcompat/R$id;->action_menu_item_child_icon:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->mImageView:Landroid/widget/ImageView;

    .line 8
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p3, v0, :cond_24

    .line 9
    invoke-static {p1}, Lf1/x;->r(Landroid/widget/ImageView;)V

    :cond_24
    new-array p1, p2, [Landroid/view/View;

    const/4 p3, 0x0

    aput-object p0, p1, p3

    .line 10
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p1

    new-array v0, p3, [Lmiuix/animation/ITouchStyle$TouchType;

    const/high16 v1, 0x3f800000  # 1.0f

    .line 11
    invoke-interface {p1, v1, v0}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p1

    const v0, 0x3f19999a  # 0.6f

    new-array v2, p2, [Lmiuix/animation/ITouchStyle$TouchType;

    sget-object v3, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    aput-object v3, v2, p3

    .line 12
    invoke-interface {p1, v0, v2}, Lmiuix/animation/ITouchStyle;->setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p1

    new-array v0, p2, [Lmiuix/animation/ITouchStyle$TouchType;

    sget-object v2, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    aput-object v2, v0, p3

    .line 13
    invoke-interface {p1, v1, v0}, Lmiuix/animation/ITouchStyle;->setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p1

    new-array v0, p3, [Lmiuix/animation/base/AnimConfig;

    .line 14
    invoke-interface {p1, p0, v0}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    new-array p1, p2, [Landroid/view/View;

    aput-object p0, p1, p3

    .line 15
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object p1

    sget-object p2, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {p1, p2}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object p1

    new-array p2, p3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p0, p2}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method


# virtual methods
.method public getItemData()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->mItemData:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 3
    return-object v0
.end method

.method public initialize(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->mItemData:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 3
    const/4 p2, 0x0

    .line 4
    invoke-virtual {p0, p2}, Landroid/view/View;->setSelected(Z)V

    .line 7
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 21
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isCheckable()Z

    .line 24
    move-result p2

    .line 25
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->setCheckable(Z)V

    .line 28
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isChecked()Z

    .line 31
    move-result p2

    .line 32
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->setChecked(Z)V

    .line 35
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isEnabled()Z

    .line 38
    move-result p2

    .line 39
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->setEnabled(Z)V

    .line 42
    const/4 p2, 0x1

    .line 43
    invoke-virtual {p0, p2}, Landroid/view/View;->setClickable(Z)V

    .line 46
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    .line 49
    move-result-object p2

    .line 50
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    move-result p2

    .line 54
    if-nez p2, :cond_3f

    .line 56
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 63
    goto :goto_46

    .line 64
    :cond_3f
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 71
    :goto_46
    return-void
.end method

.method public isHover()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->mIsHover:Z

    .line 3
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    return-void
.end method

.method public onEnterHover()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->mIsHover:Z

    .line 4
    return-void
.end method

.method public onExitHover()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->mIsHover:Z

    .line 4
    return-void
.end method

.method public onMoveHover()V
    .registers 1

    return-void
.end method

.method public performClick()Z
    .registers 6

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
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->mItemData:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 11
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getItemId()I

    .line 14
    move-result v0

    .line 15
    sget v2, Lmiuix/appcompat/R$id;->more:I

    .line 17
    const/4 v3, 0x0

    .line 18
    if-ne v0, v2, :cond_15

    .line 20
    move v0, v1

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    move v0, v3

    .line 23
    :goto_16
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->mItemInvoker:Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;

    .line 25
    if-eqz v2, :cond_26

    .line 27
    iget-object v4, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->mItemData:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 29
    invoke-interface {v2, v4, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;I)Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_26

    .line 35
    invoke-virtual {p0, v3}, Landroid/view/View;->playSoundEffect(I)V

    .line 38
    return v1

    .line 39
    :cond_26
    return v3
.end method

.method public prefersCondensedTitle()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->mIsCheckable:Z

    .line 3
    return-void
.end method

.method public setChecked(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->mIsCheckable:Z

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
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->mImageView:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 9
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->mImageView:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object v0

    .line 7
    if-eq v0, p1, :cond_d

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->mImageView:Landroid/widget/ImageView;

    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    :cond_d
    return-void
.end method

.method public setItemInvoker(Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->mItemInvoker:Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;

    .line 3
    return-void
.end method

.method public setShortcut(ZC)V
    .registers 3

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2

    return-void
.end method

.method public showsIcon()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
