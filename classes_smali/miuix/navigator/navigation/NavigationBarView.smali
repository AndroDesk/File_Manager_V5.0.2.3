.class public abstract Lmiuix/navigator/navigation/NavigationBarView;
.super Landroid/widget/FrameLayout;
.source "NavigationBarView.java"

# interfaces
.implements Lmiuix/navigator/BottomNavigation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/navigator/navigation/NavigationBarView$SavedState;,
        Lmiuix/navigator/navigation/NavigationBarView$OnItemReselectedListener;,
        Lmiuix/navigator/navigation/NavigationBarView$OnItemSelectedListener;,
        Lmiuix/navigator/navigation/NavigationBarView$LayoutStyle;,
        Lmiuix/navigator/navigation/NavigationBarView$LabelVisibility;
    }
.end annotation


# static fields
.field public static final LABEL_VISIBILITY_AUTO:I = -0x1

.field public static final LABEL_VISIBILITY_LABELED:I = 0x1

.field public static final LABEL_VISIBILITY_SELECTED:I = 0x0

.field public static final LABEL_VISIBILITY_UNLABELED:I = 0x2

.field private static final MENU_PRESENTER_ID:I = 0x1


# instance fields
.field private mMinHeightDp:I

.field private mMinHeightDpInWideStyle:I

.field private mMinHeightInWideStyle:I

.field private final menu:Lmiuix/navigator/navigation/NavigationBarMenu;

.field private menuInflater:Landroid/view/MenuInflater;

.field private final menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

.field private final presenter:Lmiuix/navigator/navigation/NavigationBarPresenter;

.field private reselectedListener:Lmiuix/navigator/navigation/NavigationBarView$OnItemReselectedListener;

