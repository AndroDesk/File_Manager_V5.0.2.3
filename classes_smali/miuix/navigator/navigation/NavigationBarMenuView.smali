.class public abstract Lmiuix/navigator/navigation/NavigationBarMenuView;
.super Landroid/view/ViewGroup;
.source "NavigationBarMenuView.java"

# interfaces
.implements Lmiuix/appcompat/view/menu/MenuView;


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final DISABLED_STATE_SET:[I

.field private static final ITEM_POOL_SIZE:I = 0x5

.field private static final NO_PADDING:I = -0x1


# instance fields
.field private buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

.field private itemActiveIndicatorColor:Landroid/content/res/ColorStateList;

.field private itemActiveIndicatorEnabled:Z

.field private itemActiveIndicatorHeight:I

.field private itemActiveIndicatorMarginHorizontal:I

.field private itemActiveIndicatorResizeable:Z

.field private itemActiveIndicatorWidth:I

.field private itemBackground:Landroid/graphics/drawable/Drawable;

.field private itemBackgroundRes:I

.field private itemIconSize:I

.field private itemIconTint:Landroid/content/res/ColorStateList;

.field private itemPaddingBottom:I

.field private itemPaddingTop:I

.field private final itemPool:Ll0/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll0/d<",
            "Lmiuix/navigator/navigation/NavigationBarItemView;",
            ">;"
        }
    .end annotation
.end field

.field private itemTextAppearance:I

.field private final itemTextColorDefault:Landroid/content/res/ColorStateList;

.field private itemTextColorFromUser:Landroid/content/res/ColorStateList;

.field private itemTouchColor:Landroid/content/res/ColorStateList;

.field private labelVisibilityMode:I

.field private layoutStyle:I

.field private menu:Lmiuix/appcompat/view/menu/MenuBuilder;

.field private final onClickListener:Landroid/view/View$OnClickListener;

.field private final onTouchListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View$OnTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private presenter:Lmiuix/navigator/navigation/NavigationBarPresenter;

.field private selectedItemId:I

