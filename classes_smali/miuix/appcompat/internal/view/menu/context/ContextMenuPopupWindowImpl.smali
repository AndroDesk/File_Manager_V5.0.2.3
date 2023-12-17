.class public Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;
.super Lmiuix/internal/widget/ListPopup;
.source "ContextMenuPopupWindowImpl.java"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindow;


# static fields
.field private static final SCREEN_MARGIN_BOTTOM_PROPORTION:F = 0.1f

.field private static final SCREEN_MARGIN_TOP_PROPORTION:F = 0.1f


# instance fields
.field private mAdapter:Lmiuix/appcompat/internal/view/menu/context/ContextMenuAdapter;

.field private mLastAnchor:Landroid/view/View;

.field private mLastParent:Landroid/view/ViewGroup;

.field private mMarginScreen:I

.field private mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field private mPopupContentView:Landroid/widget/LinearLayout;

.field private mSeparateMenuItem:Landroid/view/MenuItem;

.field private mSeparateMenuView:Landroid/view/View;

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lmiuix/internal/widget/ListPopup;-><init>(Landroid/content/Context;)V

    .line 4
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 6
    new-instance p2, Lmiuix/appcompat/internal/view/menu/context/ContextMenuAdapter;

    .line 8
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 10
    invoke-direct {p2, p1, v0}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuAdapter;-><init>(Landroid/content/Context;Landroid/view/Menu;)V

    .line 13
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mAdapter:Lmiuix/appcompat/internal/view/menu/context/ContextMenuAdapter;

    .line 15
    invoke-virtual {p2}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuAdapter;->getLastCategorySystemOrderMenuItem()Landroid/view/MenuItem;

    .line 18
    move-result-object p2

    .line 19
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuItem:Landroid/view/MenuItem;

    .line 21
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->prepareMultipleChoiceMenu(Landroid/content/Context;)V

    .line 24
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mAdapter:Lmiuix/appcompat/internal/view/menu/context/ContextMenuAdapter;

    .line 26
    invoke-virtual {p0, p2}, Lmiuix/internal/widget/ListPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 29
    new-instance p2, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl$1;

    .line 31
    invoke-direct {p2, p0}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl$1;-><init>(Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;)V

    .line 34
    invoke-virtual {p0, p2}, Lmiuix/internal/widget/ListPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 37
    if-eqz p3, :cond_29

    .line 39
    invoke-virtual {p0, p3}, Lmiuix/internal/widget/ListPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 42
    :cond_29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 45
    move-result-object p1

    .line 46
    sget p2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_context_menu_window_margin_screen:I

    .line 48
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 51
    move-result p1

    .line 52
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mMarginScreen:I

    .line 54
    return-void
.end method

.method public static synthetic access$000(Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;)Lmiuix/appcompat/internal/view/menu/context/ContextMenuAdapter;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mAdapter:Lmiuix/appcompat/internal/view/menu/context/ContextMenuAdapter;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mLastAnchor:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;)F
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mX:F

    .line 3
    return p0
.end method

.method public static synthetic access$400(Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;)F
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mY:F

    .line 3
    return p0
.end method

.method public static synthetic access$500(Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;Landroid/view/View;FF)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->fastShowAsContextMenu(Landroid/view/View;FF)V

    .line 4
    return-void
.end method

.method public static synthetic access$600(Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;)Landroid/view/MenuItem;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuItem:Landroid/view/MenuItem;

    .line 3
    return-object p0
.end method

.method private fastShowAsContextMenu(Landroid/view/View;FF)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->computePopupContentWidth()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 8
    const/4 v0, -0x2

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 12
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    .line 14
    const/16 v1, 0x8

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->showWithAnchor(Landroid/view/View;FF)V

    .line 22
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->forceLayout()V

    .line 27
    return-void
.end method