.field private selectedListener:Lmiuix/navigator/navigation/NavigationBarView$OnItemSelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 9

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 4
    new-instance p1, Lmiuix/navigator/navigation/NavigationBarPresenter;

    .line 6
    invoke-direct {p1}, Lmiuix/navigator/navigation/NavigationBarPresenter;-><init>()V

    .line 9
    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarView;->presenter:Lmiuix/navigator/navigation/NavigationBarPresenter;

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lmiuix/navigator/R$styleable;->MiuixNavigationBarView:[I

    .line 17
    invoke-virtual {v0, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 20
    move-result-object p2

    .line 21
    new-instance p3, Lmiuix/navigator/navigation/NavigationBarMenu;

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    move-result-object p4

    .line 27
    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarView;->getMaxItemCount()I

    .line 30
    move-result v1

    .line 31
    invoke-direct {p3, v0, p4, v1}, Lmiuix/navigator/navigation/NavigationBarMenu;-><init>(Landroid/content/Context;Ljava/lang/Class;I)V

    .line 34
    iput-object p3, p0, Lmiuix/navigator/navigation/NavigationBarView;->menu:Lmiuix/navigator/navigation/NavigationBarMenu;

    .line 36
    invoke-virtual {p0, v0}, Lmiuix/navigator/navigation/NavigationBarView;->createNavigationBarMenuView(Landroid/content/Context;)Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 39
    move-result-object p4

    .line 40
    iput-object p4, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 42
    invoke-virtual {p1, p4}, Lmiuix/navigator/navigation/NavigationBarPresenter;->setMenuView(Lmiuix/navigator/navigation/NavigationBarMenuView;)V

    .line 45
    const/4 v1, 0x1

    .line 46
    invoke-virtual {p1, v1}, Lmiuix/navigator/navigation/NavigationBarPresenter;->setId(I)V

    .line 49
    invoke-virtual {p4, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->setPresenter(Lmiuix/navigator/navigation/NavigationBarPresenter;)V

    .line 52
    invoke-virtual {p3, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Lmiuix/appcompat/view/menu/MenuPresenter;)V

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {p1, v2, p3}, Lmiuix/navigator/navigation/NavigationBarPresenter;->initForMenu(Landroid/content/Context;Lmiuix/appcompat/view/menu/MenuBuilder;)V

    .line 62
    sget p1, Lmiuix/navigator/R$styleable;->MiuixNavigationBarView_miuixItemIconTint:I

    .line 64
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_4d

    .line 70
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p4, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 77
    goto :goto_57

    .line 78
    :cond_4d
    const p1, 0x1010038

    .line 81
    invoke-virtual {p4, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p4, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 88
    :goto_57
    sget p1, Lmiuix/navigator/R$styleable;->MiuixNavigationBarView_miuixItemIconSize:I

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 93
    move-result-object v2

    .line 94
    sget v3, Lmiuix/navigator/R$dimen;->miuix_base_navigation_bar_item_default_icon_size:I

    .line 96
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 99
    move-result v2

    .line 100
    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 103
    move-result p1

    .line 104
    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/NavigationBarView;->setItemIconSize(I)V

    .line 107
    sget p1, Lmiuix/navigator/R$styleable;->MiuixNavigationBarView_miuixItemTextAppearance:I

    .line 109
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 112
    move-result v2

    .line 113
    const/4 v3, 0x0

    .line 114
    if-eqz v2, :cond_7a

    .line 116
    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 119
    move-result p1

    .line 120
    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/NavigationBarView;->setItemTextAppearance(I)V

    .line 123
    :cond_7a
    sget p1, Lmiuix/navigator/R$styleable;->MiuixNavigationBarView_miuixItemTextColor:I

    .line 125
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_89

    .line 131
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/NavigationBarView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 138
    :cond_89
    sget p1, Lmiuix/navigator/R$styleable;->MiuixNavigationBarView_miuixItemPaddingTop:I

    .line 140
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 143
    move-result v2

    .line 144
    if-eqz v2, :cond_98

    .line 146
    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 149
    move-result p1

    .line 150
    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/NavigationBarView;->setItemPaddingTop(I)V

    .line 153
    :cond_98
    sget p1, Lmiuix/navigator/R$styleable;->MiuixNavigationBarView_miuixItemPaddingBottom:I

    .line 155
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 158
    move-result v2

    .line 159
    if-eqz v2, :cond_a7

    .line 161
    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 164
    move-result p1

    .line 165
    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/NavigationBarView;->setItemPaddingBottom(I)V

    .line 168
    :cond_a7
    sget p1, Lmiuix/navigator/R$styleable;->MiuixNavigationBarView_elevation:I

    .line 170
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 173
    move-result v2

    .line 174
    if-eqz v2, :cond_b7

    .line 176
    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 179
    move-result p1

    .line 180
    int-to-float p1, p1

    .line 181
    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    .line 184
    :cond_b7
    sget p1, Lmiuix/navigator/R$styleable;->MiuixNavigationBarView_miuixLabelVisibilityMode:I

    .line 186
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 189
    move-result p1

    .line 190
    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/NavigationBarView;->setLabelVisibilityMode(I)V

    .line 193
    sget p1, Lmiuix/navigator/R$styleable;->MiuixNavigationBarView_miuixLayoutStyle:I

    .line 195
    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 198
    move-result p1

    .line 199
    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/NavigationBarView;->setLayoutStyle(I)V

    .line 202
    sget p1, Lmiuix/navigator/R$styleable;->MiuixNavigationBarView_miuixItemBackground:I

    .line 204
    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 207
    move-result p1

    .line 208
    if-eqz p1, :cond_d5

    .line 210
    invoke-virtual {p4, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->setItemBackgroundRes(I)V

    .line 213
    goto :goto_de

    .line 214
    :cond_d5
    sget p1, Lmiuix/navigator/R$styleable;->MiuixNavigationBarView_itemTouchColor:I

    .line 216
    invoke-static {v0, p2, p1}, Lmiuix/internal/util/MiuixResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 219
    move-result-object p1

    .line 220
    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/NavigationBarView;->setItemTouchColor(Landroid/content/res/ColorStateList;)V

    .line 223
    :goto_de
    sget p1, Lmiuix/navigator/R$styleable;->MiuixNavigationBarView_menu:I

    .line 225
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 228
    move-result v0

    .line 229
    if-eqz v0, :cond_ed

    .line 231
    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 234
    move-result p1

    .line 235
    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/NavigationBarView;->inflateMenu(I)V

    .line 238
    :cond_ed
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 241
    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 244
    new-instance p1, Lmiuix/navigator/navigation/NavigationBarView$1;

    .line 246
    invoke-direct {p1, p0}, Lmiuix/navigator/navigation/NavigationBarView$1;-><init>(Lmiuix/navigator/navigation/NavigationBarView;)V

    .line 249
    invoke-virtual {p3, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;->setCallback(Lmiuix/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 252
    return-void
.end method

.method public static synthetic access$000(Lmiuix/navigator/navigation/NavigationBarView;)Lmiuix/navigator/navigation/NavigationBarView$OnItemReselectedListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/navigator/navigation/NavigationBarView;->reselectedListener:Lmiuix/navigator/navigation/NavigationBarView$OnItemReselectedListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/navigator/navigation/NavigationBarView;)Lmiuix/navigator/navigation/NavigationBarView$OnItemSelectedListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/navigator/navigation/NavigationBarView;->selectedListener:Lmiuix/navigator/navigation/NavigationBarView$OnItemSelectedListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/navigator/navigation/NavigationBarView;)Lmiuix/navigator/navigation/NavigationBarMenuView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 3
    return-object p0
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuInflater:Landroid/view/MenuInflater;

    .line 3
    if-nez v0, :cond_f

    .line 5
    new-instance v0, Lmiuix/navigator/navigation/NavigationMenuInflater;

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lmiuix/navigator/navigation/NavigationMenuInflater;-><init>(Landroid/content/Context;)V

    .line 14
    iput-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuInflater:Landroid/view/MenuInflater;

    .line 16
    :cond_f
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuInflater:Landroid/view/MenuInflater;

    .line 18
    return-object v0
.end method


# virtual methods
.method public abstract createNavigationBarMenuView(Landroid/content/Context;)Lmiuix/navigator/navigation/NavigationBarMenuView;
.end method

.method public getItemActiveIndicatorColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getItemActiveIndicatorColor()Landroid/content/res/ColorStateList;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getItemActiveIndicatorHeight()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getItemActiveIndicatorHeight()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemActiveIndicatorMarginHorizontal()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getItemActiveIndicatorMarginHorizontal()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemActiveIndicatorWidth()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getItemActiveIndicatorWidth()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getItemBackground()Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getItemBackgroundResource()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getItemBackgroundRes()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemIconSize()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getItemIconSize()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getIconTintList()Landroid/content/res/ColorStateList;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getItemPaddingBottom()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getItemPaddingBottom()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemPaddingTop()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getItemPaddingTop()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemTextAppearance()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getItemTextAppearance()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getItemTextColor()Landroid/content/res/ColorStateList;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getLabelVisibilityMode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getLabelVisibilityMode()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getLayoutStyle()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getLayoutStyle()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public abstract getMaxItemCount()I
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menu:Lmiuix/navigator/navigation/NavigationBarMenu;

    .line 3
    return-object v0
.end method

.method public getMenuView()Lmiuix/appcompat/view/menu/MenuView;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 3
    return-object v0
.end method

.method public getMinHeightDp()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->mMinHeightDp:I

    .line 3
    return v0
.end method

.method public getMinHeightDpInWideStyle()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->mMinHeightDpInWideStyle:I

    .line 3
    return v0
.end method

.method public getMinHeightInWideStyle()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->mMinHeightInWideStyle:I

    .line 3
    return v0
.end method

.method public getPresenter()Lmiuix/navigator/navigation/NavigationBarPresenter;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->presenter:Lmiuix/navigator/navigation/NavigationBarPresenter;

    .line 3
    return-object v0
.end method

.method public getSelectedItemId()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getSelectedItemId()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getView()Landroid/view/View;
    .registers 1

    return-object p0
.end method

.method public hide(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lmiuix/navigator/navigation/NavigationBarView;->hide(ZZ)V

    return-void
.end method

.method public hide(ZZ)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_56

    .line 2
    new-instance p2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v2, -0x2

    const/4 v3, 0x2

    new-array v3, v3, [F

    .line 3
    fill-array-data v3, :array_82

    invoke-virtual {p2, v2, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    if-eqz p1, :cond_2b

    new-array p1, v1, [Landroid/view/View;

    .line 4
    iget-object v2, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    aput-object v2, p1, v0

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object p1

    new-array v2, v1, [Lmiuix/animation/base/AnimConfig;

    aput-object p2, v2, v0

    invoke-interface {p1, v2}, Lmiuix/animation/IVisibleStyle;->hide([Lmiuix/animation/base/AnimConfig;)V

    goto :goto_4a

    :cond_2b
    new-array p1, v1, [Lmiuix/animation/listener/TransitionListener;

    .line 5
    new-instance v2, Lmiuix/navigator/navigation/NavigationBarView$3;

    invoke-direct {v2, p0}, Lmiuix/navigator/navigation/NavigationBarView$3;-><init>(Lmiuix/navigator/navigation/NavigationBarView;)V

    aput-object v2, p1, v0

    invoke-virtual {p2, p1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    new-array p1, v1, [Landroid/view/View;

    aput-object p0, p1, v0

    .line 6
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object p1

    new-array v2, v1, [Lmiuix/animation/base/AnimConfig;

    aput-object p2, v2, v0

    invoke-interface {p1, v2}, Lmiuix/animation/IVisibleStyle;->hide([Lmiuix/animation/base/AnimConfig;)V

    .line 7
    :goto_4a
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteRom()Z

    move-result p1

    if-nez p1, :cond_81

    .line 8
    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {p1, v1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->hideItem(Z)V

    goto :goto_81

    :cond_56
    const/16 p2, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_6f

    new-array p1, v1, [Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 9
    iget-object v1, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    aput-object v1, p1, v0

    invoke-static {p1}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 11
    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_81

    :cond_6f
    new-array p1, v1, [Lmiuix/navigator/navigation/NavigationBarView;

    aput-object p0, p1, v0

    .line 12
    invoke-static {p1}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 14
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {p1, v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->hideItem(Z)V

    :cond_81
    :goto_81
    return-void

    :array_82
    .array-data 4
        0x3f800000  # 1.0f
        0x3e4ccccd  # 0.2f
    .end array-data
.end method

.method public inflateMenu(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->presenter:Lmiuix/navigator/navigation/NavigationBarPresenter;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lmiuix/navigator/navigation/NavigationBarPresenter;->setUpdateSuspended(Z)V

    .line 7
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarView;->getMenuInflater()Landroid/view/MenuInflater;

    .line 10
    move-result-object v0

    .line 11
    iget-object v2, p0, Lmiuix/navigator/navigation/NavigationBarView;->menu:Lmiuix/navigator/navigation/NavigationBarMenu;

    .line 13
    invoke-virtual {v0, p1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 16
    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarView;->presenter:Lmiuix/navigator/navigation/NavigationBarPresenter;

    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Lmiuix/navigator/navigation/NavigationBarPresenter;->setUpdateSuspended(Z)V

    .line 22
    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarView;->presenter:Lmiuix/navigator/navigation/NavigationBarPresenter;

    .line 24
    invoke-virtual {p1, v1}, Lmiuix/navigator/navigation/NavigationBarPresenter;->updateMenuView(Z)V

    .line 27
    return-void
.end method

.method public isItemActiveIndicatorEnabled()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getItemActiveIndicatorEnabled()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 1
    instance-of v0, p1, Lmiuix/navigator/navigation/NavigationBarView$SavedState;

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 8
    return-void

    .line 9
    :cond_8
    check-cast p1, Lmiuix/navigator/navigation/NavigationBarView$SavedState;

    .line 11
    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 14
    move-result-object v0

    .line 15
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 18
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menu:Lmiuix/navigator/navigation/NavigationBarMenu;

    .line 20
    iget-object p1, p1, Lmiuix/navigator/navigation/NavigationBarView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    .line 22
    invoke-virtual {v0, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;->restorePresenterStates(Landroid/os/Bundle;)V

    .line 25
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lmiuix/navigator/navigation/NavigationBarView$SavedState;

    .line 7
    invoke-direct {v1, v0}, Lmiuix/navigator/navigation/NavigationBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 10
    new-instance v0, Landroid/os/Bundle;

    .line 12
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 15
    iput-object v0, v1, Lmiuix/navigator/navigation/NavigationBarView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    .line 17
    iget-object v2, p0, Lmiuix/navigator/navigation/NavigationBarView;->menu:Lmiuix/navigator/navigation/NavigationBarMenu;

    .line 19
    invoke-virtual {v2, v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->savePresenterStates(Landroid/os/Bundle;)V

    .line 22
    return-object v1
.end method

.method public setItemActiveIndicatorColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->setItemActiveIndicatorColor(Landroid/content/res/ColorStateList;)V

    .line 6
    return-void
.end method

.method public setItemActiveIndicatorEnabled(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->setItemActiveIndicatorEnabled(Z)V

    .line 6
    return-void
.end method

.method public setItemActiveIndicatorHeight(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->setItemActiveIndicatorHeight(I)V

    .line 6
    return-void
.end method

.method public setItemActiveIndicatorMarginHorizontal(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->setItemActiveIndicatorMarginHorizontal(I)V

    .line 6
    return-void
.end method

.method public setItemActiveIndicatorWidth(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->setItemActiveIndicatorWidth(I)V

    .line 6
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 6
    return-void
.end method

.method public setItemBackgroundResource(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->setItemBackgroundRes(I)V

    .line 6
    return-void
.end method

.method public setItemIconSize(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->setItemIconSize(I)V

    .line 6
    return-void
.end method

.method public setItemIconSizeRes(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/NavigationBarView;->setItemIconSize(I)V

    .line 12
    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 6
    return-void
.end method

.method public setItemOnTouchListener(ILandroid/view/View$OnTouchListener;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 3
    invoke-virtual {v0, p1, p2}, Lmiuix/navigator/navigation/NavigationBarMenuView;->setItemOnTouchListener(ILandroid/view/View$OnTouchListener;)V

    .line 6
    return-void
.end method

.method public setItemPaddingBottom(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->setItemPaddingBottom(I)V

    .line 6
    return-void
.end method

.method public setItemPaddingTop(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->setItemPaddingTop(I)V

    .line 6
    return-void
.end method

.method public setItemTextAppearance(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->setItemTextAppearance(I)V

    .line 6
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 6
    return-void
.end method

.method public setItemTouchColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->setItemTouchColor(Landroid/content/res/ColorStateList;)V

    .line 6
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getLabelVisibilityMode()I

    .line 6
    move-result v0

    .line 7
    if-eq v0, p1, :cond_13

    .line 9
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 11
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->setLabelVisibilityMode(I)V

    .line 14
    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarView;->presenter:Lmiuix/navigator/navigation/NavigationBarPresenter;

    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0}, Lmiuix/navigator/navigation/NavigationBarPresenter;->updateMenuView(Z)V

    .line 20
    :cond_13
    return-void
.end method

.method public setLayoutStyle(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getLayoutStyle()I

    .line 6
    move-result v0

    .line 7
    if-eq v0, p1, :cond_13

    .line 9
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 11
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->setLayoutStyle(I)V

    .line 14
    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarView;->presenter:Lmiuix/navigator/navigation/NavigationBarPresenter;

    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0}, Lmiuix/navigator/navigation/NavigationBarPresenter;->updateMenuView(Z)V

    .line 20
    :cond_13
    return-void
.end method

.method public setMinHeightDp(I)V
    .registers 3

    .line 1
    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarView;->mMinHeightDp:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 14
    move-result-object p1

    .line 15
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 17
    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->mMinHeightDp:I

    .line 19
    int-to-float v0, v0

    .line 20
    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(FF)I

    .line 23
    move-result p1

    .line 24
    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 27
    return-void
.end method

.method public setMinHeightDpInWideStyle(I)V
    .registers 3

    .line 1
    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarView;->mMinHeightDpInWideStyle:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 14
    move-result-object p1

    .line 15
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 17
    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->mMinHeightDpInWideStyle:I

    .line 19
    int-to-float v0, v0

    .line 20
    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(FF)I

    .line 23
    move-result p1

    .line 24
    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarView;->mMinHeightInWideStyle:I

    .line 26
    return-void
.end method

.method public setOnItemReselectedListener(Lmiuix/navigator/navigation/NavigationBarView$OnItemReselectedListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarView;->reselectedListener:Lmiuix/navigator/navigation/NavigationBarView$OnItemReselectedListener;

    .line 3
    return-void
.end method

.method public setOnItemSelectedListener(Lmiuix/navigator/navigation/NavigationBarView$OnItemSelectedListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarView;->selectedListener:Lmiuix/navigator/navigation/NavigationBarView$OnItemSelectedListener;

    .line 3
    return-void
.end method

.method public setSelectedItemId(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menu:Lmiuix/navigator/navigation/NavigationBarMenu;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_17

    .line 9
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView;->menu:Lmiuix/navigator/navigation/NavigationBarMenu;

    .line 11
    iget-object v1, p0, Lmiuix/navigator/navigation/NavigationBarView;->presenter:Lmiuix/navigator/navigation/NavigationBarPresenter;

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, p1, v1, v2}, Lmiuix/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Lmiuix/appcompat/view/menu/MenuPresenter;I)Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_17

    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 24
    :cond_17
    return-void
.end method

.method public show()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lmiuix/navigator/navigation/NavigationBarView;->show(Z)V

    return-void
.end method

.method public show(Z)V
    .registers 7

    const/high16 v0, 0x3f800000  # 1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_76

    .line 2
    new-instance p1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v3, -0x2

    const/4 v4, 0x2

    new-array v4, v4, [F

    .line 3
    fill-array-data v4, :array_9c

    invoke-virtual {p1, v3, v4}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    const-wide/16 v3, 0x32

    .line 4
    invoke-virtual {p1, v3, v4}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v3

    cmpl-float v3, v3, v0

    if-nez v3, :cond_38

    new-array v0, v1, [Landroid/view/View;

    .line 6
    iget-object v3, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    aput-object v3, v0, v2

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    new-array v3, v1, [Lmiuix/animation/base/AnimConfig;

    aput-object p1, v3, v2

    invoke-interface {v0, v3}, Lmiuix/animation/IVisibleStyle;->show([Lmiuix/animation/base/AnimConfig;)V

    goto :goto_6a

    .line 7
    :cond_38
    iget-object v3, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_57

    new-array v0, v1, [Landroid/view/View;

    .line 8
    iget-object v3, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    aput-object v3, v0, v2

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    new-array v3, v1, [Lmiuix/animation/base/AnimConfig;

    aput-object p1, v3, v2

    invoke-interface {v0, v3}, Lmiuix/animation/IVisibleStyle;->show([Lmiuix/animation/base/AnimConfig;)V

    :cond_57
    new-array v0, v1, [Landroid/view/View;

    aput-object p0, v0, v2

    .line 9
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    new-array v3, v1, [Lmiuix/animation/base/AnimConfig;

    aput-object p1, v3, v2

    invoke-interface {v0, v3}, Lmiuix/animation/IVisibleStyle;->show([Lmiuix/animation/base/AnimConfig;)V

    .line 10
    :goto_6a
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteRom()Z

    move-result p1

    if-nez p1, :cond_8d

    .line 11
    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {p1, v1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->showItem(Z)V

    goto :goto_8d

    :cond_76
    new-array p1, v1, [Lmiuix/navigator/navigation/NavigationBarView;

    aput-object p0, p1, v2

    .line 12
    invoke-static {p1}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 14
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 16
    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {p1, v2}, Lmiuix/navigator/navigation/NavigationBarMenuView;->showItem(Z)V

    .line 17
    :cond_8d
    :goto_8d
    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarView;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    new-instance p1, Lmiuix/navigator/navigation/NavigationBarView$2;

    invoke-direct {p1, p0}, Lmiuix/navigator/navigation/NavigationBarView$2;-><init>(Lmiuix/navigator/navigation/NavigationBarView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :array_9c
    .array-data 4
        0x3f733333  # 0.95f
        0x3e99999a  # 0.3f
    .end array-data
.end method
