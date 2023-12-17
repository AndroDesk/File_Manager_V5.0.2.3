.class public Lmiuix/navigator/navigation/internal/NavigationMenuItemView;
.super Landroid/widget/LinearLayout;
.source "NavigationMenuItemView.java"

# interfaces
.implements Lmiuix/appcompat/view/menu/MenuView$ItemView;


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private final accessibilityDelegate:Lm0/a;

.field private actionArea:Landroid/widget/FrameLayout;

.field public checkable:Z

.field private emptyDrawable:Landroid/graphics/drawable/Drawable;

.field private hasIconTintList:Z

.field private iconSize:I

.field private iconTintList:Landroid/content/res/ColorStateList;

.field private itemData:Lmiuix/appcompat/view/menu/MenuItemImpl;

.field private mItemInvoker:Lmiuix/appcompat/view/menu/MenuBuilder$ItemInvoker;

.field private needsEmptyIcon:Z

.field private final textView:Landroid/widget/CheckedTextView;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [I

    .line 4
    const/4 v1, 0x0

    .line 5
    const v2, 0x10100a0

    .line 8
    aput v2, v0, v1

    .line 10
    sput-object v0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->CHECKED_STATE_SET:[I

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Lmiuix/navigator/navigation/internal/NavigationMenuItemView$1;

    invoke-direct {p2, p0}, Lmiuix/navigator/navigation/internal/NavigationMenuItemView$1;-><init>(Lmiuix/navigator/navigation/internal/NavigationMenuItemView;)V

    iput-object p2, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->accessibilityDelegate:Lm0/a;

    const/4 p3, 0x0

    .line 5
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget v0, Lmiuix/navigator/R$layout;->miuix_design_navigation_menu_item:I

    const/4 v1, 0x1

    invoke-virtual {p3, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lmiuix/navigator/R$dimen;->miuix_design_navigation_icon_size:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->setIconSize(I)V

    .line 8
    sget p1, Lmiuix/navigator/R$id;->design_menu_item_text:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    iput-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    .line 9
    invoke-virtual {p1, v1}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    .line 10
    invoke-static {p1, p2}, Lm0/g0;->m(Landroid/view/View;Lm0/a;)V

    return-void
.end method

.method private adjustAppearance()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->shouldExpandActionArea()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_20

    .line 7
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    .line 9
    const/16 v1, 0x8

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    .line 16
    if-eqz v0, :cond_38

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 24
    const/4 v1, -0x1

    .line 25
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 27
    iget-object v1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    .line 29
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    goto :goto_38

    .line 33
    :cond_20
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 39
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    .line 41
    if-eqz v0, :cond_38

    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 49
    const/4 v1, -0x2

    .line 50
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 52
    iget-object v1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    .line 54
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    :cond_38
    :goto_38
    return-void
.end method

.method private createDefaultBackground()Landroid/graphics/drawable/StateListDrawable;
    .registers 5

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    .line 3
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 13
    move-result-object v1

    .line 14
    sget v2, Lh/a;->colorControlHighlight:I

    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_33

    .line 23
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    .line 25
    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 28
    sget-object v2, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->CHECKED_STATE_SET:[I

    .line 30
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 32
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 34
    invoke-direct {v3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 37
    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 40
    sget-object v0, Landroid/widget/LinearLayout;->EMPTY_STATE_SET:[I

    .line 42
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 48
    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 51
    return-object v1

    .line 52
    :cond_33
    const/4 v0, 0x0

    .line 53
    return-object v0
.end method

.method private setActionView(Landroid/view/View;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_20

    .line 3
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    .line 5
    if-nez v0, :cond_16

    .line 7
    sget v0, Lmiuix/navigator/R$id;->design_menu_item_action_area_stub:I

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/ViewStub;

    .line 15
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/FrameLayout;

    .line 21
    iput-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    .line 23
    :cond_16
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    .line 25
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 28
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    .line 30
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 33
    :cond_20
    return-void
.end method

.method private shouldExpandActionArea()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->itemData:Lmiuix/appcompat/view/menu/MenuItemImpl;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_1a

    .line 9
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->itemData:Lmiuix/appcompat/view/menu/MenuItemImpl;

    .line 11
    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_1a

    .line 17
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->itemData:Lmiuix/appcompat/view/menu/MenuItemImpl;

    .line 19
    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_1a

    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 v0, 0x0

    .line 28
    :goto_1b
    return v0
.end method


# virtual methods
.method public getItemData()Lmiuix/appcompat/view/menu/MenuItemImpl;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->itemData:Lmiuix/appcompat/view/menu/MenuItemImpl;

    .line 3
    return-object v0
.end method

.method public initialize(Lmiuix/appcompat/view/menu/MenuItemImpl;I)V
    .registers 4

    .line 1
    iput-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->itemData:Lmiuix/appcompat/view/menu/MenuItemImpl;

    .line 3
    invoke-virtual {p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getItemId()I

    .line 6
    move-result p2

    .line 7
    if-lez p2, :cond_f

    .line 9
    invoke-virtual {p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getItemId()I

    .line 12
    move-result p2

    .line 13
    invoke-virtual {p0, p2}, Landroid/view/View;->setId(I)V

    .line 16
    :cond_f
    invoke-virtual {p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    .line 19
    move-result p2

    .line 20
    if-eqz p2, :cond_17

    .line 22
    const/4 p2, 0x0

    .line 23
    goto :goto_19

    .line 24
    :cond_17
    const/16 p2, 0x8

    .line 26
    :goto_19
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 32
    move-result-object p2

    .line 33
    if-nez p2, :cond_2b

    .line 35
    invoke-direct {p0}, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->createDefaultBackground()Landroid/graphics/drawable/StateListDrawable;

    .line 38
    move-result-object p2

    .line 39
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 41
    invoke-static {p0, p2}, Lm0/g0$d;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 44
    :cond_2b
    invoke-virtual {p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    .line 47
    move-result p2

    .line 48
    invoke-virtual {p0, p2}, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->setCheckable(Z)V

    .line 51
    invoke-virtual {p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    .line 54
    move-result p2

    .line 55
    invoke-virtual {p0, p2}, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->setChecked(Z)V

    .line 58
    invoke-virtual {p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    .line 61
    move-result p2

    .line 62
    invoke-virtual {p0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 65
    invoke-virtual {p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {p0, p2}, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 75
    move-result-object p2

    .line 76
    invoke-virtual {p0, p2}, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 79
    invoke-virtual {p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    .line 82
    move-result-object p2

    .line 83
    invoke-direct {p0, p2}, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->setActionView(Landroid/view/View;)V

    .line 86
    invoke-virtual {p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 93
    invoke-direct {p0}, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->adjustAppearance()V

    .line 96
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .registers 3

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 3
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->itemData:Lmiuix/appcompat/view/menu/MenuItemImpl;

    .line 9
    if-eqz v0, :cond_1d

    .line 11
    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1d

    .line 17
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->itemData:Lmiuix/appcompat/view/menu/MenuItemImpl;

    .line 19
    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1d

    .line 25
    sget-object v0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->CHECKED_STATE_SET:[I

    .line 27
    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 30
    :cond_1d
    return-object p1
.end method

.method public prefersCondensedTitle()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public recycle()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 8
    :cond_7
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 14
    return-void
.end method

.method public setCheckable(Z)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 4
    iget-boolean v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->checkable:Z

    .line 6
    if-eq v0, p1, :cond_12

    .line 8
    iput-boolean p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->checkable:Z

    .line 10
    iget-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->accessibilityDelegate:Lm0/a;

    .line 12
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    .line 14
    const/16 v1, 0x800

    .line 16
    invoke-virtual {p1, v0, v1}, Lm0/a;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 19
    :cond_12
    return-void
.end method

.method public setChecked(Z)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 4
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 9
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    .line 11
    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 18
    return-void
.end method

.method public setHorizontalPadding(I)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, p1, v0, p1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 12
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_21

    .line 4
    iget-boolean v1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->hasIconTintList:Z

    .line 6
    if-eqz v1, :cond_1b

    .line 8
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_e

    .line 14
    goto :goto_12

    .line 15
    :cond_e
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    .line 18
    move-result-object p1

    .line 19
    :goto_12
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 22
    move-result-object p1

    .line 23
    iget-object v1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->iconTintList:Landroid/content/res/ColorStateList;

    .line 25
    invoke-static {p1, v1}, Lg0/a$b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 28
    :cond_1b
    iget v1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->iconSize:I

    .line 30
    invoke-virtual {p1, v0, v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 33
    goto :goto_46

    .line 34
    :cond_21
    iget-boolean v1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->needsEmptyIcon:Z

    .line 36
    if-eqz v1, :cond_46

    .line 38
    iget-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    .line 40
    if-nez p1, :cond_44

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 45
    move-result-object p1

    .line 46
    sget v1, Lmiuix/navigator/R$drawable;->miuix_navigation_empty_icon:I

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 55
    move-result-object v2

    .line 56
    invoke-static {p1, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    .line 62
    if-eqz p1, :cond_44

    .line 64
    iget v1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->iconSize:I

    .line 66
    invoke-virtual {p1, v0, v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 69
    :cond_44
    iget-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    .line 71
    :cond_46
    :goto_46
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    .line 73
    const/4 v1, 0x0

    .line 74
    invoke-static {v0, p1, v1, v1, v1}, Landroidx/core/widget/k$b;->e(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 77
    return-void
.end method

.method public setIconPadding(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 6
    return-void
.end method

.method public setIconSize(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->iconSize:I

    .line 3
    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->iconTintList:Landroid/content/res/ColorStateList;

    .line 3
    if-eqz p1, :cond_6

    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 p1, 0x0

    .line 8
    :goto_7
    iput-boolean p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->hasIconTintList:Z

    .line 10
    iget-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->itemData:Lmiuix/appcompat/view/menu/MenuItemImpl;

    .line 12
    if-eqz p1, :cond_14

    .line 14
    invoke-virtual {p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 21
    :cond_14
    return-void
.end method

.method public setItemInvoker(Lmiuix/appcompat/view/menu/MenuBuilder$ItemInvoker;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->mItemInvoker:Lmiuix/appcompat/view/menu/MenuBuilder$ItemInvoker;

    .line 3
    return-void
.end method

.method public setMaxLines(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 6
    return-void
.end method

.method public setNeedsEmptyIcon(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->needsEmptyIcon:Z

    .line 3
    return-void
.end method

.method public setShortcut(ZC)V
    .registers 3

    return-void
.end method

.method public setTextAppearance(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 6
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 6
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    return-void
.end method

.method public showsIcon()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
