.class public Lmiuix/internal/widget/ListPopup;
.super Landroid/widget/PopupWindow;
.source "ListPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/internal/widget/ListPopup$ContentSize;
    }
.end annotation


# static fields
.field private static final DIM:F = 0.3f

.field private static final OFFSET_X:F = 8.0f

.field private static final OFFSET_Y:F = 8.0f

.field private static final TAG:Ljava/lang/String; = "ListPopupWindow"


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final mBackgroundPadding:Landroid/graphics/Rect;

.field private mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

.field public mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field public mElevation:I

.field private mElevationExtra:I

.field private mHasShadow:Z

.field private mListView:Landroid/widget/ListView;

.field public mMaxAllowedHeight:I

.field private mMaxAllowedWidth:I

.field private mMinAllowedWidth:I

.field private mMinMarginScreen:I

.field private mObserver:Landroid/database/DataSetObserver;

.field private mOffsetFromStatusBar:I

.field private mOffsetX:I

.field private mOffsetXSet:Z

.field private mOffsetY:I

.field private mOffsetYSet:Z

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field public mRootView:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 4
    const v0, 0x800035

    .line 7
    iput v0, p0, Lmiuix/internal/widget/ListPopup;->mDropDownGravity:I

    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetFromStatusBar:I

    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lmiuix/internal/widget/ListPopup;->mHasShadow:Z

    .line 15
    new-instance v1, Lmiuix/internal/widget/ListPopup$1;

    .line 17
    invoke-direct {v1, p0}, Lmiuix/internal/widget/ListPopup$1;-><init>(Lmiuix/internal/widget/ListPopup;)V

    .line 20
    iput-object v1, p0, Lmiuix/internal/widget/ListPopup;->mObserver:Landroid/database/DataSetObserver;

    .line 22
    iput-object p1, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    .line 24
    const/4 v1, -0x2

    .line 25
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    move-result-object v1

    .line 32
    new-instance v2, Lmiuix/internal/util/DisplayHelper;

    .line 34
    iget-object v3, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    .line 36
    invoke-direct {v2, v3}, Lmiuix/internal/util/DisplayHelper;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-virtual {v2}, Lmiuix/internal/util/DisplayHelper;->getWidthPixels()I

    .line 42
    move-result v3

    .line 43
    sget v4, Lmiuix/appcompat/R$dimen;->miuix_appcompat_list_menu_dialog_maximum_width:I

    .line 45
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 48
    move-result v4

    .line 49
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 52
    move-result v3

    .line 53
    iput v3, p0, Lmiuix/internal/widget/ListPopup;->mMaxAllowedWidth:I

    .line 55
    sget v3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_list_menu_dialog_minimum_width:I

    .line 57
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 60
    move-result v3

    .line 61
    iput v3, p0, Lmiuix/internal/widget/ListPopup;->mMinAllowedWidth:I

    .line 63
    invoke-virtual {v2}, Lmiuix/internal/util/DisplayHelper;->getHeightPixels()I

    .line 66
    move-result v3

    .line 67
    sget v4, Lmiuix/appcompat/R$dimen;->miuix_appcompat_list_menu_dialog_maximum_height:I

    .line 69
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 72
    move-result v1

    .line 73
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    .line 76
    move-result v1

    .line 77
    iput v1, p0, Lmiuix/internal/widget/ListPopup;->mMaxAllowedHeight:I

    .line 79
    invoke-virtual {v2}, Lmiuix/internal/util/DisplayHelper;->getDensity()F

    .line 82
    move-result v1

    .line 83
    const/high16 v2, 0x41000000  # 8.0f

    .line 85
    mul-float/2addr v1, v2

    .line 86
    float-to-int v1, v1

    .line 87
    iput v1, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    .line 89
    iput v1, p0, Lmiuix/internal/widget/ListPopup;->mOffsetY:I

    .line 91
    new-instance v1, Landroid/graphics/Rect;

    .line 93
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 96
    iput-object v1, p0, Lmiuix/internal/widget/ListPopup;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 98
    new-instance v1, Lmiuix/internal/widget/ListPopup$ContentSize;

    .line 100
    const/4 v2, 0x0

    .line 101
    invoke-direct {v1, v2}, Lmiuix/internal/widget/ListPopup$ContentSize;-><init>(Lmiuix/internal/widget/ListPopup$1;)V

    .line 104
    iput-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    .line 106
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 109
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 112
    new-instance v0, Lmiuix/smooth/SmoothFrameLayout2;

    .line 114
    invoke-direct {v0, p1}, Lmiuix/smooth/SmoothFrameLayout2;-><init>(Landroid/content/Context;)V

    .line 117
    iput-object v0, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 122
    move-result-object v0

    .line 123
    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_immersion_menu_background_radius:I

    .line 125
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 128
    move-result v0

    .line 129
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    .line 131
    check-cast v1, Lmiuix/smooth/SmoothFrameLayout2;

    .line 133
    int-to-float v0, v0

    .line 134
    invoke-virtual {v1, v0}, Lmiuix/smooth/SmoothFrameLayout2;->setCornerRadius(F)V

    .line 137
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    .line 139
    new-instance v1, Lcom/android/cloud/fragment/e;

    .line 141
    const/16 v2, 0x9

    .line 143
    invoke-direct {v1, p0, v2}, Lcom/android/cloud/fragment/e;-><init>(Ljava/lang/Object;I)V

    .line 146
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    invoke-virtual {p0, p1}, Lmiuix/internal/widget/ListPopup;->prepareContentView(Landroid/content/Context;)V

    .line 152
    sget v0, Lmiuix/appcompat/R$style;->Animation_PopupWindow_ImmersionMenu:I

    .line 154
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 157
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    .line 159
    sget v1, Lmiuix/appcompat/R$attr;->popupWindowElevation:I

    .line 161
    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    .line 164
    move-result v0

    .line 165
    iput v0, p0, Lmiuix/internal/widget/ListPopup;->mElevation:I

    .line 167
    new-instance v0, Lcom/android/fileexplorer/mirror/view/c;

    .line 169
    const/4 v1, 0x4

    .line 170
    invoke-direct {v0, p0, v1}, Lcom/android/fileexplorer/mirror/view/c;-><init>(Ljava/lang/Object;I)V

    .line 173
    invoke-super {p0, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 179
    move-result-object v0

    .line 180
    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_context_menu_window_margin_screen:I

    .line 182
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 185
    move-result v0

    .line 186
    iput v0, p0, Lmiuix/internal/widget/ListPopup;->mMinMarginScreen:I

    .line 188
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 191
    move-result-object v0

    .line 192
    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_context_menu_window_margin_statusbar:I

    .line 194
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 197
    move-result v0

    .line 198
    iput v0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetFromStatusBar:I

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 203
    move-result-object p1

    .line 204
    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_menu_popup_extra_elevation:I

    .line 206
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 209
    move-result p1

    .line 210
    iput p1, p0, Lmiuix/internal/widget/ListPopup;->mElevationExtra:I

    .line 212
    return-void
.end method

.method public static synthetic a(Lmiuix/internal/widget/ListPopup;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiuix/internal/widget/ListPopup;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/internal/widget/ListPopup;)Lmiuix/internal/widget/ListPopup$ContentSize;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/internal/widget/ListPopup;)Landroid/view/View;
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/internal/widget/ListPopup;->getAnchor()Landroid/view/View;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/internal/widget/ListPopup;Landroid/view/View;)I
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/internal/widget/ListPopup;->calculateXoffset(Landroid/view/View;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$300(Lmiuix/internal/widget/ListPopup;Landroid/view/View;)I
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/internal/widget/ListPopup;->calculateYoffset(Landroid/view/View;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$500(Lmiuix/internal/widget/ListPopup;)Landroid/widget/ListView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mListView:Landroid/widget/ListView;

    .line 3
    return-object p0
.end method

.method public static synthetic b(Lmiuix/internal/widget/ListPopup;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lmiuix/internal/widget/ListPopup;->lambda$prepareShow$2(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic c(Lmiuix/internal/widget/ListPopup;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/internal/widget/ListPopup;->lambda$new$1()V

    return-void
.end method

.method private calculateXoffset(Landroid/view/View;)I
    .registers 7

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 7
    invoke-static {p1}, Landroidx/appcompat/widget/h1;->a(Landroid/view/View;)Z

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v1, :cond_39

    .line 15
    aget v1, v0, v3

    .line 17
    iget v4, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    .line 19
    sub-int/2addr v1, v4

    .line 20
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    .line 23
    move-result v4

    .line 24
    add-int/2addr v4, v1

    .line 25
    iget v1, p0, Lmiuix/internal/widget/ListPopup;->mMinMarginScreen:I

    .line 27
    add-int/2addr v4, v1

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 35
    move-result v1

    .line 36
    if-le v4, v1, :cond_5d

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 45
    move-result v1

    .line 46
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    .line 49
    move-result v4

    .line 50
    sub-int/2addr v1, v4

    .line 51
    iget v4, p0, Lmiuix/internal/widget/ListPopup;->mMinMarginScreen:I

    .line 53
    sub-int/2addr v1, v4

    .line 54
    aget v0, v0, v3

    .line 56
    sub-int/2addr v1, v0

    .line 57
    goto :goto_5f

    .line 58
    :cond_39
    aget v1, v0, v3

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 63
    move-result v4

    .line 64
    add-int/2addr v4, v1

    .line 65
    iget v1, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    .line 67
    add-int/2addr v4, v1

    .line 68
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    .line 71
    move-result v1

    .line 72
    sub-int/2addr v4, v1

    .line 73
    iget v1, p0, Lmiuix/internal/widget/ListPopup;->mMinMarginScreen:I

    .line 75
    sub-int/2addr v4, v1

    .line 76
    if-gez v4, :cond_5d

    .line 78
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    .line 81
    move-result v1

    .line 82
    iget v4, p0, Lmiuix/internal/widget/ListPopup;->mMinMarginScreen:I

    .line 84
    add-int/2addr v1, v4

    .line 85
    aget v0, v0, v3

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 90
    move-result v4

    .line 91
    add-int/2addr v4, v0

    .line 92
    sub-int/2addr v1, v4

    .line 93
    goto :goto_5f

    .line 94
    :cond_5d
    move v1, v3

    .line 95
    move v2, v1

    .line 96
    :goto_5f
    if-nez v2, :cond_86

    .line 98
    iget-boolean v0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetXSet:Z

    .line 100
    if-eqz v0, :cond_67

    .line 102
    iget v3, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    .line 104
    :cond_67
    if-eqz v3, :cond_85

    .line 106
    if-nez v0, :cond_85

    .line 108
    invoke-static {p1}, Landroidx/appcompat/widget/h1;->a(Landroid/view/View;)Z

    .line 111
    move-result p1

    .line 112
    if-eqz p1, :cond_7b

    .line 114
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 116
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 118
    iget v0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    .line 120
    sub-int/2addr p1, v0

    .line 121
    sub-int v1, v3, p1

    .line 123
    goto :goto_86

    .line 124
    :cond_7b
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 126
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 128
    iget v0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    .line 130
    sub-int/2addr p1, v0

    .line 131
    add-int v1, p1, v3

    .line 133
    goto :goto_86

    .line 134
    :cond_85
    move v1, v3

    .line 135
    :cond_86
    :goto_86
    return v1
.end method

.method private calculateYoffset(Landroid/view/View;)I
    .registers 13

    .line 1
    iget-boolean v0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetYSet:Z

    .line 3
    if-eqz v0, :cond_7

    .line 5
    iget v0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetY:I

    .line 7
    goto :goto_14

    .line 8
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 11
    move-result v0

    .line 12
    neg-int v0, v0

    .line 13
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 15
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 17
    sub-int/2addr v0, v1

    .line 18
    iget v1, p0, Lmiuix/internal/widget/ListPopup;->mOffsetY:I

    .line 20
    add-int/2addr v0, v1

    .line 21
    :goto_14
    const/4 v1, 0x2

    .line 22
    new-array v2, v1, [I

    .line 24
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 27
    const/4 v3, 0x1

    .line 28
    aget v2, v2, v3

    .line 30
    int-to-float v2, v2

    .line 31
    iget-object v4, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    .line 33
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 40
    move-result-object v4

    .line 41
    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 43
    new-array v5, v1, [I

    .line 45
    iget-object v6, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    .line 47
    sget v7, Lmiuix/appcompat/R$attr;->isMiuixFloatingTheme:I

    .line 49
    const/4 v8, 0x0

    .line 50
    invoke-static {v6, v7, v8}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    .line 53
    move-result v6

    .line 54
    if-eqz v6, :cond_86

    .line 56
    iget-object v6, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    .line 58
    instance-of v7, v6, Lmiuix/appcompat/app/AppCompatActivity;

    .line 60
    const v9, 0x1020002

    .line 63
    if-eqz v7, :cond_5a

    .line 65
    check-cast v6, Lmiuix/appcompat/app/AppCompatActivity;

    .line 67
    sget v7, Lmiuix/appcompat/R$id;->action_bar_overlay_layout:I

    .line 69
    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 72
    move-result-object v6

    .line 73
    if-nez v6, :cond_52

    .line 75
    iget-object v6, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    .line 77
    check-cast v6, Lmiuix/appcompat/app/AppCompatActivity;

    .line 79
    invoke-virtual {v6, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 82
    move-result-object v6

    .line 83
    :cond_52
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 86
    move-result v7

    .line 87
    invoke-virtual {v6, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 90
    goto :goto_80

    .line 91
    :cond_5a
    instance-of v7, v6, Landroid/view/ContextThemeWrapper;

    .line 93
    if-eqz v7, :cond_7f

    .line 95
    check-cast v6, Landroid/view/ContextThemeWrapper;

    .line 97
    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 100
    move-result-object v6

    .line 101
    instance-of v7, v6, Lmiuix/appcompat/app/AppCompatActivity;

    .line 103
    if-eqz v7, :cond_7f

    .line 105
    check-cast v6, Lmiuix/appcompat/app/AppCompatActivity;

    .line 107
    sget v7, Lmiuix/appcompat/R$id;->action_bar_overlay_layout:I

    .line 109
    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 112
    move-result-object v7

    .line 113
    if-nez v7, :cond_76

    .line 115
    invoke-virtual {v6, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 118
    move-result-object v7

    .line 119
    :cond_76
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 122
    move-result v6

    .line 123
    invoke-virtual {v7, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 126
    move v7, v6

    .line 127
    goto :goto_80

    .line 128
    :cond_7f
    move v7, v4

    .line 129
    :goto_80
    aget v6, v5, v3

    .line 131
    int-to-float v6, v6

    .line 132
    sub-float v6, v2, v6

    .line 134
    goto :goto_88

    .line 135
    :cond_86
    move v6, v2

    .line 136
    move v7, v4

    .line 137
    :goto_88
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->checkMaxHeight()I

    .line 140
    move-result v9

    .line 141
    if-lez v9, :cond_97

    .line 143
    iget-object v10, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    .line 145
    iget v10, v10, Lmiuix/internal/widget/ListPopup$ContentSize;->mHeight:I

    .line 147
    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    .line 150
    move-result v9

    .line 151
    goto :goto_9b

    .line 152
    :cond_97
    iget-object v9, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    .line 154
    iget v9, v9, Lmiuix/internal/widget/ListPopup$ContentSize;->mHeight:I

    .line 156
    :goto_9b
    if-ge v9, v7, :cond_b6

    .line 158
    int-to-float v10, v0

    .line 159
    add-float/2addr v6, v10

    .line 160
    int-to-float v10, v9

    .line 161
    add-float/2addr v6, v10

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 165
    move-result v10

    .line 166
    int-to-float v10, v10

    .line 167
    add-float/2addr v6, v10

    .line 168
    int-to-float v10, v7

    .line 169
    cmpl-float v6, v6, v10

    .line 171
    if-lez v6, :cond_b6

    .line 173
    iget-boolean v6, p0, Lmiuix/internal/widget/ListPopup;->mOffsetYSet:Z

    .line 175
    if-eqz v6, :cond_b4

    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 180
    move-result v8

    .line 181
    :cond_b4
    add-int/2addr v8, v9

    .line 182
    sub-int/2addr v0, v8

    .line 183
    :cond_b6
    new-array v1, v1, [I

    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 188
    move-result-object v6

    .line 189
    invoke-virtual {v6, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 192
    int-to-float v6, v0

    .line 193
    add-float/2addr v6, v2

    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 197
    move-result p1

    .line 198
    int-to-float p1, p1

    .line 199
    add-float/2addr v6, p1

    .line 200
    float-to-int p1, v6

    .line 201
    aget v2, v1, v3

    .line 203
    if-lt p1, v2, :cond_d7

    .line 205
    aget v2, v5, v3

    .line 207
    if-ge p1, v2, :cond_d7

    .line 209
    sub-int/2addr v2, p1

    .line 210
    sub-int v6, v9, v2

    .line 212
    invoke-virtual {p0, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 215
    add-int/2addr v0, v2

    .line 216
    :cond_d7
    add-int/2addr p1, v9

    .line 217
    aget v1, v1, v3

    .line 219
    add-int/2addr v1, v4

    .line 220
    if-gt p1, v1, :cond_e9

    .line 222
    aget v1, v5, v3

    .line 224
    add-int v2, v1, v7

    .line 226
    if-ge v2, p1, :cond_e9

    .line 228
    sub-int/2addr p1, v1

    .line 229
    sub-int/2addr p1, v7

    .line 230
    sub-int/2addr v9, p1

    .line 231
    invoke-virtual {p0, v9}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 234
    :cond_e9
    return v0
.end method

.method public static changeWindowBackground(Landroid/view/View;)V
    .registers 4

    .line 1
    if-nez p0, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 10
    if-nez v0, :cond_c

    .line 12
    return-void

    .line 13
    :cond_c
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 15
    or-int/lit8 v1, v1, 0x2

    .line 17
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 19
    const v1, 0x3e99999a  # 0.3f

    .line 22
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    move-result-object v1

    .line 28
    const-string v2, "window"

    .line 30
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Landroid/view/WindowManager;

    .line 36
    invoke-interface {v1, p0, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    return-void
.end method

.method private getAnchor()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/View;

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    return-object v0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->dismiss()V

    .line 4
    return-void
.end method

.method private synthetic lambda$new$1()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 8
    :cond_7
    return-void
.end method

.method private synthetic lambda$prepareShow$2(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13

    .line 1
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mListView:Landroid/widget/ListView;

    .line 3
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    .line 6
    move-result v0

    .line 7
    sub-int v4, p3, v0

    .line 9
    iget-object p3, p0, Lmiuix/internal/widget/ListPopup;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 11
    if-eqz p3, :cond_1e

    .line 13
    if-ltz v4, :cond_1e

    .line 15
    iget-object p3, p0, Lmiuix/internal/widget/ListPopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 17
    invoke-interface {p3}, Landroid/widget/Adapter;->getCount()I

    .line 20
    move-result p3

    .line 21
    if-ge v4, p3, :cond_1e

    .line 23
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 25
    move-object v2, p1

    .line 26
    move-object v3, p2

    .line 27
    move-wide v5, p4

    .line 28
    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 31
    :cond_1e
    return-void
.end method

.method private measureContentSize(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)V
    .registers 15

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 5
    move-result v1

    .line 6
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 9
    move-result v2

    .line 10
    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    .line 13
    move-result v3

    .line 14
    const/4 v4, 0x0

    .line 15
    move v5, v0

    .line 16
    move v6, v5

    .line 17
    move v7, v6

    .line 18
    move-object v8, v4

    .line 19
    :goto_12
    if-ge v0, v3, :cond_48

    .line 21
    invoke-interface {p1, v0}, Landroid/widget/Adapter;->getItemViewType(I)I

    .line 24
    move-result v9

    .line 25
    if-eq v9, v5, :cond_1c

    .line 27
    move-object v8, v4

    .line 28
    move v5, v9

    .line 29
    :cond_1c
    if-nez p2, :cond_23

    .line 31
    new-instance p2, Landroid/widget/FrameLayout;

    .line 33
    invoke-direct {p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 36
    :cond_23
    invoke-interface {p1, v0, v8, p2}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 39
    move-result-object v8

    .line 40
    invoke-virtual {v8, v1, v2}, Landroid/view/View;->measure(II)V

    .line 43
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    .line 46
    move-result v9

    .line 47
    add-int/2addr v7, v9

    .line 48
    iget-object v9, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    .line 50
    iget-boolean v9, v9, Lmiuix/internal/widget/ListPopup$ContentSize;->mHasContentWidth:Z

    .line 52
    if-eqz v9, :cond_36

    .line 54
    goto :goto_45

    .line 55
    :cond_36
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 58
    move-result v9

    .line 59
    if-lt v9, p4, :cond_42

    .line 61
    iget-object v9, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    .line 63
    invoke-virtual {v9, p4}, Lmiuix/internal/widget/ListPopup$ContentSize;->updateWidth(I)V

    .line 66
    goto :goto_45

    .line 67
    :cond_42
    if-le v9, v6, :cond_45

    .line 69
    move v6, v9

    .line 70
    :cond_45
    :goto_45
    add-int/lit8 v0, v0, 0x1

    .line 72
    goto :goto_12

    .line 73
    :cond_48
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    .line 75
    iget-boolean p2, p1, Lmiuix/internal/widget/ListPopup$ContentSize;->mHasContentWidth:Z

    .line 77
    if-nez p2, :cond_51

    .line 79
    invoke-virtual {p1, v6}, Lmiuix/internal/widget/ListPopup$ContentSize;->updateWidth(I)V

    .line 82
    :cond_51
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    .line 84
    iput v7, p1, Lmiuix/internal/widget/ListPopup$ContentSize;->mHeight:I

    .line 86
    return-void
.end method

.method private setAnimationStyleByGravity(I)V
    .registers 4

    .line 1
    sget v0, Lmiuix/appcompat/R$style;->Animation_PopupWindow_ImmersionMenu:I

    .line 3
    const/16 v1, 0x33

    .line 5
    if-ne p1, v1, :cond_9

    .line 7
    sget v0, Lmiuix/appcompat/R$style;->Animation_PopupWindow_ImmersionMenu_LeftTop:I

    .line 9
    goto :goto_32

    .line 10
    :cond_9
    const/16 v1, 0x53

    .line 12
    if-ne p1, v1, :cond_10

    .line 14
    sget v0, Lmiuix/appcompat/R$style;->Animation_PopupWindow_ImmersionMenu_LeftBottom:I

    .line 16
    goto :goto_32

    .line 17
    :cond_10
    const/16 v1, 0x35

    .line 19
    if-ne p1, v1, :cond_17

    .line 21
    sget v0, Lmiuix/appcompat/R$style;->Animation_PopupWindow_ImmersionMenu_RightTop:I

    .line 23
    goto :goto_32

    .line 24
    :cond_17
    const/16 v1, 0x55

    .line 26
    if-ne p1, v1, :cond_1e

    .line 28
    sget v0, Lmiuix/appcompat/R$style;->Animation_PopupWindow_ImmersionMenu_RightBottom:I

    .line 30
    goto :goto_32

    .line 31
    :cond_1e
    const/16 v1, 0x30

    .line 33
    if-ne p1, v1, :cond_25

    .line 35
    sget v0, Lmiuix/appcompat/R$style;->Animation_PopupWindow_ImmersionMenu_Top:I

    .line 37
    goto :goto_32

    .line 38
    :cond_25
    const/16 v1, 0x50

    .line 40
    if-ne p1, v1, :cond_2c

    .line 42
    sget v0, Lmiuix/appcompat/R$style;->Animation_PopupWindow_ImmersionMenu_Bottom:I

    .line 44
    goto :goto_32

    .line 45
    :cond_2c
    const/16 v1, 0x11

    .line 47
    if-ne p1, v1, :cond_32

    .line 49
    sget v0, Lmiuix/appcompat/R$style;->Animation_PopupWindow_ImmersionMenu_Center:I

    .line 51
    :cond_32
    :goto_32
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 54
    return-void
.end method

.method private shouldSetElevation()Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/internal/widget/ListPopup;->mHasShadow:Z

    .line 3
    if-eqz v0, :cond_14

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    const/16 v1, 0x1d

    .line 9
    if-gt v0, v1, :cond_12

    .line 11
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    .line 13
    invoke-static {v0}, Lmiuix/internal/util/AccessibilityUtil;->isTalkBackActive(Landroid/content/Context;)Z

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_14

    .line 19
    :cond_12
    const/4 v0, 0x1

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    const/4 v0, 0x0

    .line 22
    :goto_15
    return v0
.end method

.method private showWithAnchor(Landroid/view/View;)V
    .registers 6

    .line 1
    invoke-direct {p0, p1}, Lmiuix/internal/widget/ListPopup;->calculateYoffset(Landroid/view/View;)I

    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, p1}, Lmiuix/internal/widget/ListPopup;->calculateXoffset(Landroid/view/View;)I

    .line 8
    move-result v1

    .line 9
    if-ltz v0, :cond_d

    .line 11
    const/16 v2, 0x30

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    const/16 v2, 0x50

    .line 16
    :goto_f
    if-ltz v1, :cond_14

    .line 18
    or-int/lit8 v2, v2, 0x3

    .line 20
    goto :goto_16

    .line 21
    :cond_14
    or-int/lit8 v2, v2, 0x5

    .line 23
    :goto_16
    invoke-direct {p0, v2}, Lmiuix/internal/widget/ListPopup;->setAnimationStyleByGravity(I)V

    .line 26
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_26

    .line 32
    sget v2, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_SMALL:I

    .line 34
    sget v3, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_NORMAL:I

    .line 36
    invoke-static {p1, v2, v3}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;II)Z

    .line 39
    :cond_26
    iget v2, p0, Lmiuix/internal/widget/ListPopup;->mDropDownGravity:I

    .line 41
    invoke-virtual {p0, p1, v1, v0, v2}, Lmiuix/internal/widget/ListPopup;->showAsDropDown(Landroid/view/View;III)V

    .line 44
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 49
    move-result-object p1

    .line 50
    invoke-static {p1}, Lmiuix/internal/widget/ListPopup;->changeWindowBackground(Landroid/view/View;)V

    .line 53
    return-void
.end method


# virtual methods
.method public checkMaxHeight()I
    .registers 4

    .line 1
    new-instance v0, Lmiuix/internal/util/DisplayHelper;

    .line 3
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    .line 5
    invoke-direct {v0, v1}, Lmiuix/internal/util/DisplayHelper;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-virtual {v0}, Lmiuix/internal/util/DisplayHelper;->getHeightPixels()I

    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static {v1, v2}, Lmiuix/core/util/EnvStateManager;->getStatusBarHeight(Landroid/content/Context;Z)I

    .line 18
    move-result v1

    .line 19
    sub-int/2addr v0, v1

    .line 20
    iget v1, p0, Lmiuix/internal/widget/ListPopup;->mMaxAllowedHeight:I

    .line 22
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 25
    move-result v0

    .line 26
    return v0
.end method

.method public computePopupContentWidth()I
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    .line 3
    iget-boolean v0, v0, Lmiuix/internal/widget/ListPopup$ContentSize;->mHasContentWidth:Z

    .line 5
    if-nez v0, :cond_10

    .line 7
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 9
    const/4 v1, 0x0

    .line 10
    iget-object v2, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    .line 12
    iget v3, p0, Lmiuix/internal/widget/ListPopup;->mMaxAllowedWidth:I

    .line 14
    invoke-direct {p0, v0, v1, v2, v3}, Lmiuix/internal/widget/ListPopup;->measureContentSize(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)V

    .line 17
    :cond_10
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    .line 19
    iget v0, v0, Lmiuix/internal/widget/ListPopup$ContentSize;->mWidth:I

    .line 21
    iget v1, p0, Lmiuix/internal/widget/ListPopup;->mMinAllowedWidth:I

    .line 23
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 29
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 31
    add-int/2addr v0, v2

    .line 32
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 34
    add-int/2addr v0, v1

    .line 35
    return v0
.end method

.method public dismiss()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    .line 6
    invoke-static {v0, p0}, Lmiuix/appcompat/internal/util/SinglePopControl;->hidePop(Landroid/content/Context;Ljava/lang/Object;)V

    .line 9
    return-void
.end method

.method public fastShow(Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->computePopupContentWidth()I

    .line 4
    move-result p2

    .line 5
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 8
    iget-object p2, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    .line 10
    iget p2, p2, Lmiuix/internal/widget/ListPopup$ContentSize;->mHeight:I

    .line 12
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->checkMaxHeight()I

    .line 15
    move-result v0

    .line 16
    if-le p2, v0, :cond_12

    .line 18
    move p2, v0

    .line 19
    :cond_12
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 22
    invoke-direct {p0, p1}, Lmiuix/internal/widget/ListPopup;->showWithAnchor(Landroid/view/View;)V

    .line 25
    return-void
.end method

.method public getHorizontalOffset()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    .line 3
    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mListView:Landroid/widget/ListView;

    .line 3
    return-object v0
.end method

.method public getMinMarginScreen()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/internal/widget/ListPopup;->mMinMarginScreen:I

    .line 3
    return v0
.end method

.method public getOffsetFromStatusBar()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetFromStatusBar:I

    .line 3
    return v0
.end method

.method public getVerticalOffset()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetY:I

    .line 3
    return v0
.end method

.method public isNeedScroll()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->checkMaxHeight()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    .line 7
    iget v1, v1, Lmiuix/internal/widget/ListPopup$ContentSize;->mHeight:I

    .line 9
    if-le v1, v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public prepareContentView(Landroid/content/Context;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    .line 3
    sget v0, Lmiuix/appcompat/R$attr;->immersionWindowBackground:I

    .line 5
    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_14

    .line 11
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 13
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 16
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    .line 18
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 21
    :cond_14
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 27
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 30
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    .line 32
    invoke-virtual {p0, p1}, Lmiuix/internal/widget/ListPopup;->setPopupWindowContentView(Landroid/view/View;)V

    .line 35
    return-void
.end method

.method public prepareShow(Landroid/view/View;Landroid/view/ViewGroup;)Z
    .registers 8

    .line 1
    const-string p2, "ListPopupWindow"

    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p1, :cond_b

    .line 6
    const-string p1, "show: anchor is null"

    .line 8
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    return v0

    .line 12
    :cond_b
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    .line 14
    if-nez v1, :cond_26

    .line 16
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    .line 18
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 21
    move-result-object v1

    .line 22
    sget v2, Lmiuix/appcompat/R$layout;->miuix_appcompat_list_popup_list:I

    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 28
    move-result-object v1

    .line 29
    iput-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    .line 31
    new-instance v2, Lmiuix/internal/widget/ListPopup$2;

    .line 33
    invoke-direct {v2, p0}, Lmiuix/internal/widget/ListPopup$2;-><init>(Lmiuix/internal/widget/ListPopup;)V

    .line 36
    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 39
    :cond_26
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    .line 41
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 44
    move-result v1

    .line 45
    const/4 v2, -0x2

    .line 46
    const/4 v3, 0x1

    .line 47
    if-ne v1, v3, :cond_3a

    .line 49
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    .line 51
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 54
    move-result-object v1

    .line 55
    iget-object v4, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    .line 57
    if-eq v1, v4, :cond_57

    .line 59
    :cond_3a
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    .line 61
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 64
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    .line 66
    iget-object v4, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    .line 68
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 71
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    .line 73
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 79
    const/4 v4, -0x1

    .line 80
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 82
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 84
    const/16 v4, 0x10

    .line 86
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 88
    :cond_57
    invoke-direct {p0}, Lmiuix/internal/widget/ListPopup;->shouldSetElevation()Z

    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_73

    .line 94
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    .line 96
    iget v4, p0, Lmiuix/internal/widget/ListPopup;->mElevation:I

    .line 98
    int-to-float v4, v4

    .line 99
    invoke-virtual {v1, v4}, Landroid/view/View;->setElevation(F)V

    .line 102
    iget v1, p0, Lmiuix/internal/widget/ListPopup;->mElevation:I

    .line 104
    iget v4, p0, Lmiuix/internal/widget/ListPopup;->mElevationExtra:I

    .line 106
    add-int/2addr v1, v4

    .line 107
    int-to-float v1, v1

    .line 108
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 111
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    .line 113
    invoke-virtual {p0, v1}, Lmiuix/internal/widget/ListPopup;->setPopupShadowAlpha(Landroid/view/View;)V

    .line 116
    :cond_73
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    .line 118
    const v4, 0x102000a

    .line 121
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 124
    move-result-object v1

    .line 125
    check-cast v1, Landroid/widget/ListView;

    .line 127
    iput-object v1, p0, Lmiuix/internal/widget/ListPopup;->mListView:Landroid/widget/ListView;

    .line 129
    if-nez v1, :cond_88

    .line 131
    const-string p1, "list not found"

    .line 133
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return v0

    .line 137
    :cond_88
    new-instance p2, Lcom/android/fileexplorer/mirror/view/d;

    .line 139
    invoke-direct {p2, p0, v3}, Lcom/android/fileexplorer/mirror/view/d;-><init>(Ljava/lang/Object;I)V

    .line 142
    invoke-virtual {v1, p2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 145
    iget-object p2, p0, Lmiuix/internal/widget/ListPopup;->mListView:Landroid/widget/ListView;

    .line 147
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 149
    invoke-virtual {p2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 152
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->computePopupContentWidth()I

    .line 155
    move-result p2

    .line 156
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 159
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->checkMaxHeight()I

    .line 162
    move-result p2

    .line 163
    if-lez p2, :cond_ab

    .line 165
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    .line 167
    iget v1, v1, Lmiuix/internal/widget/ListPopup$ContentSize;->mHeight:I

    .line 169
    if-le v1, p2, :cond_ab

    .line 171
    move v2, p2

    .line 172
    :cond_ab
    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 175
    iget-object p2, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    .line 177
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 180
    move-result-object p2

    .line 181
    const-string v1, "input_method"

    .line 183
    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 186
    move-result-object p2

    .line 187
    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 192
    move-result-object p1

    .line 193
    invoke-virtual {p2, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 196
    return v3
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mObserver:Landroid/database/DataSetObserver;

    .line 7
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 10
    :cond_9
    iput-object p1, p0, Lmiuix/internal/widget/ListPopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 12
    if-eqz p1, :cond_12

    .line 14
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mObserver:Landroid/database/DataSetObserver;

    .line 16
    invoke-interface {p1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 19
    :cond_12
    return-void
.end method

.method public setContentWidth(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/internal/widget/ListPopup$ContentSize;->updateWidth(I)V

    .line 6
    return-void
.end method

.method public setDropDownGravity(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/internal/widget/ListPopup;->mDropDownGravity:I

    .line 3
    return-void
.end method

.method public setHasShadow(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/internal/widget/ListPopup;->mHasShadow:Z

    .line 3
    return-void
.end method

.method public setHorizontalOffset(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lmiuix/internal/widget/ListPopup;->mOffsetXSet:Z

    .line 6
    return-void
.end method

.method public setMaxAllowedHeight(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/internal/widget/ListPopup;->mMaxAllowedHeight:I

    .line 3
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/internal/widget/ListPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 3
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/internal/widget/ListPopup;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 3
    return-void
.end method

.method public setPopupShadowAlpha(Landroid/view/View;)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    .line 5
    invoke-static {v1}, Lmiuix/core/util/MiuixUIUtils;->isFreeformMode(Landroid/content/Context;)Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_f

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 15
    goto :goto_26

    .line 16
    :cond_f
    new-instance v1, Lmiuix/internal/widget/ListPopup$3;

    .line 18
    invoke-direct {v1, p0}, Lmiuix/internal/widget/ListPopup$3;-><init>(Lmiuix/internal/widget/ListPopup;)V

    .line 21
    invoke-virtual {p1, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 24
    const/16 v1, 0x1c

    .line 26
    if-lt v0, v1, :cond_26

    .line 28
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    .line 30
    sget v1, Lmiuix/appcompat/R$color;->miuix_appcompat_drop_down_menu_spot_shadow_color:I

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 35
    move-result v0

    .line 36
    invoke-static {v0, p1}, Lmiuix/appcompat/app/f;->b(ILandroid/view/View;)V

    .line 39
    :cond_26
    :goto_26
    return-void
.end method

.method public setPopupWindowContentView(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 4
    return-void
.end method

.method public setVerticalOffset(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/internal/widget/ListPopup;->mOffsetY:I

    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lmiuix/internal/widget/ListPopup;->mOffsetYSet:Z

    .line 6
    return-void
.end method

.method public show(Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lmiuix/internal/widget/ListPopup;->prepareShow(Landroid/view/View;Landroid/view/ViewGroup;)Z

    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_9

    .line 7
    invoke-direct {p0, p1}, Lmiuix/internal/widget/ListPopup;->showWithAnchor(Landroid/view/View;)V

    .line 10
    :cond_9
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 4
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object p2, p0, Lmiuix/internal/widget/ListPopup;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 11
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    .line 13
    invoke-static {p1, p0}, Lmiuix/appcompat/internal/util/SinglePopControl;->showPop(Landroid/content/Context;Ljava/lang/Object;)V

    .line 16
    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .registers 12

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 9
    new-instance v1, Landroid/graphics/Rect;

    .line 11
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 14
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    .line 17
    move-result v2

    .line 18
    add-int/2addr v2, p3

    .line 19
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    .line 22
    move-result v3

    .line 23
    add-int/2addr v3, p4

    .line 24
    invoke-virtual {v1, p3, p4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    const-string v3, " x "

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    const-string v3, " y "

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    const-string v3, " parent rect "

    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    const-string v3, " popRect "

    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v2

    .line 68
    const-string v3, "ListPopup"

    .line 70
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 75
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    .line 78
    move-result v3

    .line 79
    if-le v2, v3, :cond_53

    .line 81
    const/16 v2, 0x30

    .line 83
    goto :goto_5f

    .line 84
    :cond_53
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 86
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    .line 89
    move-result v3

    .line 90
    if-gt v2, v3, :cond_5e

    .line 92
    const/16 v2, 0x50

    .line 94
    goto :goto_5f

    .line 95
    :cond_5e
    const/4 v2, 0x0

    .line 96
    :goto_5f
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 98
    iget v4, v0, Landroid/graphics/Rect;->left:I

    .line 100
    if-lt v3, v4, :cond_6e

    .line 102
    iget v5, v1, Landroid/graphics/Rect;->right:I

    .line 104
    iget v6, v0, Landroid/graphics/Rect;->right:I

    .line 106
    if-le v5, v6, :cond_6e

    .line 108
    or-int/lit8 v2, v2, 0x3

    .line 110
    goto :goto_78

    .line 111
    :cond_6e
    iget v5, v1, Landroid/graphics/Rect;->right:I

    .line 113
    iget v6, v0, Landroid/graphics/Rect;->right:I

    .line 115
    if-gt v5, v6, :cond_78

    .line 117
    if-ge v3, v4, :cond_78

    .line 119
    or-int/lit8 v2, v2, 0x5

    .line 121
    :cond_78
    :goto_78
    if-nez v2, :cond_82

    .line 123
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_82

    .line 129
    const/16 v2, 0x11

    .line 131
    :cond_82
    invoke-direct {p0, v2}, Lmiuix/internal/widget/ListPopup;->setAnimationStyleByGravity(I)V

    .line 134
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 137
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    .line 139
    invoke-static {p1, p0}, Lmiuix/appcompat/internal/util/SinglePopControl;->showPop(Landroid/content/Context;Ljava/lang/Object;)V

    .line 142
    return-void
.end method

.method public update(IIIIZ)V
    .registers 10

    .line 1
    invoke-direct {p0}, Lmiuix/internal/widget/ListPopup;->getAnchor()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lmiuix/animation/ViewHoverListener;

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_1d

    .line 11
    move-object v1, v0

    .line 12
    check-cast v1, Lmiuix/animation/ViewHoverListener;

    .line 14
    invoke-interface {v1}, Lmiuix/animation/ViewHoverListener;->isHover()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1d

    .line 20
    new-array p1, v3, [Ljava/lang/Object;

    .line 22
    aput-object v0, p1, v2

    .line 24
    const-string p2, "popupWindow update return"

    .line 26
    invoke-static {p2, p1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    return-void

    .line 30
    :cond_1d
    new-array v1, v3, [Ljava/lang/Object;

    .line 32
    aput-object v0, v1, v2

    .line 34
    const-string v0, "popupWindow update execute"

    .line 36
    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-super/range {p0 .. p5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 42
    return-void
.end method
