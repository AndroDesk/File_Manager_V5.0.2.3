.class public Lmiuix/appcompat/internal/view/menu/ListMenuItemView;
.super Landroid/widget/LinearLayout;
.source "ListMenuItemView.java"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

.field private mContext:Landroid/content/Context;

.field private mForceShowIcon:Z

.field private mIconView:Landroidx/appcompat/widget/AppCompatImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemData:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

.field private mPreserveIconSpacing:Z

.field private mRadioButton:Landroidx/appcompat/widget/AppCompatRadioButton;

.field private mRelativeLayout:Landroid/view/View;

.field private mShortcutView:Landroid/widget/TextView;

.field private mTextAppearance:I

.field private mTextAppearanceContext:Landroid/content/Context;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mContext:Landroid/content/Context;

    .line 3
    sget-object v0, Lmiuix/appcompat/R$styleable;->MenuView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 4
    sget p3, Lmiuix/appcompat/R$styleable;->MenuView_android_itemBackground:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 5
    sget p3, Lmiuix/appcompat/R$styleable;->MenuView_android_itemTextAppearance:I

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mTextAppearance:I

    .line 6
    sget p3, Lmiuix/appcompat/R$styleable;->MenuView_preserveIconSpacing:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 7
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    .line 8
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getInflater()Landroid/view/LayoutInflater;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    .line 3
    if-nez v0, :cond_c

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    .line 13
    :cond_c
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    .line 15
    return-object v0
.end method

.method private insertCheckBox()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    .line 4
    move-result-object v0

    .line 5
    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_list_menu_item_checkbox:I

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 14
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 19
    return-void
.end method

.method private insertIconView()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    .line 4
    move-result-object v0

    .line 5
    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_list_menu_item_icon:I

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 14
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mIconView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 16
    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 19
    return-void
.end method

.method private insertRadioButton()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    .line 4
    move-result-object v0

    .line 5
    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_list_menu_item_radio:I

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroidx/appcompat/widget/AppCompatRadioButton;

    .line 14
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mRadioButton:Landroidx/appcompat/widget/AppCompatRadioButton;

    .line 16
    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 19
    return-void
.end method


# virtual methods
.method public getItemData()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mItemData:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 3
    return-object v0
.end method