.method private getListViewHeight()I
    .registers 9

    .line 1
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    .line 3
    const v1, 0x102000a

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/ListView;

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_32

    .line 15
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 18
    move-result-object v2

    .line 19
    move v3, v1

    .line 20
    move v4, v3

    .line 21
    :goto_14
    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    .line 24
    move-result v5

    .line 25
    if-ge v3, v5, :cond_47

    .line 27
    const/4 v5, 0x0

    .line 28
    invoke-interface {v2, v3, v5, v0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 31
    move-result-object v5

    .line 32
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 35
    move-result v6

    .line 36
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 39
    move-result v7

    .line 40
    invoke-virtual {v5, v6, v7}, Landroid/view/View;->measure(II)V

    .line 43
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    .line 46
    move-result v5

    .line 47
    add-int/2addr v4, v5

    .line 48
    add-int/lit8 v3, v3, 0x1

    .line 50
    goto :goto_14

    .line 51
    :cond_32
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    .line 53
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 56
    move-result v2

    .line 57
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 60
    move-result v3

    .line 61
    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    .line 64
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    .line 66
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 69
    move-result v0

    .line 70
    add-int/lit8 v4, v0, 0x0

    .line 72
    :cond_47
    return v4
.end method

.method private getMultipleChoiceViewHeight()I
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_36

    .line 10
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_21

    .line 18
    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 20
    if-eqz v0, :cond_21

    .line 22
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 30
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 32
    add-int/2addr v0, v1

    .line 33
    goto :goto_22

    .line 34
    :cond_21
    move v0, v1

    .line 35
    :goto_22
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    .line 37
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 40
    move-result v3

    .line 41
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 44
    move-result v1

    .line 45
    invoke-virtual {v2, v3, v1}, Landroid/view/View;->measure(II)V

    .line 48
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    .line 50
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 53
    move-result v1

    .line 54
    add-int/2addr v1, v0

    .line 55
    :cond_36
    return v1
.end method

.method private prepareMultipleChoiceMenu(Landroid/content/Context;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuItem:Landroid/view/MenuItem;

    .line 3
    if-nez p1, :cond_c

    .line 5
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    .line 7
    const/16 v0, 0x8

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 12
    goto :goto_2f

    .line 13
    :cond_c
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    .line 15
    const v0, 0x1020014

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/widget/TextView;

    .line 24
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuItem:Landroid/view/MenuItem;

    .line 26
    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    .line 35
    new-instance v0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl$2;

    .line 37
    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl$2;-><init>(Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;)V

    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    .line 45
    invoke-static {p1}, Lmiuix/internal/util/AnimHelper;->addPressAnim(Landroid/view/View;)V

    .line 48
    :goto_2f
    return-void
.end method

.method private showWithAnchor(Landroid/view/View;FF)V
    .registers 13

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [I

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 7
    const/4 v2, 0x0

    .line 8
    aget v3, v1, v2

    .line 10
    float-to-int p2, p2

    .line 11
    add-int/2addr v3, p2

    .line 12
    const/4 p2, 0x1

    .line 13
    aget v1, v1, p2

    .line 15
    float-to-int p3, p3

    .line 16
    add-int/2addr v1, p3

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 20
    move-result-object p3

    .line 21
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    .line 24
    move-result v4

    .line 25
    if-gt v3, v4, :cond_1c

    .line 27
    move v4, p2

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    move v4, v2

    .line 30
    :goto_1d
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    .line 33
    move-result v5

    .line 34
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    .line 37
    move-result v6

    .line 38
    sub-int/2addr v5, v6

    .line 39
    if-lt v3, v5, :cond_29

    .line 41
    goto :goto_2a

    .line 42
    :cond_29
    move p2, v2

    .line 43
    :goto_2a
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->getListViewHeight()I

    .line 46
    move-result v5

    .line 47
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->getListViewHeight()I

    .line 50
    move-result v6

    .line 51
    div-int/2addr v6, v0

    .line 52
    sub-int/2addr v1, v6

    .line 53
    int-to-float v0, v1

    .line 54
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 57
    move-result v1

    .line 58
    int-to-float v1, v1

    .line 59
    const v6, 0x3dcccccd  # 0.1f

    .line 62
    mul-float/2addr v1, v6

    .line 63
    cmpg-float v1, v0, v1

    .line 65
    if-gez v1, :cond_48

    .line 67
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 70
    move-result v0

    .line 71
    int-to-float v0, v0

    .line 72
    mul-float/2addr v0, v6

    .line 73
    :cond_48
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->getMultipleChoiceViewHeight()I

    .line 76
    move-result v1

    .line 77
    add-int/2addr v5, v1

    .line 78
    int-to-float v1, v5

    .line 79
    add-float v5, v0, v1

    .line 81
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 84
    move-result v7

    .line 85
    int-to-float v7, v7

    .line 86
    const v8, 0x3f666666  # 0.9f

    .line 89
    mul-float/2addr v7, v8

    .line 90
    cmpl-float v5, v5, v7

    .line 92
    if-lez v5, :cond_64

    .line 94
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 97
    move-result v0

    .line 98
    int-to-float v0, v0

    .line 99
    mul-float/2addr v0, v8

    .line 100
    sub-float/2addr v0, v1

    .line 101
    :cond_64
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 104
    move-result v1

    .line 105
    int-to-float v1, v1

    .line 106
    mul-float/2addr v1, v6

    .line 107
    cmpg-float v1, v0, v1

    .line 109
    if-gez v1, :cond_81

    .line 111
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 114
    move-result v0

    .line 115
    int-to-float v0, v0

    .line 116
    mul-float/2addr v0, v6

    .line 117
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 120
    move-result v1

    .line 121
    int-to-float v1, v1

    .line 122
    const v5, 0x3f4ccccc  # 0.79999995f

    .line 125
    mul-float/2addr v1, v5

    .line 126
    float-to-int v1, v1

    .line 127
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 130
    :cond_81
    if-eqz v4, :cond_86

    .line 132
    iget v3, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mMarginScreen:I

    .line 134
    goto :goto_95

    .line 135
    :cond_86
    if-eqz p2, :cond_95

    .line 137
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    .line 140
    move-result p2

    .line 141
    iget p3, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mMarginScreen:I

    .line 143
    sub-int/2addr p2, p3

    .line 144
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    .line 147
    move-result p3

    .line 148
    sub-int v3, p2, p3

    .line 150
    :cond_95
    :goto_95
    float-to-int p2, v0

    .line 151
    invoke-virtual {p0, p1, v2, v3, p2}, Lmiuix/internal/widget/ListPopup;->showAtLocation(Landroid/view/View;III)V

    .line 154
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 159
    move-result-object p1

    .line 160
    invoke-static {p1}, Lmiuix/internal/widget/ListPopup;->changeWindowBackground(Landroid/view/View;)V

    .line 163
    return-void
.end method


# virtual methods
.method public checkMaxHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/internal/widget/ListPopup;->mMaxAllowedHeight:I

    .line 3
    return v0
.end method

.method public prepareContentView(Landroid/content/Context;)V
    .registers 9

    .line 1
    new-instance v0, Landroid/widget/LinearLayout;

    .line 3
    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 6
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mPopupContentView:Landroid/widget/LinearLayout;

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 12
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 15
    move-result-object v0

    .line 16
    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_popup_menu_item_context_separate:I

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    .line 26
    sget v0, Lmiuix/appcompat/R$attr;->immersionWindowBackground:I

    .line 28
    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_38

    .line 34
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 36
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 39
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    .line 41
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 44
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    .line 46
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 57
    :cond_38
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 59
    const/4 v1, -0x2

    .line 60
    const/4 v4, -0x1

    .line 61
    invoke-direct {v0, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 67
    move-result-object p1

    .line 68
    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_context_menu_separate_item_margin_top:I

    .line 70
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 73
    move-result p1

    .line 74
    invoke-virtual {v0, v3, p1, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 77
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mPopupContentView:Landroid/widget/LinearLayout;

    .line 79
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    .line 81
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 83
    const/high16 v6, 0x3f800000  # 1.0f

    .line 85
    invoke-direct {v5, v4, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 88
    invoke-virtual {p1, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mPopupContentView:Landroid/widget/LinearLayout;

    .line 93
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    .line 95
    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mPopupContentView:Landroid/widget/LinearLayout;

    .line 103
    invoke-super {p0, p1}, Lmiuix/internal/widget/ListPopup;->setPopupWindowContentView(Landroid/view/View;)V

    .line 106
    return-void
.end method

.method public show(Landroid/view/View;Landroid/view/ViewGroup;FF)V
    .registers 6

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mLastAnchor:Landroid/view/View;

    .line 3
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mLastParent:Landroid/view/ViewGroup;

    .line 5
    iput p3, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mX:F

    .line 7
    iput p4, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mY:F

    .line 9
    invoke-virtual {p0, p1, p2}, Lmiuix/internal/widget/ListPopup;->prepareShow(Landroid/view/View;Landroid/view/ViewGroup;)Z

    .line 12
    move-result p2

    .line 13
    if-eqz p2, :cond_1e

    .line 15
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    .line 17
    iget v0, p0, Lmiuix/internal/widget/ListPopup;->mElevation:I

    .line 19
    int-to-float v0, v0

    .line 20
    invoke-virtual {p2, v0}, Landroid/view/View;->setElevation(F)V

    .line 23
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    .line 25
    invoke-virtual {p0, p2}, Lmiuix/internal/widget/ListPopup;->setPopupShadowAlpha(Landroid/view/View;)V

    .line 28
    invoke-direct {p0, p1, p3, p4}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->showWithAnchor(Landroid/view/View;FF)V

    .line 31
    :cond_1e
    return-void
.end method

.method public update(Landroid/view/Menu;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mAdapter:Lmiuix/appcompat/internal/view/menu/context/ContextMenuAdapter;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/internal/widget/PopupMenuAdapter;->update(Landroid/view/Menu;)V

    .line 6
    return-void
.end method

.method public updatePopupWindow(Landroid/view/View;Landroid/view/ViewGroup;FF)V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_4

    .line 4
    goto :goto_a

    .line 5
    :cond_4
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mLastAnchor:Landroid/view/View;

    .line 7
    if-eqz p1, :cond_9

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    move-object p1, v0

    .line 11
    :goto_a
    if-eqz p2, :cond_d

    .line 13
    goto :goto_13

    .line 14
    :cond_d
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mLastParent:Landroid/view/ViewGroup;

    .line 16
    if-eqz p2, :cond_12

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    move-object p2, v0

    .line 20
    :goto_13
    invoke-virtual {p0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->show(Landroid/view/View;Landroid/view/ViewGroup;FF)V

    .line 23
    return-void
.end method