.field private selectedItemPosition:I


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [I

    .line 4
    const v2, 0x10100a0

    .line 7
    const/4 v3, 0x0

    .line 8
    aput v2, v1, v3

    .line 10
    sput-object v1, Lmiuix/navigator/navigation/NavigationBarMenuView;->CHECKED_STATE_SET:[I

    .line 12
    new-array v0, v0, [I

    .line 14
    const v1, -0x101009e

    .line 17
    aput v1, v0, v3

    .line 19
    sput-object v0, Lmiuix/navigator/navigation/NavigationBarMenuView;->DISABLED_STATE_SET:[I

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance p1, Ll0/e;

    .line 6
    const/4 v0, 0x5

    .line 7
    invoke-direct {p1, v0}, Ll0/e;-><init>(I)V

    .line 10
    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemPool:Ll0/d;

    .line 12
    new-instance p1, Landroid/util/SparseArray;

    .line 14
    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 17
    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->onTouchListeners:Landroid/util/SparseArray;

    .line 19
    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->selectedItemId:I

    .line 22
    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->selectedItemPosition:I

    .line 24
    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemPaddingTop:I

    .line 27
    iput v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemPaddingBottom:I

    .line 29
    iput-boolean p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemActiveIndicatorResizeable:Z

    .line 31
    const p1, 0x1010038

    .line 34
    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemTextColorDefault:Landroid/content/res/ColorStateList;

    .line 40
    new-instance p1, Lmiuix/navigator/navigation/NavigationBarMenuView$1;

    .line 42
    invoke-direct {p1, p0}, Lmiuix/navigator/navigation/NavigationBarMenuView$1;-><init>(Lmiuix/navigator/navigation/NavigationBarMenuView;)V

    .line 45
    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 47
    sget-object p1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 49
    const/4 p1, 0x1

    .line 50
    invoke-static {p0, p1}, Lm0/g0$d;->s(Landroid/view/View;I)V

    .line 53
    return-void
.end method

.method public static synthetic access$000(Lmiuix/navigator/navigation/NavigationBarMenuView;)Lmiuix/navigator/navigation/NavigationBarPresenter;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->presenter:Lmiuix/navigator/navigation/NavigationBarPresenter;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/navigator/navigation/NavigationBarMenuView;)Lmiuix/appcompat/view/menu/MenuBuilder;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->menu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 3
    return-object p0
.end method

.method private createItemActiveIndicatorDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method private getNewItem()Lmiuix/navigator/navigation/NavigationBarItemView;
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemPool:Ll0/d;

    .line 3
    invoke-interface {v0}, Ll0/d;->acquire()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/navigator/navigation/NavigationBarItemView;

    .line 9
    if-nez v0, :cond_13

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->createNavigationBarItemView(Landroid/content/Context;)Lmiuix/navigator/navigation/NavigationBarItemView;

    .line 18
    move-result-object v0

    .line 19
    goto :goto_27

    .line 20
    :cond_13
    invoke-virtual {v0}, Lmiuix/navigator/navigation/NavigationBarItemView;->getLayoutStyle()I

    .line 23
    move-result v1

    .line 24
    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getLayoutStyle()I

    .line 27
    move-result v2

    .line 28
    if-eq v1, v2, :cond_27

    .line 30
    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getLayoutStyle()I

    .line 33
    move-result v1

    .line 34
    invoke-virtual {v0, v1}, Lmiuix/navigator/navigation/NavigationBarItemView;->setLayoutStyle(I)V

    .line 37
    invoke-virtual {v0}, Lmiuix/navigator/navigation/NavigationBarItemView;->updateLayout()V

    .line 40
    :cond_27
    :goto_27
    return-object v0
.end method

.method private isValidId(I)Z
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    const/4 p1, 0x1

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    :goto_6
    return p1
.end method

.method private validateMenuItemId(I)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->isValidId(I)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    const-string p1, " is not a valid view id"

    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    throw v0
.end method


# virtual methods
.method public buildMenuView()V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_1b

    .line 9
    array-length v2, v0

    .line 10
    move v3, v1

    .line 11
    :goto_a
    if-ge v3, v2, :cond_1b

    .line 13
    aget-object v4, v0, v3

    .line 15
    if-eqz v4, :cond_18

    .line 17
    iget-object v5, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemPool:Ll0/d;

    .line 19
    invoke-interface {v5, v4}, Ll0/d;->release(Ljava/lang/Object;)Z

    .line 22
    invoke-virtual {v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->clear()V

    .line 25
    :cond_18
    add-int/lit8 v3, v3, 0x1

    .line 27
    goto :goto_a

    .line 28
    :cond_1b
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->menu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 30
    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->size()I

    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_2b

    .line 36
    iput v1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->selectedItemId:I

    .line 38
    iput v1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->selectedItemPosition:I

    .line 40
    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    .line 43
    return-void

    .line 44
    :cond_2b
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->menu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 46
    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->size()I

    .line 49
    move-result v0

    .line 50
    new-array v0, v0, [Lmiuix/navigator/navigation/NavigationBarItemView;

    .line 52
    iput-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    .line 54
    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->labelVisibilityMode:I

    .line 56
    iget-object v2, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->menu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 58
    invoke-virtual {v2}, Lmiuix/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 65
    move-result v2

    .line 66
    invoke-virtual {p0, v0, v2}, Lmiuix/navigator/navigation/NavigationBarMenuView;->isShifting(II)Z

    .line 69
    move-result v0

    .line 70
    move v2, v1

    .line 71
    :goto_46
    iget-object v3, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->menu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 73
    invoke-virtual {v3}, Lmiuix/appcompat/view/menu/MenuBuilder;->size()I

    .line 76
    move-result v3

    .line 77
    const/4 v4, 0x1

    .line 78
    if-ge v2, v3, :cond_fd

    .line 80
    iget-object v3, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->presenter:Lmiuix/navigator/navigation/NavigationBarPresenter;

    .line 82
    invoke-virtual {v3, v4}, Lmiuix/navigator/navigation/NavigationBarPresenter;->setUpdateSuspended(Z)V

    .line 85
    iget-object v3, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->menu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 87
    invoke-virtual {v3, v2}, Lmiuix/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 90
    move-result-object v3

    .line 91
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 94
    iget-object v3, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->presenter:Lmiuix/navigator/navigation/NavigationBarPresenter;

    .line 96
    invoke-virtual {v3, v1}, Lmiuix/navigator/navigation/NavigationBarPresenter;->setUpdateSuspended(Z)V

    .line 99
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getNewItem()Lmiuix/navigator/navigation/NavigationBarItemView;

    .line 102
    move-result-object v3

    .line 103
    iget-object v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    .line 105
    aput-object v3, v4, v2

    .line 107
    iget-object v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    .line 109
    invoke-virtual {v3, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 112
    iget v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemIconSize:I

    .line 114
    invoke-virtual {v3, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setIconSize(I)V

    .line 117
    iget-object v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemTextColorDefault:Landroid/content/res/ColorStateList;

    .line 119
    invoke-virtual {v3, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 122
    iget v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemTextAppearance:I

    .line 124
    invoke-virtual {v3, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setTextAppearance(I)V

    .line 127
    iget-object v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    .line 129
    invoke-virtual {v3, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 132
    iget v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemPaddingTop:I

    .line 134
    const/4 v5, -0x1

    .line 135
    if-eq v4, v5, :cond_8b

    .line 137
    invoke-virtual {v3, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setItemPaddingTop(I)V

    .line 140
    :cond_8b
    iget v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemPaddingBottom:I

    .line 142
    if-eq v4, v5, :cond_92

    .line 144
    invoke-virtual {v3, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setItemPaddingBottom(I)V

    .line 147
    :cond_92
    iget v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemActiveIndicatorWidth:I

    .line 149
    invoke-virtual {v3, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setActiveIndicatorWidth(I)V

    .line 152
    iget v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemActiveIndicatorHeight:I

    .line 154
    invoke-virtual {v3, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setActiveIndicatorHeight(I)V

    .line 157
    iget v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemActiveIndicatorMarginHorizontal:I

    .line 159
    invoke-virtual {v3, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setActiveIndicatorMarginHorizontal(I)V

    .line 162
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->createItemActiveIndicatorDrawable()Landroid/graphics/drawable/Drawable;

    .line 165
    move-result-object v4

    .line 166
    invoke-virtual {v3, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setActiveIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    iget-boolean v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemActiveIndicatorResizeable:Z

    .line 171
    invoke-virtual {v3, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setActiveIndicatorResizeable(Z)V

    .line 174
    iget-boolean v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemActiveIndicatorEnabled:Z

    .line 176
    invoke-virtual {v3, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setActiveIndicatorEnabled(Z)V

    .line 179
    iget-object v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemBackground:Landroid/graphics/drawable/Drawable;

    .line 181
    if-eqz v4, :cond_ba

    .line 183
    invoke-virtual {v3, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 186
    goto :goto_bf

    .line 187
    :cond_ba
    iget v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemBackgroundRes:I

    .line 189
    invoke-virtual {v3, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setItemBackground(I)V

    .line 192
    :goto_bf
    iget-object v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemTouchColor:Landroid/content/res/ColorStateList;

    .line 194
    invoke-virtual {v3, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setItemTouchColor(Landroid/content/res/ColorStateList;)V

    .line 197
    invoke-virtual {v3, v0}, Lmiuix/navigator/navigation/NavigationBarItemView;->setShifting(Z)V

    .line 200
    iget v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->labelVisibilityMode:I

    .line 202
    invoke-virtual {v3, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setLabelVisibilityMode(I)V

    .line 205
    iget-object v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->menu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 207
    invoke-virtual {v4, v2}, Lmiuix/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 210
    move-result-object v4

    .line 211
    check-cast v4, Lmiuix/appcompat/view/menu/MenuItemImpl;

    .line 213
    invoke-virtual {v3, v4, v1}, Lmiuix/navigator/navigation/NavigationBarItemView;->initialize(Lmiuix/appcompat/view/menu/MenuItemImpl;I)V

    .line 216
    invoke-virtual {v3, v2}, Lmiuix/navigator/navigation/NavigationBarItemView;->setItemPosition(I)V

    .line 219
    invoke-virtual {v4}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getItemId()I

    .line 222
    move-result v4

    .line 223
    iget-object v5, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->onTouchListeners:Landroid/util/SparseArray;

    .line 225
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 228
    move-result-object v5

    .line 229
    check-cast v5, Landroid/view/View$OnTouchListener;

    .line 231
    invoke-virtual {v3, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 234
    iget-object v5, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 236
    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget v5, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->selectedItemId:I

    .line 241
    if-eqz v5, :cond_f6

    .line 243
    if-ne v4, v5, :cond_f6

    .line 245
    iput v2, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->selectedItemPosition:I

    .line 247
    :cond_f6
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 250
    add-int/lit8 v2, v2, 0x1

    .line 252
    goto/16 :goto_46

    .line 254
    :cond_fd
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->menu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 256
    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->size()I

    .line 259
    move-result v0

    .line 260
    sub-int/2addr v0, v4

    .line 261
    iget v1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->selectedItemPosition:I

    .line 263
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 266
    move-result v0

    .line 267
    iput v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->selectedItemPosition:I

    .line 269
    iget-object v1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->menu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 271
    invoke-virtual {v1, v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 274
    move-result-object v0

    .line 275
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 278
    return-void
.end method

.method public createDefaultColorStateList(I)Landroid/content/res/ColorStateList;
    .registers 12

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
    const/4 v2, 0x1

    .line 15
    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 18
    move-result p1

    .line 19
    const/4 v1, 0x0

    .line 20
    if-nez p1, :cond_16

    .line 22
    return-object v1

    .line 23
    :cond_16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    move-result-object p1

    .line 27
    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    .line 29
    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 40
    move-result-object v3

    .line 41
    sget v4, Lh/a;->colorPrimary:I

    .line 43
    invoke-virtual {v3, v4, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_31

    .line 49
    return-object v1

    .line 50
    :cond_31
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 52
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 55
    move-result v1

    .line 56
    new-instance v3, Landroid/content/res/ColorStateList;

    .line 58
    const/4 v4, 0x3

    .line 59
    new-array v5, v4, [[I

    .line 61
    sget-object v6, Lmiuix/navigator/navigation/NavigationBarMenuView;->DISABLED_STATE_SET:[I

    .line 63
    const/4 v7, 0x0

    .line 64
    aput-object v6, v5, v7

    .line 66
    sget-object v8, Lmiuix/navigator/navigation/NavigationBarMenuView;->CHECKED_STATE_SET:[I

    .line 68
    aput-object v8, v5, v2

    .line 70
    sget-object v8, Landroid/view/ViewGroup;->EMPTY_STATE_SET:[I

    .line 72
    const/4 v9, 0x2

    .line 73
    aput-object v8, v5, v9

    .line 75
    new-array v4, v4, [I

    .line 77
    invoke-virtual {p1, v6, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 80
    move-result p1

    .line 81
    aput p1, v4, v7

    .line 83
    aput v0, v4, v2

    .line 85
    aput v1, v4, v9

    .line 87
    invoke-direct {v3, v5, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 90
    return-object v3
.end method

.method public abstract createNavigationBarItemView(Landroid/content/Context;)Lmiuix/navigator/navigation/NavigationBarItemView;
.end method

.method public findItemView(I)Lmiuix/navigator/navigation/NavigationBarItemView;
    .registers 7

    .line 1
    invoke-direct {p0, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->validateMenuItemId(I)V

    .line 4
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    .line 6
    if-eqz v0, :cond_17

    .line 8
    array-length v1, v0

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_9
    if-ge v2, v1, :cond_17

    .line 12
    aget-object v3, v0, v2

    .line 14
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 17
    move-result v4

    .line 18
    if-ne v4, p1, :cond_14

    .line 20
    return-object v3

    .line 21
    :cond_14
    add-int/lit8 v2, v2, 0x1

    .line 23
    goto :goto_9

    .line 24
    :cond_17
    const/4 p1, 0x0

    .line 25
    return-object p1
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public getItemActiveIndicatorColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemActiveIndicatorColor:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public getItemActiveIndicatorEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemActiveIndicatorEnabled:Z

    .line 3
    return v0
.end method

.method public getItemActiveIndicatorHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemActiveIndicatorHeight:I

    .line 3
    return v0
.end method

.method public getItemActiveIndicatorMarginHorizontal()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemActiveIndicatorMarginHorizontal:I

    .line 3
    return v0
.end method

.method public getItemActiveIndicatorWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemActiveIndicatorWidth:I

    .line 3
    return v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    array-length v1, v0

    .line 6
    if-lez v1, :cond_f

    .line 8
    const/4 v1, 0x0

    .line 9
    aget-object v0, v0, v1

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_f
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemBackground:Landroid/graphics/drawable/Drawable;

    .line 18
    return-object v0
.end method

.method public getItemBackgroundRes()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemBackgroundRes:I

    .line 3
    return v0
.end method

.method public getItemIconSize()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemIconSize:I

    .line 3
    return v0
.end method

.method public getItemPaddingBottom()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemPaddingBottom:I

    .line 3
    return v0
.end method

.method public getItemPaddingTop()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemPaddingTop:I

    .line 3
    return v0
.end method

.method public getItemTextAppearance()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemTextAppearance:I

    .line 3
    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public getLabelVisibilityMode()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->labelVisibilityMode:I

    .line 3
    return v0
.end method

.method public getLayoutStyle()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->layoutStyle:I

    .line 3
    return v0
.end method

.method public getMenu()Lmiuix/appcompat/view/menu/MenuBuilder;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->menu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 3
    return-object v0
.end method

.method public getSelectedItemId()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->selectedItemId:I

    .line 3
    return v0
.end method

.method public getSelectedItemPosition()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->selectedItemPosition:I

    .line 3
    return v0
.end method

.method public getWindowAnimations()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hideItem()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->hideItem(Z)V

    return-void
.end method

.method public hideItem(Z)V
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_54

    .line 2
    new-instance p1, Lmiuix/animation/controller/AnimState;

    const-string v1, "navigationBarItemHide"

    invoke-direct {p1, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 3
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 4
    sget-object v2, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    const-wide v3, 0x3fee666660000000L  # 0.949999988079071

    invoke-virtual {p1, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 5
    sget-object v5, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p1, v5, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 6
    new-instance v3, Lmiuix/animation/base/AnimSpecialConfig;

    invoke-direct {v3}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    const/4 v4, -0x2

    const/4 v6, 0x2

    new-array v6, v6, [F

    .line 7
    fill-array-data v6, :array_6a

    invoke-virtual {v3, v4, v6}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 8
    invoke-virtual {v1, v2, v3}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 9
    invoke-virtual {v1, v5, v3}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 10
    iget-object v2, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    if-eqz v2, :cond_69

    .line 11
    array-length v3, v2

    move v4, v0

    :goto_39
    if-ge v4, v3, :cond_69

    aget-object v5, v2, v4

    const/4 v6, 0x1

    new-array v7, v6, [Landroid/view/View;

    aput-object v5, v7, v0

    .line 12
    invoke-static {v7}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v5

    invoke-interface {v5}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v5

    new-array v6, v6, [Lmiuix/animation/base/AnimConfig;

    aput-object v1, v6, v0

    invoke-interface {v5, p1, v6}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 13
    :cond_54
    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    if-eqz p1, :cond_69

    .line 14
    array-length v1, p1

    :goto_59
    if-ge v0, v1, :cond_69

    aget-object v2, p1, v0

    const v3, 0x3f733333  # 0.95f

    .line 15
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 16
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    :cond_69
    return-void

    :array_6a
    .array-data 4
        0x3f733333  # 0.95f
        0x3e19999a  # 0.15f
    .end array-data
.end method

.method public initialize(Lmiuix/appcompat/view/menu/MenuBuilder;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->menu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 3
    return-void
.end method

.method public isItemActiveIndicatorResizeable()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemActiveIndicatorResizeable:Z

    .line 3
    return v0
.end method

.method public isLayoutInWideStyle()Z
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->layoutStyle:I

    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-lez v0, :cond_7

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v1, 0x0

    .line 9
    :goto_8
    return v1
.end method

.method public isShifting(II)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_9

    const/4 p1, 0x3

    if-le p2, p1, :cond_c

    goto :goto_d

    :cond_9
    if-nez p1, :cond_c

    goto :goto_d

    :cond_c
    move v0, v1

    :goto_d
    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->menu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 6
    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-static {v2, v0, v2, v1}, Ln0/c$c;->a(IIIZ)Ln0/c$c;

    .line 19
    move-result-object v0

    .line 20
    iget-object v0, v0, Ln0/c$c;->a:Ljava/lang/Object;

    .line 22
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 27
    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    .line 3
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    .line 5
    if-eqz v0, :cond_12

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_8
    if-ge v2, v1, :cond_12

    .line 11
    aget-object v3, v0, v2

    .line 13
    invoke-virtual {v3, p1}, Lmiuix/navigator/navigation/NavigationBarItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_8

    .line 19
    :cond_12
    return-void
.end method

.method public setItemActiveIndicatorColor(Landroid/content/res/ColorStateList;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemActiveIndicatorColor:Landroid/content/res/ColorStateList;

    .line 3
    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    .line 5
    if-eqz p1, :cond_16

    .line 7
    array-length v0, p1

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_8
    if-ge v1, v0, :cond_16

    .line 11
    aget-object v2, p1, v1

    .line 13
    invoke-direct {p0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->createItemActiveIndicatorDrawable()Landroid/graphics/drawable/Drawable;

    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v2, v3}, Lmiuix/navigator/navigation/NavigationBarItemView;->setActiveIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 22
    goto :goto_8

    .line 23
    :cond_16
    return-void
.end method

.method public setItemActiveIndicatorEnabled(Z)V
    .registers 6

    .line 1
    iput-boolean p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemActiveIndicatorEnabled:Z

    .line 3
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    .line 5
    if-eqz v0, :cond_12

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_8
    if-ge v2, v1, :cond_12

    .line 11
    aget-object v3, v0, v2

    .line 13
    invoke-virtual {v3, p1}, Lmiuix/navigator/navigation/NavigationBarItemView;->setActiveIndicatorEnabled(Z)V

    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_8

    .line 19
    :cond_12
    return-void
.end method

.method public setItemActiveIndicatorHeight(I)V
    .registers 6

    .line 1
    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemActiveIndicatorHeight:I

    .line 3
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    .line 5
    if-eqz v0, :cond_12

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_8
    if-ge v2, v1, :cond_12

    .line 11
    aget-object v3, v0, v2

    .line 13
    invoke-virtual {v3, p1}, Lmiuix/navigator/navigation/NavigationBarItemView;->setActiveIndicatorHeight(I)V

    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_8

    .line 19
    :cond_12
    return-void
.end method

.method public setItemActiveIndicatorMarginHorizontal(I)V
    .registers 6

    .line 1
    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemActiveIndicatorMarginHorizontal:I

    .line 3
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    .line 5
    if-eqz v0, :cond_12

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_8
    if-ge v2, v1, :cond_12

    .line 11
    aget-object v3, v0, v2

    .line 13
    invoke-virtual {v3, p1}, Lmiuix/navigator/navigation/NavigationBarItemView;->setActiveIndicatorMarginHorizontal(I)V

    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_8

    .line 19
    :cond_12
    return-void
.end method

.method public setItemActiveIndicatorResizeable(Z)V
    .registers 6

    .line 1
    iput-boolean p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemActiveIndicatorResizeable:Z

    .line 3
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    .line 5
    if-eqz v0, :cond_12

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_8
    if-ge v2, v1, :cond_12

    .line 11
    aget-object v3, v0, v2

    .line 13
    invoke-virtual {v3, p1}, Lmiuix/navigator/navigation/NavigationBarItemView;->setActiveIndicatorResizeable(Z)V

    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_8

    .line 19
    :cond_12
    return-void
.end method

.method public setItemActiveIndicatorWidth(I)V
    .registers 6

    .line 1
    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemActiveIndicatorWidth:I

    .line 3
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    .line 5
    if-eqz v0, :cond_12

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_8
    if-ge v2, v1, :cond_12

    .line 11
    aget-object v3, v0, v2

    .line 13
    invoke-virtual {v3, p1}, Lmiuix/navigator/navigation/NavigationBarItemView;->setActiveIndicatorWidth(I)V

    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_8

    .line 19
    :cond_12
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemBackground:Landroid/graphics/drawable/Drawable;

    .line 3
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    .line 5
    if-eqz v0, :cond_12

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_8
    if-ge v2, v1, :cond_12

    .line 11
    aget-object v3, v0, v2

    .line 13
    invoke-virtual {v3, p1}, Lmiuix/navigator/navigation/NavigationBarItemView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_8

    .line 19
    :cond_12
    return-void
.end method

.method public setItemBackgroundRes(I)V
    .registers 6

    .line 1
    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemBackgroundRes:I

    .line 3
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    .line 5
    if-eqz v0, :cond_12

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_8
    if-ge v2, v1, :cond_12

    .line 11
    aget-object v3, v0, v2

    .line 13
    invoke-virtual {v3, p1}, Lmiuix/navigator/navigation/NavigationBarItemView;->setItemBackground(I)V

    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_8

    .line 19
    :cond_12
    return-void
.end method

.method public setItemIconSize(I)V
    .registers 6

    .line 1
    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemIconSize:I

    .line 3
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    .line 5
    if-eqz v0, :cond_12

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_8
    if-ge v2, v1, :cond_12

    .line 11
    aget-object v3, v0, v2

    .line 13
    invoke-virtual {v3, p1}, Lmiuix/navigator/navigation/NavigationBarItemView;->setIconSize(I)V

    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_8

    .line 19
    :cond_12
    return-void
.end method

.method public setItemOnTouchListener(ILandroid/view/View$OnTouchListener;)V
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_8

    .line 3
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->onTouchListeners:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 8
    goto :goto_d

    .line 9
    :cond_8
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->onTouchListeners:Landroid/util/SparseArray;

    .line 11
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 14
    :goto_d
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    .line 16
    if-eqz v0, :cond_27

    .line 18
    array-length v1, v0

    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_13
    if-ge v2, v1, :cond_27

    .line 22
    aget-object v3, v0, v2

    .line 24
    invoke-virtual {v3}, Lmiuix/navigator/navigation/NavigationBarItemView;->getItemData()Lmiuix/appcompat/view/menu/MenuItemImpl;

    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v4}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getItemId()I

    .line 31
    move-result v4

    .line 32
    if-ne v4, p1, :cond_24

    .line 34
    invoke-virtual {v3, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 37
    :cond_24
    add-int/lit8 v2, v2, 0x1

    .line 39
    goto :goto_13

    .line 40
    :cond_27
    return-void
.end method

.method public setItemPaddingBottom(I)V
    .registers 6

    .line 1
    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemPaddingBottom:I

    .line 3
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    .line 5
    if-eqz v0, :cond_12

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_8
    if-ge v2, v1, :cond_12

    .line 11
    aget-object v3, v0, v2

    .line 13
    invoke-virtual {v3, p1}, Lmiuix/navigator/navigation/NavigationBarItemView;->setItemPaddingBottom(I)V

    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_8

    .line 19
    :cond_12
    return-void
.end method

.method public setItemPaddingTop(I)V
    .registers 6

    .line 1
    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemPaddingTop:I

    .line 3
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    .line 5
    if-eqz v0, :cond_12

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_8
    if-ge v2, v1, :cond_12

    .line 11
    aget-object v3, v0, v2

    .line 13
    invoke-virtual {v3, p1}, Lmiuix/navigator/navigation/NavigationBarItemView;->setItemPaddingTop(I)V

    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_8

    .line 19
    :cond_12
    return-void
.end method

.method public setItemTextAppearance(I)V
    .registers 7

    .line 1
    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemTextAppearance:I

    .line 3
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    .line 5
    if-eqz v0, :cond_19

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_8
    if-ge v2, v1, :cond_19

    .line 11
    aget-object v3, v0, v2

    .line 13
    invoke-virtual {v3, p1}, Lmiuix/navigator/navigation/NavigationBarItemView;->setTextAppearance(I)V

    .line 16
    iget-object v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    .line 18
    if-eqz v4, :cond_16

    .line 20
    invoke-virtual {v3, v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 23
    :cond_16
    add-int/lit8 v2, v2, 0x1

    .line 25
    goto :goto_8

    .line 26
    :cond_19
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    .line 3
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    .line 5
    if-eqz v0, :cond_12

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_8
    if-ge v2, v1, :cond_12

    .line 11
    aget-object v3, v0, v2

    .line 13
    invoke-virtual {v3, p1}, Lmiuix/navigator/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_8

    .line 19
    :cond_12
    return-void
.end method

.method public setItemTouchColor(Landroid/content/res/ColorStateList;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->itemTouchColor:Landroid/content/res/ColorStateList;

    .line 3
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    .line 5
    if-eqz v0, :cond_12

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_8
    if-ge v2, v1, :cond_12

    .line 11
    aget-object v3, v0, v2

    .line 13
    invoke-virtual {v3, p1}, Lmiuix/navigator/navigation/NavigationBarItemView;->setItemTouchColor(Landroid/content/res/ColorStateList;)V

    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_8

    .line 19
    :cond_12
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->labelVisibilityMode:I

    .line 3
    return-void
.end method

.method public setLayoutStyle(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->layoutStyle:I

    .line 3
    return-void
.end method

.method public setPresenter(Lmiuix/navigator/navigation/NavigationBarPresenter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->presenter:Lmiuix/navigator/navigation/NavigationBarPresenter;

    .line 3
    return-void
.end method

.method public showItem()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->showItem(Z)V

    return-void
.end method

.method public showItem(Z)V
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_56

    .line 2
    new-instance p1, Lmiuix/animation/controller/AnimState;

    const-string v1, "navigationBarItemShow"

    invoke-direct {p1, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 3
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 4
    sget-object v2, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v3, 0x3ff0000000000000L  # 1.0

    invoke-virtual {p1, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 5
    sget-object v5, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p1, v5, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 6
    new-instance v3, Lmiuix/animation/base/AnimSpecialConfig;

    invoke-direct {v3}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    const/4 v4, -0x2

    const/4 v6, 0x2

    new-array v6, v6, [F

    .line 7
    fill-array-data v6, :array_6c

    invoke-virtual {v3, v4, v6}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    const-wide/16 v6, 0x32

    .line 8
    invoke-virtual {v3, v6, v7}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    .line 9
    invoke-virtual {v1, v2, v3}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 10
    invoke-virtual {v1, v5, v3}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 11
    iget-object v2, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    if-eqz v2, :cond_6a

    .line 12
    array-length v3, v2

    move v4, v0

    :goto_3b
    if-ge v4, v3, :cond_6a

    aget-object v5, v2, v4

    const/4 v6, 0x1

    new-array v7, v6, [Landroid/view/View;

    aput-object v5, v7, v0

    .line 13
    invoke-static {v7}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v5

    invoke-interface {v5}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v5

    new-array v6, v6, [Lmiuix/animation/base/AnimConfig;

    aput-object v1, v6, v0

    invoke-interface {v5, p1, v6}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 14
    :cond_56
    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    if-eqz p1, :cond_6a

    .line 15
    array-length v1, p1

    :goto_5b
    if-ge v0, v1, :cond_6a

    aget-object v2, p1, v0

    const/high16 v3, 0x3f800000  # 1.0f

    .line 16
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 17
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5b

    :cond_6a
    return-void

    nop

    :array_6c
    .array-data 4
        0x3f59999a  # 0.85f
        0x3e99999a  # 0.3f
    .end array-data
.end method

.method public tryRestoreSelectedItemId(I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->menu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    if-ge v1, v0, :cond_21

    .line 10
    iget-object v2, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->menu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 12
    invoke-virtual {v2, v1}, Lmiuix/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 15
    move-result-object v2

    .line 16
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    .line 19
    move-result v3

    .line 20
    if-ne p1, v3, :cond_1e

    .line 22
    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->selectedItemId:I

    .line 24
    iput v1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->selectedItemPosition:I

    .line 26
    const/4 p1, 0x1

    .line 27
    invoke-interface {v2, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 30
    goto :goto_21

    .line 31
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    .line 33
    goto :goto_7

    .line 34
    :cond_21
    :goto_21
    return-void
.end method

.method public updateMenuView()V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->menu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 3
    if-eqz v0, :cond_92

    .line 5
    iget-object v1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    .line 7
    if-nez v1, :cond_a

    .line 9
    goto/16 :goto_92

    .line 11
    :cond_a
    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->size()I

    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    .line 17
    array-length v1, v1

    .line 18
    if-eq v0, v1, :cond_17

    .line 20
    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->buildMenuView()V

    .line 23
    return-void

    .line 24
    :cond_17
    const/4 v1, 0x0

    .line 25
    move v2, v1

    .line 26
    :goto_19
    if-ge v2, v0, :cond_32

    .line 28
    iget-object v3, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->menu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 30
    invoke-virtual {v3, v2}, Lmiuix/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 33
    move-result-object v3

    .line 34
    invoke-interface {v3}, Landroid/view/MenuItem;->isChecked()Z

    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_2f

    .line 40
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    .line 43
    move-result v3

    .line 44
    iput v3, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->selectedItemId:I

    .line 46
    iput v2, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->selectedItemPosition:I

    .line 48
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    .line 50
    goto :goto_19

    .line 51
    :cond_32
    iget v2, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->labelVisibilityMode:I

    .line 53
    iget-object v3, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->menu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 55
    invoke-virtual {v3}, Lmiuix/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 62
    move-result v3

    .line 63
    invoke-virtual {p0, v2, v3}, Lmiuix/navigator/navigation/NavigationBarMenuView;->isShifting(II)Z

    .line 66
    move-result v2

    .line 67
    move v3, v1

    .line 68
    :goto_43
    if-ge v3, v0, :cond_92

    .line 70
    iget-object v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->presenter:Lmiuix/navigator/navigation/NavigationBarPresenter;

    .line 72
    const/4 v5, 0x1

    .line 73
    invoke-virtual {v4, v5}, Lmiuix/navigator/navigation/NavigationBarPresenter;->setUpdateSuspended(Z)V

    .line 76
    iget-object v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    .line 78
    aget-object v4, v4, v3

    .line 80
    invoke-virtual {v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->getLayoutStyle()I

    .line 83
    move-result v4

    .line 84
    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getLayoutStyle()I

    .line 87
    move-result v5

    .line 88
    if-eq v4, v5, :cond_6b

    .line 90
    iget-object v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    .line 92
    aget-object v4, v4, v3

    .line 94
    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getLayoutStyle()I

    .line 97
    move-result v5

    .line 98
    invoke-virtual {v4, v5}, Lmiuix/navigator/navigation/NavigationBarItemView;->setLayoutStyle(I)V

    .line 101
    iget-object v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    .line 103
    aget-object v4, v4, v3

    .line 105
    invoke-virtual {v4}, Lmiuix/navigator/navigation/NavigationBarItemView;->updateLayout()V

    .line 108
    :cond_6b
    iget-object v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    .line 110
    aget-object v4, v4, v3

    .line 112
    iget v5, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->labelVisibilityMode:I

    .line 114
    invoke-virtual {v4, v5}, Lmiuix/navigator/navigation/NavigationBarItemView;->setLabelVisibilityMode(I)V

    .line 117
    iget-object v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    .line 119
    aget-object v4, v4, v3

    .line 121
    invoke-virtual {v4, v2}, Lmiuix/navigator/navigation/NavigationBarItemView;->setShifting(Z)V

    .line 124
    iget-object v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->buttons:[Lmiuix/navigator/navigation/NavigationBarItemView;

    .line 126
    aget-object v4, v4, v3

    .line 128
    iget-object v5, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->menu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 130
    invoke-virtual {v5, v3}, Lmiuix/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 133
    move-result-object v5

    .line 134
    check-cast v5, Lmiuix/appcompat/view/menu/MenuItemImpl;

    .line 136
    invoke-virtual {v4, v5, v1}, Lmiuix/navigator/navigation/NavigationBarItemView;->initialize(Lmiuix/appcompat/view/menu/MenuItemImpl;I)V

    .line 139
    iget-object v4, p0, Lmiuix/navigator/navigation/NavigationBarMenuView;->presenter:Lmiuix/navigator/navigation/NavigationBarPresenter;

    .line 141
    invoke-virtual {v4, v1}, Lmiuix/navigator/navigation/NavigationBarPresenter;->setUpdateSuspended(Z)V

    .line 144
    add-int/lit8 v3, v3, 0x1

    .line 146
    goto :goto_43

    .line 147
    :cond_92
    :goto_92
    return-void
.end method