.method public initialize(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;I)V
    .registers 4

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mItemData:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 3
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isVisible()Z

    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_a

    .line 9
    const/4 p2, 0x0

    .line 10
    goto :goto_c

    .line 11
    :cond_a
    const/16 p2, 0x8

    .line 13
    :goto_c
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    invoke-virtual {p1, p0}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getTitleForItemView(Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 23
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isCheckable()Z

    .line 26
    move-result p2

    .line 27
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->setCheckable(Z)V

    .line 30
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    .line 33
    move-result p2

    .line 34
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getShortcut()C

    .line 37
    move-result v0

    .line 38
    invoke-virtual {p0, p2, v0}, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->setShortcut(ZC)V

    .line 41
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 48
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isEnabled()Z

    .line 51
    move-result p1

    .line 52
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 55
    return-void
.end method

.method public onFinishInflate()V
    .registers 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 9
    sget v0, Lmiuix/appcompat/R$id;->title:I

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/TextView;

    .line 17
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    .line 19
    iget v1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mTextAppearance:I

    .line 21
    const/4 v2, -0x1

    .line 22
    if-eq v1, v2, :cond_1c

    .line 24
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    .line 26
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 29
    :cond_1c
    sget v0, Lmiuix/appcompat/R$id;->shortcut:I

    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/widget/TextView;

    .line 37
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mRelativeLayout:Landroid/view/View;

    .line 46
    return-void
.end method

.method public onMeasure(II)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mIconView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 3
    if-eqz v0, :cond_1e

    .line 5
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 7
    if-eqz v0, :cond_1e

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mIconView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 21
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 23
    if-lez v0, :cond_1e

    .line 25
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 27
    if-gtz v2, :cond_1e

    .line 29
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 31
    :cond_1e
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 34
    return-void
.end method

.method public prefersCondensedTitle()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .registers 5

    .line 1
    if-nez p1, :cond_b

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mRadioButton:Landroidx/appcompat/widget/AppCompatRadioButton;

    .line 5
    if-nez v0, :cond_b

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 9
    if-nez v0, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mItemData:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 14
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1f

    .line 20
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mRadioButton:Landroidx/appcompat/widget/AppCompatRadioButton;

    .line 22
    if-nez v0, :cond_1a

    .line 24
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->insertRadioButton()V

    .line 27
    :cond_1a
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mRadioButton:Landroidx/appcompat/widget/AppCompatRadioButton;

    .line 29
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 31
    goto :goto_2a

    .line 32
    :cond_1f
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 34
    if-nez v0, :cond_26

    .line 36
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->insertCheckBox()V

    .line 39
    :cond_26
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 41
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mRadioButton:Landroidx/appcompat/widget/AppCompatRadioButton;

    .line 43
    :goto_2a
    const/16 v2, 0x8

    .line 45
    if-eqz p1, :cond_4d

    .line 47
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mItemData:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 49
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isChecked()Z

    .line 52
    move-result p1

    .line 53
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 56
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_41

    .line 62
    const/4 p1, 0x0

    .line 63
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    :cond_41
    if-eqz v1, :cond_5b

    .line 68
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 71
    move-result p1

    .line 72
    if-eq p1, v2, :cond_5b

    .line 74
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 77
    goto :goto_5b

    .line 78
    :cond_4d
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 80
    if-eqz p1, :cond_54

    .line 82
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 85
    :cond_54
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mRadioButton:Landroidx/appcompat/widget/AppCompatRadioButton;

    .line 87
    if-eqz p1, :cond_5b

    .line 89
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 92
    :cond_5b
    :goto_5b
    return-void
.end method

.method public setChecked(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mItemData:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_12

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mRadioButton:Landroidx/appcompat/widget/AppCompatRadioButton;

    .line 11
    if-nez v0, :cond_f

    .line 13
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->insertRadioButton()V

    .line 16
    :cond_f
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mRadioButton:Landroidx/appcompat/widget/AppCompatRadioButton;

    .line 18
    goto :goto_1b

    .line 19
    :cond_12
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 21
    if-nez v0, :cond_19

    .line 23
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->insertCheckBox()V

    .line 26
    :cond_19
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 28
    :goto_1b
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 31
    return-void
.end method

.method public setForceShowIcon(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mForceShowIcon:Z

    .line 3
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 5
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mItemData:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->shouldShowIcon()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_10

    .line 10
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mForceShowIcon:Z

    .line 12
    if-eqz v0, :cond_e

    .line 14
    goto :goto_10

    .line 15
    :cond_e
    move v0, v1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    :goto_10
    const/4 v0, 0x1

    .line 18
    :goto_11
    if-nez v0, :cond_18

    .line 20
    iget-boolean v2, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 22
    if-nez v2, :cond_18

    .line 24
    return-void

    .line 25
    :cond_18
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mIconView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 27
    if-nez v2, :cond_23

    .line 29
    if-nez p1, :cond_23

    .line 31
    iget-boolean v3, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 33
    if-nez v3, :cond_23

    .line 35
    return-void

    .line 36
    :cond_23
    if-nez v2, :cond_28

    .line 38
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->insertIconView()V

    .line 41
    :cond_28
    if-nez p1, :cond_37

    .line 43
    iget-boolean v2, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 45
    if-eqz v2, :cond_2f

    .line 47
    goto :goto_37

    .line 48
    :cond_2f
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mIconView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 50
    const/16 v0, 0x8

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 55
    goto :goto_4d

    .line 56
    :cond_37
    :goto_37
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mIconView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 58
    if-eqz v0, :cond_3c

    .line 60
    goto :goto_3d

    .line 61
    :cond_3c
    const/4 p1, 0x0

    .line 62
    :goto_3d
    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mIconView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_4d

    .line 73
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mIconView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 75
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    :cond_4d
    :goto_4d
    return-void
.end method

.method public setItemInvoker(Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;)V
    .registers 2

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p1
.end method

.method public setShortcut(ZC)V
    .registers 4

    .line 1
    if-eqz p1, :cond_c

    .line 3
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mItemData:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 5
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_c

    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_e

    .line 13
    :cond_c
    const/16 p1, 0x8

    .line 15
    :goto_e
    if-nez p1, :cond_1b

    .line 17
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    .line 19
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mItemData:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 21
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getShortcutLabel()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    :cond_1b
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    .line 30
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 33
    move-result p2

    .line 34
    if-eq p2, p1, :cond_28

    .line 36
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    .line 38
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    :cond_28
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_16

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_25

    .line 16
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 22
    goto :goto_25

    .line 23
    :cond_16
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 28
    move-result p1

    .line 29
    const/16 v0, 0x8

    .line 31
    if-eq p1, v0, :cond_25

    .line 33
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 38
    :cond_25
    :goto_25
    return-void
.end method

.method public showsIcon()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mForceShowIcon:Z

    .line 3
    return v0
.end method
