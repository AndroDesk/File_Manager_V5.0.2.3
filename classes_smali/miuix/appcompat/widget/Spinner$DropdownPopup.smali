.class Lmiuix/appcompat/widget/Spinner$DropdownPopup;
.super Lmiuix/internal/widget/ListPopup;
.source "Spinner.java"

# interfaces
.implements Lmiuix/appcompat/widget/Spinner$SpinnerPopup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DropdownPopup"
.end annotation


# static fields
.field private static final INVALID_VALUE:I = -0x1

.field private static final SCREEN_MARGIN_BOTTOM_PROPORTION:F = 0.1f

.field private static final SCREEN_MARGIN_TOP_PROPORTION:F = 0.1f


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field private mFenceView:Landroid/view/View;

.field private mFenceX:I

.field private mHintText:Ljava/lang/CharSequence;

.field private mMarginScreen:I

.field private mMarginScreenVertical:I

.field private mMaxContentHeight:I

.field private mMaxContentWidth:I

.field private mMaxPopupHeight:I

.field private mMinPopupHeight:I

.field private mOriginalHorizontalOffset:I

.field private final mVisibleRect:Landroid/graphics/Rect;

.field public final synthetic this$0:Lmiuix/appcompat/widget/Spinner;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/widget/Spinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 3
    invoke-direct {p0, p2}, Lmiuix/internal/widget/ListPopup;-><init>(Landroid/content/Context;)V

    .line 6
    new-instance p3, Landroid/graphics/Rect;

    .line 8
    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 11
    iput-object p3, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mVisibleRect:Landroid/graphics/Rect;

    .line 13
    const/4 p3, -0x1

    .line 14
    iput p3, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mFenceX:I

    .line 16
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    move-result-object p3

    .line 20
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    move-result-object p2

    .line 24
    sget p4, Lmiuix/appcompat/R$dimen;->miuix_appcompat_spinner_margin_screen_horizontal:I

    .line 26
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 29
    move-result p2

    .line 30
    iput p2, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMarginScreen:I

    .line 32
    sget p2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_spinner_max_width:I

    .line 34
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 37
    move-result p2

    .line 38
    iput p2, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMaxContentWidth:I

    .line 40
    sget p2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_spinner_margin_screen_vertical:I

    .line 42
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 45
    move-result p2

    .line 46
    iput p2, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMarginScreenVertical:I

    .line 48
    sget p2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_drop_down_menu_padding_single_item:I

    .line 50
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 53
    move-result p2

    .line 54
    mul-int/lit8 p2, p2, 0x2

    .line 56
    sget p4, Lmiuix/appcompat/R$dimen;->miuix_appcompat_drop_down_item_min_height:I

    .line 58
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 61
    move-result p3

    .line 62
    add-int/2addr p3, p2

    .line 63
    mul-int/lit8 p3, p3, 0x2

    .line 65
    iput p3, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMinPopupHeight:I

    .line 67
    const p2, 0x800033

    .line 70
    invoke-virtual {p0, p2}, Lmiuix/internal/widget/ListPopup;->setDropDownGravity(I)V

    .line 73
    new-instance p2, Lmiuix/appcompat/widget/Spinner$DropdownPopup$1;

    .line 75
    invoke-direct {p2, p0, p1}, Lmiuix/appcompat/widget/Spinner$DropdownPopup$1;-><init>(Lmiuix/appcompat/widget/Spinner$DropdownPopup;Lmiuix/appcompat/widget/Spinner;)V

    .line 78
    invoke-virtual {p0, p2}, Lmiuix/internal/widget/ListPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 81
    return-void
.end method

