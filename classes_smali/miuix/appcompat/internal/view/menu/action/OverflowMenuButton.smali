.class Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;
.super Landroid/widget/LinearLayout;
.source "OverflowMenuButton.java"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$ActionMenuChildView;
.implements Lmiuix/animation/ViewHoverListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton$OnOverflowMenuButtonClickListener;
    }
.end annotation


# instance fields
.field private mChildren:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;

.field private mIsHover:Z

.field private mOnOverflowMenuButtonClickListener:Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton$OnOverflowMenuButtonClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object v0, Lmiuix/appcompat/R$styleable;->OverflowMenuButton:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    sget p2, Lmiuix/appcompat/R$styleable;->OverflowMenuButton_android_drawableTop:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 6
    sget p3, Lmiuix/appcompat/R$styleable;->OverflowMenuButton_android_text:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    .line 7
    sget v0, Lmiuix/appcompat/R$styleable;->OverflowMenuButton_android_contentDescription:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 9
    new-instance p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;

    invoke-direct {p1, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;-><init>(Landroid/widget/LinearLayout;)V

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;->mChildren:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;

    .line 10
    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 11
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;->mChildren:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;

    invoke-virtual {p1, p3}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;->mChildren:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 13
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 14
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 15
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;->setEnabled(Z)V

    return-void
.end method

.method private isVisible()Z
    .registers 4

    .line 1
    move-object v0, p0

    .line 2
    :goto_1
    if-eqz v0, :cond_17

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_17

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    instance-of v2, v0, Landroid/view/ViewGroup;

    .line 17
    if-eqz v2, :cond_15

    .line 19
    check-cast v0, Landroid/view/ViewGroup;

    .line 21
    goto :goto_1

    .line 22
    :cond_15
    move-object v0, v1

    .line 23
    goto :goto_1

    .line 24
    :cond_17
    if-nez v0, :cond_1b

    .line 26
    const/4 v0, 0x1

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    const/4 v0, 0x0

    .line 29
    :goto_1c
    return v0
.end method


# virtual methods
.method public isHover()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;->mIsHover:Z

    .line 3
    return v0
.end method

.method public needsDividerAfter()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onEnterHover()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;->mIsHover:Z

    .line 4
    return-void
.end method

.method public onExitHover()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;->mIsHover:Z

    .line 4
    return-void
.end method

.method public onMoveHover()V
    .registers 1

    return-void
.end method

.method public performClick()Z
    .registers 3

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
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;->isVisible()Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_f

    .line 15
    return v1

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 20
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;->mOnOverflowMenuButtonClickListener:Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton$OnOverflowMenuButtonClickListener;

    .line 22
    if-eqz v0, :cond_1a

    .line 24
    invoke-interface {v0}, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton$OnOverflowMenuButtonClickListener;->onOverflowMenuButtonClick()V

    .line 27
    :cond_1a
    return v1
.end method

.method public setEnabled(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;->mChildren:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;

    .line 6
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->setEnabled(Z)V

    .line 9
    return-void
.end method

.method public setOnOverflowMenuButtonClickListener(Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton$OnOverflowMenuButtonClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;->mOnOverflowMenuButtonClickListener:Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton$OnOverflowMenuButtonClickListener;

    .line 3
    return-void
.end method
