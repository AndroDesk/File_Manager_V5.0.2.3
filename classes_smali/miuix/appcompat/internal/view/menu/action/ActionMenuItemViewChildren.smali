.class public Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;
.super Ljava/lang/Object;
.source "ActionMenuItemViewChildren.java"


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mParent:Landroid/widget/LinearLayout;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mParent:Landroid/widget/LinearLayout;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 14
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 17
    sget v2, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_menu_item_child_layout:I

    .line 19
    invoke-static {v0, v2, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 22
    sget v0, Lmiuix/appcompat/R$id;->action_menu_item_child_icon:I

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/widget/ImageView;

    .line 30
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mImageView:Landroid/widget/ImageView;

    .line 32
    sget v0, Lmiuix/appcompat/R$id;->action_menu_item_child_text:I

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/widget/TextView;

    .line 40
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mTextView:Landroid/widget/TextView;

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 44
    const/16 v2, 0x1d

    .line 46
    if-lt v0, v2, :cond_34

    .line 48
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mImageView:Landroid/widget/ImageView;

    .line 50
    invoke-static {v0}, Lf1/x;->r(Landroid/widget/ImageView;)V

    .line 53
    :cond_34
    new-array v0, v1, [Landroid/view/View;

    .line 55
    const/4 v2, 0x0

    .line 56
    aput-object p1, v0, v2

    .line 58
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 61
    move-result-object v0

    .line 62
    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 65
    move-result-object v0

    .line 66
    new-array v3, v2, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 68
    const/high16 v4, 0x3f800000  # 1.0f

    .line 70
    invoke-interface {v0, v4, v3}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 73
    move-result-object v0

    .line 74
    const v3, 0x3f19999a  # 0.6f

    .line 77
    new-array v5, v1, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 79
    sget-object v6, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    .line 81
    aput-object v6, v5, v2

    .line 83
    invoke-interface {v0, v3, v5}, Lmiuix/animation/ITouchStyle;->setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 86
    move-result-object v0

    .line 87
    new-array v3, v1, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 89
    sget-object v5, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    .line 91
    aput-object v5, v3, v2

    .line 93
    invoke-interface {v0, v4, v3}, Lmiuix/animation/ITouchStyle;->setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 96
    move-result-object v0

    .line 97
    new-array v3, v2, [Lmiuix/animation/base/AnimConfig;

    .line 99
    invoke-interface {v0, p1, v3}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 102
    new-array v0, v1, [Landroid/view/View;

    .line 104
    aput-object p1, v0, v2

    .line 106
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 109
    move-result-object v0

    .line 110
    invoke-interface {v0}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    .line 113
    move-result-object v0

    .line 114
    new-array v1, v2, [Lmiuix/animation/IHoverStyle$HoverType;

    .line 116
    invoke-interface {v0, v4, v1}, Lmiuix/animation/IHoverStyle;->setAlpha(F[Lmiuix/animation/IHoverStyle$HoverType;)Lmiuix/animation/IHoverStyle;

    .line 119
    move-result-object v0

    .line 120
    sget-object v1, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 122
    invoke-interface {v0, v1}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    .line 125
    move-result-object v0

    .line 126
    new-array v1, v2, [Lmiuix/animation/base/AnimConfig;

    .line 128
    invoke-interface {v0, p1, v1}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 131
    return-void
.end method


# virtual methods
.method public setContentDescription(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_f

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    goto :goto_f

    .line 10
    :cond_9
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mParent:Landroid/widget/LinearLayout;

    .line 12
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 15
    goto :goto_1a

    .line 16
    :cond_f
    :goto_f
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mParent:Landroid/widget/LinearLayout;

    .line 18
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mTextView:Landroid/widget/TextView;

    .line 20
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 27
    :goto_1a
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mImageView:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 6
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mTextView:Landroid/widget/TextView;

    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 11
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mImageView:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object v0

    .line 7
    if-eq v0, p1, :cond_d

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mImageView:Landroid/widget/ImageView;

    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    :cond_d
    return-void
.end method

.method public setSelected(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mImageView:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 6
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mTextView:Landroid/widget/TextView;

    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 11
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mTextView:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    return-void
.end method