.method private checkInFloatingWindowMode()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mFenceView:Landroid/view/View;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v1

    .line 12
    instance-of v1, v1, Lmiuix/appcompat/app/IActivity;

    .line 14
    if-eqz v1, :cond_28

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lmiuix/appcompat/app/IActivity;

    .line 22
    invoke-interface {v1}, Lmiuix/appcompat/app/IActivity;->isInFloatingWindowMode()Z

    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_28

    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 31
    move-result-object v0

    .line 32
    sget v1, Lmiuix/appcompat/R$id;->action_bar_overlay_layout:I

    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p0, v0}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->setFenceView(Landroid/view/View;)V

    .line 41
    :cond_28
    return-void
.end method

.method private getContentHeight()I
    .registers 13

    .line 1
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->getListView()Landroid/widget/ListView;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    .line 8
    move-result v1

    .line 9
    const/high16 v2, -0x80000000

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v0, :cond_42

    .line 14
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 17
    move-result-object v4

    .line 18
    if-eqz v4, :cond_42

    .line 20
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 23
    move-result-object v4

    .line 24
    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    .line 27
    move-result v5

    .line 28
    const/16 v6, 0x8

    .line 30
    if-ge v5, v6, :cond_20

    .line 32
    move v6, v5

    .line 33
    :cond_20
    move v7, v3

    .line 34
    move v8, v7

    .line 35
    :goto_22
    if-ge v7, v5, :cond_59

    .line 37
    const/4 v9, 0x0

    .line 38
    invoke-interface {v4, v7, v9, v0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    move-result-object v9

    .line 42
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 45
    move-result v10

    .line 46
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 49
    move-result v11

    .line 50
    invoke-virtual {v9, v10, v11}, Landroid/view/View;->measure(II)V

    .line 53
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    .line 56
    move-result v9

    .line 57
    add-int/2addr v8, v9

    .line 58
    add-int/lit8 v9, v6, -0x1

    .line 60
    if-ne v7, v9, :cond_3f

    .line 62
    iput v8, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMaxContentHeight:I

    .line 64
    :cond_3f
    add-int/lit8 v7, v7, 0x1

    .line 66
    goto :goto_22

    .line 67
    :cond_42
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    .line 69
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 72
    move-result v1

    .line 73
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 76
    move-result v2

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 80
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    .line 82
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 85
    move-result v0

    .line 86
    add-int/lit8 v8, v0, 0x0

    .line 88
    iput v8, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMaxContentHeight:I

    .line 90
    :cond_59
    return v8
.end method

.method private getxInWindow(IIII)I
    .registers 13

    .line 1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMaxContentWidth:I

    .line 7
    if-le v0, v1, :cond_d

    .line 9
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 12
    iget v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMaxContentWidth:I

    .line 14
    :cond_d
    add-int v1, p1, p2

    .line 16
    add-int v2, p3, p4

    .line 18
    add-int v3, p1, v0

    .line 20
    iget v4, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMarginScreen:I

    .line 22
    add-int/2addr v3, v4

    .line 23
    const/4 v5, 0x1

    .line 24
    const/4 v6, 0x0

    .line 25
    if-gt v3, p4, :cond_1c

    .line 27
    move v3, v5

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    move v3, v6

    .line 30
    :goto_1d
    sub-int v7, v1, v0

    .line 32
    sub-int/2addr v7, v4

    .line 33
    if-ltz v7, :cond_23

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    move v5, v6

    .line 37
    :goto_24
    if-eqz v3, :cond_2c

    .line 39
    if-ge p1, v4, :cond_2a

    .line 41
    :goto_28
    add-int/2addr p3, v4

    .line 42
    goto :goto_40

    .line 43
    :cond_2a
    add-int/2addr p3, p1

    .line 44
    goto :goto_40

    .line 45
    :cond_2c
    if-eqz v5, :cond_35

    .line 47
    sub-int/2addr p4, v4

    .line 48
    if-le v1, p4, :cond_32

    .line 50
    goto :goto_3d

    .line 51
    :cond_32
    add-int/2addr p3, v1

    .line 52
    sub-int/2addr p3, v0

    .line 53
    goto :goto_40

    .line 54
    :cond_35
    sub-int p1, p4, v1

    .line 56
    sub-int/2addr p4, p2

    .line 57
    div-int/lit8 p4, p4, 0x2

    .line 59
    if-lt p1, p4, :cond_3d

    .line 61
    goto :goto_28

    .line 62
    :cond_3d
    :goto_3d
    sub-int/2addr v2, v4

    .line 63
    sub-int p3, v2, v0

    .line 65
    :goto_40
    return p3
.end method

.method private getyInWindow(IIII)I
    .registers 11

    .line 1
    iget v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMarginScreenVertical:I

    .line 3
    div-int/lit8 v0, v0, 0x2

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    iget-object v2, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 9
    invoke-virtual {v2}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v2, :cond_29

    .line 16
    const/16 v3, 0x1e

    .line 18
    if-lt v1, v3, :cond_20

    .line 20
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    .line 23
    move-result v1

    .line 24
    invoke-virtual {v2, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 27
    move-result-object v1

    .line 28
    iget v3, v1, Landroid/graphics/Insets;->top:I

    .line 30
    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    .line 32
    goto :goto_2a

    .line 33
    :cond_20
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    .line 36
    move-result v3

    .line 37
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    .line 40
    move-result v1

    .line 41
    goto :goto_2a

    .line 42
    :cond_29
    move v1, v3

    .line 43
    :goto_2a
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 46
    move-result v2

    .line 47
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 50
    move-result v0

    .line 51
    add-int v1, v2, v0

    .line 53
    sub-int v3, p4, v2

    .line 55
    sub-int/2addr v3, v0

    .line 56
    iput v3, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMaxPopupHeight:I

    .line 58
    invoke-direct {p0}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->getContentHeight()I

    .line 61
    move-result v3

    .line 62
    iget v4, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMaxPopupHeight:I

    .line 64
    iget v5, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMaxContentHeight:I

    .line 66
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 69
    move-result v4

    .line 70
    iput v4, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMaxPopupHeight:I

    .line 72
    if-le v3, v4, :cond_4a

    .line 74
    move v3, v4

    .line 75
    :cond_4a
    invoke-virtual {p0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 78
    add-int v4, p3, p4

    .line 80
    add-int/2addr p2, p1

    .line 81
    add-int v5, p2, v3

    .line 83
    sub-int v1, p4, v1

    .line 85
    if-gt v5, v1, :cond_5d

    .line 87
    add-int p1, p3, p2

    .line 89
    if-ge p2, v2, :cond_b0

    .line 91
    add-int p1, p3, v2

    .line 93
    goto :goto_b0

    .line 94
    :cond_5d
    sub-int v5, p1, v3

    .line 96
    if-lt v5, v2, :cond_6d

    .line 98
    add-int/2addr p3, p1

    .line 99
    sub-int p2, p3, v3

    .line 101
    sub-int/2addr p4, v0

    .line 102
    if-le p1, p4, :cond_6b

    .line 104
    sub-int/2addr v4, v0

    .line 105
    sub-int p1, v4, v3

    .line 107
    goto :goto_b0

    .line 108
    :cond_6b
    move p1, p2

    .line 109
    goto :goto_b0

    .line 110
    :cond_6d
    if-ge p2, v2, :cond_72

    .line 112
    add-int/2addr p3, v2

    .line 113
    :cond_70
    move p1, p3

    .line 114
    goto :goto_a7

    .line 115
    :cond_72
    sub-int v5, v4, v0

    .line 117
    if-le p1, v5, :cond_79

    .line 119
    sub-int/2addr v5, v1

    .line 120
    move p1, v5

    .line 121
    goto :goto_a7

    .line 122
    :cond_79
    div-int/lit8 p4, p4, 0x2

    .line 124
    if-ge p1, p4, :cond_90

    .line 126
    sub-int/2addr v1, p2

    .line 127
    add-int/2addr p3, p2

    .line 128
    if-ge v1, v3, :cond_70

    .line 130
    iget p1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMinPopupHeight:I

    .line 132
    if-ge v1, p1, :cond_70

    .line 134
    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    .line 137
    move-result v1

    .line 138
    sub-int/2addr v4, v1

    .line 139
    sub-int/2addr v4, v0

    .line 140
    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    .line 143
    move-result p1

    .line 144
    goto :goto_a7

    .line 145
    :cond_90
    sub-int v1, p1, v2

    .line 147
    add-int p2, p3, p1

    .line 149
    sub-int/2addr p2, v1

    .line 150
    if-ge v1, v3, :cond_a6

    .line 152
    iget p4, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMinPopupHeight:I

    .line 154
    if-ge v1, p4, :cond_a6

    .line 156
    invoke-static {v3, p4}, Ljava/lang/Math;->min(II)I

    .line 159
    move-result v1

    .line 160
    sub-int/2addr p1, v1

    .line 161
    add-int/2addr p3, v2

    .line 162
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    .line 165
    move-result p1

    .line 166
    goto :goto_a7

    .line 167
    :cond_a6
    move p1, p2

    .line 168
    :goto_a7
    iget p2, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMaxPopupHeight:I

    .line 170
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    .line 173
    move-result p2

    .line 174
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 177
    :cond_b0
    :goto_b0
    return p1
.end method

.method private initListView(II)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->getListView()Landroid/widget/ListView;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 9
    invoke-virtual {v0, p1}, Landroid/view/View;->setTextDirection(I)V

    .line 12
    invoke-virtual {v0, p2}, Landroid/view/View;->setTextAlignment(I)V

    .line 15
    iget-object p1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 17
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 20
    move-result p1

    .line 21
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 24
    invoke-virtual {v0, p1, v1}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 27
    return-void
.end method

.method private showWithAnchor(Landroid/view/View;)V
    .registers 10

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 7
    const/4 v1, 0x0

    .line 8
    aget v2, v0, v1

    .line 10
    const/4 v3, 0x1

    .line 11
    aget v4, v0, v3

    .line 13
    iget-object v5, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mFenceView:Landroid/view/View;

    .line 15
    if-nez v5, :cond_14

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 20
    move-result-object v5

    .line 21
    :cond_14
    invoke-virtual {v5, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 24
    aget v6, v0, v1

    .line 26
    aget v0, v0, v3

    .line 28
    sub-int/2addr v2, v6

    .line 29
    sub-int/2addr v4, v0

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 33
    move-result v3

    .line 34
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 37
    move-result v7

    .line 38
    invoke-direct {p0, v2, v3, v6, v7}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->getxInWindow(IIII)I

    .line 41
    move-result v2

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 45
    move-result v3

    .line 46
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 49
    move-result v5

    .line 50
    invoke-direct {p0, v4, v3, v0, v5}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->getyInWindow(IIII)I

    .line 53
    move-result v0

    .line 54
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_48

    .line 60
    invoke-virtual {p0, p1, v1, v2, v0}, Lmiuix/internal/widget/ListPopup;->showAtLocation(Landroid/view/View;III)V

    .line 63
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 68
    move-result-object p1

    .line 69
    invoke-static {p1}, Lmiuix/internal/widget/ListPopup;->changeWindowBackground(Landroid/view/View;)V

    .line 72
    goto :goto_53

    .line 73
    :cond_48
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    .line 76
    move-result p1

    .line 77
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    .line 80
    move-result v1

    .line 81
    invoke-virtual {p0, v2, v0, p1, v1}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 84
    :goto_53
    return-void
.end method


# virtual methods
.method public computeContentWidth()V
    .registers 9

    .line 1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_26

    .line 8
    iget-object v1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 10
    iget-object v1, v1, Lmiuix/appcompat/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 15
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 17
    invoke-static {v0}, Landroidx/appcompat/widget/h1;->a(Landroid/view/View;)Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1d

    .line 23
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 25
    iget-object v0, v0, Lmiuix/appcompat/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    .line 27
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 29
    goto :goto_24

    .line 30
    :cond_1d
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 32
    iget-object v0, v0, Lmiuix/appcompat/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    .line 34
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 36
    neg-int v0, v0

    .line 37
    :goto_24
    move v1, v0

    .line 38
    goto :goto_2e

    .line 39
    :cond_26
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 41
    iget-object v0, v0, Lmiuix/appcompat/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    .line 43
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 45
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 47
    :goto_2e
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 52
    move-result v0

    .line 53
    iget-object v2, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 55
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    .line 58
    move-result v2

    .line 59
    iget-object v3, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 61
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 64
    move-result v3

    .line 65
    iget-object v4, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 67
    iget v5, v4, Lmiuix/appcompat/widget/Spinner;->mDropDownWidth:I

    .line 69
    const/4 v6, -0x2

    .line 70
    if-ne v5, v6, :cond_83

    .line 72
    iget-object v5, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 74
    check-cast v5, Landroid/widget/SpinnerAdapter;

    .line 76
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 79
    move-result-object v6

    .line 80
    invoke-virtual {v4, v5, v6}, Lmiuix/appcompat/widget/Spinner;->compatMeasureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    .line 83
    move-result v4

    .line 84
    iget-object v5, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 86
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 97
    move-result-object v5

    .line 98
    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 100
    iget-object v6, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 102
    iget-object v6, v6, Lmiuix/appcompat/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    .line 104
    iget v7, v6, Landroid/graphics/Rect;->left:I

    .line 106
    sub-int/2addr v5, v7

    .line 107
    iget v6, v6, Landroid/graphics/Rect;->right:I

    .line 109
    sub-int/2addr v5, v6

    .line 110
    iget v6, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMarginScreen:I

    .line 112
    mul-int/lit8 v7, v6, 0x2

    .line 114
    sub-int/2addr v5, v7

    .line 115
    if-le v4, v5, :cond_75

    .line 117
    move v4, v5

    .line 118
    :cond_75
    sub-int v5, v3, v0

    .line 120
    sub-int/2addr v5, v2

    .line 121
    mul-int/lit8 v6, v6, 0x2

    .line 123
    sub-int/2addr v5, v6

    .line 124
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 127
    move-result v4

    .line 128
    invoke-virtual {p0, v4}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    .line 131
    goto :goto_95

    .line 132
    :cond_83
    const/4 v4, -0x1

    .line 133
    if-ne v5, v4, :cond_92

    .line 135
    sub-int v4, v3, v0

    .line 137
    sub-int/2addr v4, v2

    .line 138
    iget v5, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMarginScreen:I

    .line 140
    mul-int/lit8 v5, v5, 0x2

    .line 142
    sub-int/2addr v4, v5

    .line 143
    invoke-virtual {p0, v4}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    .line 146
    goto :goto_95

    .line 147
    :cond_92
    invoke-virtual {p0, v5}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    .line 150
    :goto_95
    iget-object v4, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 152
    invoke-static {v4}, Landroidx/appcompat/widget/h1;->a(Landroid/view/View;)Z

    .line 155
    move-result v4

    .line 156
    if-eqz v4, :cond_aa

    .line 158
    sub-int/2addr v3, v2

    .line 159
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    .line 162
    move-result v0

    .line 163
    sub-int/2addr v3, v0

    .line 164
    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->getHorizontalOriginalOffset()I

    .line 167
    move-result v0

    .line 168
    sub-int/2addr v3, v0

    .line 169
    add-int/2addr v3, v1

    .line 170
    goto :goto_b1

    .line 171
    :cond_aa
    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->getHorizontalOriginalOffset()I

    .line 174
    move-result v2

    .line 175
    add-int/2addr v0, v2

    .line 176
    add-int v3, v0, v1

    .line 178
    :goto_b1
    invoke-virtual {p0, v3}, Lmiuix/internal/widget/ListPopup;->setHorizontalOffset(I)V

    .line 181
    return-void
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method public getHorizontalOriginalOffset()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mOriginalHorizontalOffset:I

    .line 3
    return v0
.end method

.method public isNeedScroll()Z
    .registers 7

    .line 1
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->getListView()Landroid/widget/ListView;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v1, :cond_c

    .line 12
    return v2

    .line 13
    :cond_c
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 20
    move-result-object v3

    .line 21
    invoke-interface {v3}, Landroid/widget/Adapter;->getCount()I

    .line 24
    move-result v3

    .line 25
    sub-int/2addr v3, v2

    .line 26
    if-eq v1, v3, :cond_1c

    .line 28
    return v2

    .line 29
    :cond_1c
    const/4 v1, 0x0

    .line 30
    move v3, v1

    .line 31
    move v4, v3

    .line 32
    :goto_1f
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 35
    move-result v5

    .line 36
    if-gt v3, v5, :cond_31

    .line 38
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    .line 45
    move-result v5

    .line 46
    add-int/2addr v4, v5

    .line 47
    add-int/lit8 v3, v3, 0x1

    .line 49
    goto :goto_1f

    .line 50
    :cond_31
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 53
    move-result v0

    .line 54
    if-ge v0, v4, :cond_38

    .line 56
    return v2

    .line 57
    :cond_38
    return v1
.end method

.method public isVisibleToUser(Landroid/view/View;)Z
    .registers 3

    .line 1
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-static {p1}, Lm0/g0$g;->b(Landroid/view/View;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_12

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mVisibleRect:Landroid/graphics/Rect;

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_12

    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 p1, 0x0

    .line 20
    :goto_13
    return p1
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/internal/widget/ListPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 6
    return-void
.end method

.method public setContentWidth(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 3
    iget v0, v0, Lmiuix/appcompat/widget/Spinner;->mDropDownMaxWidth:I

    .line 5
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 8
    move-result p1

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 11
    iget v0, v0, Lmiuix/appcompat/widget/Spinner;->mDropDownMinWidth:I

    .line 13
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 16
    move-result p1

    .line 17
    invoke-super {p0, p1}, Lmiuix/internal/widget/ListPopup;->setContentWidth(I)V

    .line 20
    return-void
.end method

.method public setFenceView(Landroid/view/View;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mFenceView:Landroid/view/View;

    .line 3
    return-void
.end method

.method public setFenceX(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mFenceX:I

    .line 3
    return-void
.end method

.method public setHorizontalOriginalOffset(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mOriginalHorizontalOffset:I

    .line 3
    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    .line 3
    return-void
.end method

.method public show(II)V
    .registers 4

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, p2, v0, v0}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->show(IIFF)V

    return-void
.end method

.method public show(IIFF)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->checkInFloatingWindowMode()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p3

    .line 3
    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->computeContentWidth()V

    const/4 p4, 0x2

    .line 4
    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 5
    iget-object p4, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    const/4 v0, 0x0

    invoke-virtual {p0, p4, v0}, Lmiuix/internal/widget/ListPopup;->prepareShow(Landroid/view/View;Landroid/view/ViewGroup;)Z

    move-result p4

    if-eqz p4, :cond_1c

    .line 6
    iget-object p4, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-direct {p0, p4}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->showWithAnchor(Landroid/view/View;)V

    .line 7
    :cond_1c
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->initListView(II)V

    if-eqz p3, :cond_22

    return-void

    .line 8
    :cond_22
    new-instance p1, Lmiuix/appcompat/widget/Spinner$DropdownPopup$2;

    invoke-direct {p1, p0}, Lmiuix/appcompat/widget/Spinner$DropdownPopup$2;-><init>(Lmiuix/appcompat/widget/Spinner$DropdownPopup;)V

    invoke-virtual {p0, p1}, Lmiuix/internal/widget/ListPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method
