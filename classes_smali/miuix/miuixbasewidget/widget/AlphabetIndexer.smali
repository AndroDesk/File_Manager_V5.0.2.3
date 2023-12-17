.class public Lmiuix/miuixbasewidget/widget/AlphabetIndexer;
.super Landroid/widget/LinearLayout;
.source "AlphabetIndexer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;,
        Lmiuix/miuixbasewidget/widget/AlphabetIndexer$ScrollTargetInfo;,
        Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;
    }
.end annotation


# static fields
.field private static final MSG_FADE:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SCROLL:I = 0x1

.field private static final STARRED_LABEL:Ljava/lang/String; = "♥"

.field public static final STARRED_TITLE:Ljava/lang/String; = "!"

.field public static final STATE_NONE:I


# instance fields
.field private final INVALID_INDEX:I

.field private mAdapter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;

.field private mCancelOverlayTextColorAnim:Z

.field private mCurVirtualViewId:I

.field private mDrawOverlay:Z

.field private mEnableAutoDismiss:Z

.field private mFirstOmitItem:Landroid/widget/ImageView;

.field private mGroupCount:I

.field private mGroupItemCount:I

.field private mHandler:Landroid/os/Handler;

.field private mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

.field private mIndexWidth:I

.field private mIndexer:Landroid/widget/SectionIndexer;

.field private mItemHeight:I

.field private mItemMargin:I

.field private mLastAlphabetIndex:I

.field private mLastSelectedItem:Landroid/view/View;

.field private mLeftCount:I

.field private mListScrollState:I

.field private mMaxItemMargin:I

.field private mMinItemMargin:I

.field private mOmitItemHeight:I

.field private mOverlay:Landroid/widget/TextView;

.field private mOverlayBackground:Landroid/graphics/drawable/Drawable;

.field private mOverlayHeight:I

.field private mOverlayHideAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private mOverlayShowAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private mOverlayTextAppearanceRes:I

.field private mOverlayTextColor:I

.field private mOverlayTextPaint:Landroid/text/TextPaint;

.field private mOverlayTextSize:I

.field private mOverlayWidth:I

.field private mParentLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mParentView:Landroid/view/View;

.field private mScreenHeightDp:I

.field public mSectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedAlphaIndex:I

.field private mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

.field private mUsageAlarmVibrationAttributes:Landroid/os/VibrationAttributes;

.field private mUseOmit:Z

.field private mVerticalPosition:I

.field private mViewHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    sget v0, Lmiuix/miuixbasewidget/R$attr;->miuixAppcompatAlphabetIndexerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->INVALID_INDEX:I

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mGroupItemCount:I

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mLeftCount:I

    .line 7
    iput v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mGroupCount:I

    .line 8
    iput p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mSelectedAlphaIndex:I

    .line 9
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mSectionMap:Ljava/util/HashMap;

    .line 10
    iput v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mListScrollState:I

    .line 11
    iput-boolean v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mUseOmit:Z

    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mParentView:Landroid/view/View;

    .line 13
    new-instance v1, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$1;

    invoke-direct {v1, p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$1;-><init>(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)V

    iput-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mParentLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 14
    iput-boolean v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mEnableAutoDismiss:Z

    .line 15
    iput p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mScreenHeightDp:I

    .line 16
    new-instance v0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$4;

    invoke-direct {v0, p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$4;-><init>(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)V

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mHandler:Landroid/os/Handler;

    .line 17
    iput p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mCurVirtualViewId:I

    .line 18
    invoke-direct {p0, p2, p3}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->parseAttrs(Landroid/util/AttributeSet;I)V

    .line 19
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->init()V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->updateItemsAfterParentVisibleHeightChanged(I)V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mEnableAutoDismiss:Z

    .line 3
    return p0
.end method

.method public static synthetic access$200(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->stop(I)V

    .line 4
    return-void
.end method

.method public static synthetic access$300(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;F)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->updateOverlayTranslationX(F)V

    .line 4
    return-void
.end method

.method public static synthetic access$400(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mCancelOverlayTextColorAnim:Z

    .line 3
    return p0
.end method

.method public static synthetic access$402(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mCancelOverlayTextColorAnim:Z

    .line 3
    return p1
.end method

.method public static synthetic access$500(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;F)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->updateOverlayTextAlpha(F)V

    .line 4
    return-void
.end method

.method public static synthetic access$600(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->hideOverlay()V

    .line 4
    return-void
.end method

.method private calculateIndex(F)I
    .registers 8

    .line 1
    iget v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemMargin:I

    .line 3
    iget v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemHeight:I

    .line 5
    mul-int/lit8 v0, v0, 0x2

    .line 7
    add-int/2addr v0, v1

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_1d

    .line 15
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 21
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 23
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 26
    move-result v2

    .line 27
    mul-int/lit8 v0, v0, 0x2

    .line 29
    add-int/2addr v0, v2

    .line 30
    :cond_1d
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    .line 32
    iget-object v2, v2, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mIndexes:[Ljava/lang/String;

    .line 34
    array-length v2, v2

    .line 35
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 38
    move-result v3

    .line 39
    int-to-float v4, v0

    .line 40
    cmpg-float v5, p1, v4

    .line 42
    if-lez v5, :cond_8a

    .line 44
    if-ne v2, v3, :cond_32

    .line 46
    iget-boolean v3, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mUseOmit:Z

    .line 48
    if-nez v3, :cond_32

    .line 50
    goto :goto_8a

    .line 51
    :cond_32
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 54
    move-result v3

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 58
    move-result v5

    .line 59
    sub-int/2addr v3, v5

    .line 60
    mul-int/lit8 v5, v0, 0x2

    .line 62
    sub-int/2addr v3, v5

    .line 63
    int-to-float v3, v3

    .line 64
    cmpl-float v3, p1, v3

    .line 66
    if-lez v3, :cond_55

    .line 68
    add-int/lit8 v2, v2, -0x2

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 73
    move-result v1

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 77
    move-result v3

    .line 78
    sub-int/2addr v1, v3

    .line 79
    sub-int/2addr v1, v5

    .line 80
    int-to-float v1, v1

    .line 81
    sub-float/2addr p1, v1

    .line 82
    float-to-int p1, p1

    .line 83
    div-int/2addr p1, v0

    .line 84
    add-int/2addr p1, v2

    .line 85
    return p1

    .line 86
    :cond_55
    iget v2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOmitItemHeight:I

    .line 88
    iget v3, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemMargin:I

    .line 90
    mul-int/lit8 v3, v3, 0x2

    .line 92
    add-int/2addr v3, v2

    .line 93
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mFirstOmitItem:Landroid/widget/ImageView;

    .line 95
    if-eqz v2, :cond_69

    .line 97
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 100
    move-result v2

    .line 101
    iget v3, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemMargin:I

    .line 103
    mul-int/lit8 v3, v3, 0x2

    .line 105
    add-int/2addr v3, v2

    .line 106
    :cond_69
    add-int/2addr v3, v0

    .line 107
    sub-float/2addr p1, v4

    .line 108
    float-to-int p1, p1

    .line 109
    div-int v2, p1, v3

    .line 111
    rem-int/2addr p1, v3

    .line 112
    const/4 v3, 0x1

    .line 113
    if-le p1, v0, :cond_73

    .line 115
    move v1, v3

    .line 116
    :cond_73
    iget p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mLeftCount:I

    .line 118
    if-ge v2, p1, :cond_7e

    .line 120
    iget p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mGroupItemCount:I

    .line 122
    add-int/2addr p1, v3

    .line 123
    mul-int/2addr p1, v2

    .line 124
    add-int/2addr p1, v3

    .line 125
    add-int/2addr p1, v1

    .line 126
    goto :goto_89

    .line 127
    :cond_7e
    iget v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mGroupItemCount:I

    .line 129
    add-int/lit8 v4, v0, 0x1

    .line 131
    mul-int/2addr v4, p1

    .line 132
    add-int/2addr v4, v3

    .line 133
    sub-int/2addr v2, p1

    .line 134
    mul-int/2addr v2, v0

    .line 135
    add-int/2addr v2, v4

    .line 136
    add-int p1, v2, v1

    .line 138
    :goto_89
    return p1

    .line 139
    :cond_8a
    :goto_8a
    div-float/2addr p1, v4

    .line 140
    float-to-int p1, p1

    .line 141
    return p1
.end method

.method private calculateOverlayPosition(I)I
    .registers 6

    .line 1
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getChildIndex(I)I

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_c

    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 20
    move-result v0

    .line 21
    add-int/2addr v0, v1

    .line 22
    div-int/lit8 v0, v0, 0x2

    .line 24
    if-gtz v0, :cond_2a

    .line 26
    add-int/lit8 p1, p1, 0x1

    .line 28
    int-to-double v0, p1

    .line 29
    const-wide/high16 v2, 0x3fe0000000000000L  # 0.5

    .line 31
    add-double/2addr v0, v2

    .line 32
    iget p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemHeight:I

    .line 34
    int-to-double v2, p1

    .line 35
    mul-double/2addr v0, v2

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 39
    move-result p1

    .line 40
    int-to-double v2, p1

    .line 41
    add-double/2addr v0, v2

    .line 42
    double-to-int v0, v0

    .line 43
    :cond_2a
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getMarginTop()I

    .line 46
    move-result p1

    .line 47
    add-int/2addr v0, p1

    .line 48
    return v0
.end method

.method private clearLastChecked(I)V
    .registers 3

    .line 1
    if-gez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getChildIndex(I)I

    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object p1

    .line 12
    instance-of v0, p1, Landroid/widget/TextView;

    .line 14
    if-eqz v0, :cond_19

    .line 16
    check-cast p1, Landroid/widget/TextView;

    .line 18
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    .line 20
    iget v0, v0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mNormalColor:I

    .line 22
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    goto :goto_24

    .line 26
    :cond_19
    instance-of v0, p1, Landroid/widget/ImageView;

    .line 28
    if-eqz v0, :cond_24

    .line 30
    check-cast p1, Landroid/widget/ImageView;

    .line 32
    sget v0, Lmiuix/miuixbasewidget/R$drawable;->miuix_ic_omit:I

    .line 34
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 37
    :cond_24
    :goto_24
    return-void
.end method

.method private constructItem(I)V
    .registers 11

    .line 1
    iput p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemMargin:I

    .line 3
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 5
    const/4 v1, -0x1

    .line 6
    const/4 v2, -0x2

    .line 7
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 10
    const/4 v2, 0x1

    .line 11
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 13
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 15
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 17
    const/high16 p1, 0x3f800000  # 1.0f

    .line 19
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 21
    const-string p1, "mipro-medium"

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-static {p1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 27
    move-result-object p1

    .line 28
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    .line 30
    iget-object v3, v3, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mIndexes:[Ljava/lang/String;

    .line 32
    array-length v4, v3

    .line 33
    move v5, v2

    .line 34
    :goto_21
    if-ge v5, v4, :cond_64

    .line 36
    aget-object v6, v3, v5

    .line 38
    new-instance v7, Landroid/widget/TextView;

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    move-result-object v8

    .line 44
    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 50
    const/16 v8, 0x11

    .line 52
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 55
    iget v8, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemHeight:I

    .line 57
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setHeight(I)V

    .line 60
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 63
    iget-object v8, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    .line 65
    iget v8, v8, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mNormalColor:I

    .line 67
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    iget-object v8, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    .line 72
    iget v8, v8, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mIndexerTextSize:I

    .line 74
    int-to-float v8, v8

    .line 75
    invoke-virtual {v7, v2, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 78
    const-string v8, "!"

    .line 80
    invoke-static {v6, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 83
    move-result v8

    .line 84
    if-eqz v8, :cond_57

    .line 86
    const-string v6, "♥"

    .line 88
    :cond_57
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    const/4 v6, 0x2

    .line 92
    invoke-virtual {v7, v6}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 95
    invoke-virtual {p0, v7, v1, v0}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 98
    add-int/lit8 v5, v5, 0x1

    .line 100
    goto :goto_21

    .line 101
    :cond_64
    iput-boolean v2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mUseOmit:Z

    .line 103
    return-void
.end method

.method private constructItemWithOmit(I)V
    .registers 12

    .line 1
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getMarginTop()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x1

    .line 7
    if-gtz v0, :cond_12

    .line 9
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getMarginTop()I

    .line 12
    move-result v0

    .line 13
    iget v3, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayHeight:I

    .line 15
    div-int/2addr v3, v1

    .line 16
    add-int/2addr v3, v0

    .line 17
    add-int/2addr v3, v2

    .line 18
    goto :goto_16

    .line 19
    :cond_12
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getMarginTop()I

    .line 22
    move-result v3

    .line 23
    :goto_16
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getMarginBottom()I

    .line 26
    move-result v0

    .line 27
    if-gtz v0, :cond_26

    .line 29
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getMarginBottom()I

    .line 32
    move-result v0

    .line 33
    iget v4, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayHeight:I

    .line 35
    div-int/2addr v4, v1

    .line 36
    add-int/2addr v4, v0

    .line 37
    add-int/2addr v4, v2

    .line 38
    goto :goto_2a

    .line 39
    :cond_26
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getMarginBottom()I

    .line 42
    move-result v4

    .line 43
    :goto_2a
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 46
    move-result v0

    .line 47
    sub-int v0, p1, v0

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 52
    move-result v5

    .line 53
    sub-int/2addr v0, v5

    .line 54
    add-int v5, v0, v3

    .line 56
    add-int/2addr v5, v4

    .line 57
    if-lt v5, p1, :cond_3c

    .line 59
    add-int/2addr v3, v4

    .line 60
    sub-int/2addr v0, v3

    .line 61
    :cond_3c
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    .line 63
    iget-object p1, p1, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mIndexes:[Ljava/lang/String;

    .line 65
    array-length p1, p1

    .line 66
    iget v3, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemHeight:I

    .line 68
    iget v4, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mMinItemMargin:I

    .line 70
    mul-int/lit8 v5, v4, 0x2

    .line 72
    add-int/2addr v5, v3

    .line 73
    iget v3, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOmitItemHeight:I

    .line 75
    add-int/2addr v3, v5

    .line 76
    mul-int/lit8 v6, v4, 0x2

    .line 78
    add-int/2addr v6, v3

    .line 79
    mul-int/lit8 v5, v5, 0x3

    .line 81
    sub-int/2addr v0, v5

    .line 82
    div-int v3, v0, v6

    .line 84
    iput v3, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mGroupCount:I

    .line 86
    if-ge v3, v2, :cond_59

    .line 88
    iput v2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mGroupCount:I

    .line 90
    :cond_59
    rem-int/2addr v0, v6

    .line 91
    add-int/lit8 v3, p1, -0x3

    .line 93
    iget v5, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mGroupCount:I

    .line 95
    div-int v7, v3, v5

    .line 97
    iput v7, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mGroupItemCount:I

    .line 99
    if-ge v7, v1, :cond_6d

    .line 101
    iput v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mGroupItemCount:I

    .line 103
    div-int/lit8 v7, v3, 0x2

    .line 105
    sub-int/2addr v5, v7

    .line 106
    mul-int/2addr v5, v6

    .line 107
    add-int/2addr v0, v5

    .line 108
    iput v7, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mGroupCount:I

    .line 110
    :cond_6d
    iget v5, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mGroupItemCount:I

    .line 112
    iget v6, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mGroupCount:I

    .line 114
    mul-int/2addr v5, v6

    .line 115
    sub-int/2addr v3, v5

    .line 116
    iput v3, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mLeftCount:I

    .line 118
    iput v4, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemMargin:I

    .line 120
    if-lez v0, :cond_81

    .line 122
    div-int/2addr v0, v1

    .line 123
    mul-int/2addr v6, v1

    .line 124
    add-int/lit8 v6, v6, 0x3

    .line 126
    div-int/2addr v0, v6

    .line 127
    add-int/2addr v0, v4

    .line 128
    iput v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemMargin:I

    .line 130
    :cond_81
    const/4 v0, -0x2

    .line 131
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 133
    const/4 v4, -0x1

    .line 134
    invoke-direct {v3, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 137
    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 139
    iget v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemMargin:I

    .line 141
    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 143
    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 145
    const/high16 v0, 0x3f800000  # 1.0f

    .line 147
    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 149
    const-string v0, "mipro-medium"

    .line 151
    const/4 v5, 0x0

    .line 152
    invoke-static {v0, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 155
    move-result-object v0

    .line 156
    move v6, v5

    .line 157
    :goto_9c
    if-ge v6, p1, :cond_127

    .line 159
    iget v7, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mGroupItemCount:I

    .line 161
    add-int/lit8 v8, v7, 0x1

    .line 163
    iget v9, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mLeftCount:I

    .line 165
    mul-int/2addr v8, v9

    .line 166
    if-ge v6, v8, :cond_ab

    .line 168
    add-int/lit8 v7, v7, 0x1

    .line 170
    move v8, v6

    .line 171
    goto :goto_b0

    .line 172
    :cond_ab
    add-int/lit8 v8, v7, 0x1

    .line 174
    mul-int/2addr v8, v9

    .line 175
    sub-int v8, v6, v8

    .line 177
    :goto_b0
    if-le v6, v2, :cond_e2

    .line 179
    add-int/lit8 v9, p1, -0x2

    .line 181
    if-ge v6, v9, :cond_e2

    .line 183
    sub-int/2addr v8, v2

    .line 184
    rem-int/2addr v8, v7

    .line 185
    if-nez v8, :cond_bb

    .line 187
    goto :goto_e2

    .line 188
    :cond_bb
    if-ne v8, v2, :cond_123

    .line 190
    new-instance v7, Landroid/widget/ImageView;

    .line 192
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 195
    move-result-object v8

    .line 196
    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 199
    iget-object v8, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mFirstOmitItem:Landroid/widget/ImageView;

    .line 201
    if-nez v8, :cond_cc

    .line 203
    iput-object v7, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mFirstOmitItem:Landroid/widget/ImageView;

    .line 205
    :cond_cc
    iget v8, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOmitItemHeight:I

    .line 207
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 210
    iget v8, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOmitItemHeight:I

    .line 212
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 215
    sget v8, Lmiuix/miuixbasewidget/R$drawable;->miuix_ic_omit:I

    .line 217
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 220
    invoke-virtual {v7, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 223
    invoke-virtual {p0, v7, v4, v3}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 226
    goto :goto_123

    .line 227
    :cond_e2
    :goto_e2
    iget-object v7, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    .line 229
    iget-object v7, v7, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mIndexes:[Ljava/lang/String;

    .line 231
    aget-object v7, v7, v6

    .line 233
    new-instance v8, Landroid/widget/TextView;

    .line 235
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 238
    move-result-object v9

    .line 239
    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 242
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 245
    const/16 v9, 0x11

    .line 247
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 250
    iget v9, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemHeight:I

    .line 252
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setHeight(I)V

    .line 255
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 258
    iget-object v9, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    .line 260
    iget v9, v9, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mNormalColor:I

    .line 262
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 265
    iget-object v9, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    .line 267
    iget v9, v9, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mIndexerTextSize:I

    .line 269
    int-to-float v9, v9

    .line 270
    invoke-virtual {v8, v5, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 273
    const-string v9, "!"

    .line 275
    invoke-static {v7, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 278
    move-result v9

    .line 279
    if-eqz v9, :cond_11a

    .line 281
    const-string v7, "♥"

    .line 283
    :cond_11a
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    invoke-virtual {v8, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 289
    invoke-virtual {p0, v8, v4, v3}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 292
    :cond_123
    :goto_123
    add-int/lit8 v6, v6, 0x1

    .line 294
    goto/16 :goto_9c

    .line 296
    :cond_127
    iput-boolean v2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mUseOmit:Z

    .line 298
    return-void
.end method

.method private constructOverlay()V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mDrawOverlay:Z

    .line 3
    if-eqz v0, :cond_87

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/widget/FrameLayout;

    .line 11
    new-instance v1, Landroid/widget/TextView;

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v2

    .line 17
    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    .line 22
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 24
    iget v2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayWidth:I

    .line 26
    iget v3, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayHeight:I

    .line 28
    const v4, 0x800005

    .line 31
    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 40
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 42
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 44
    iget v2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mIndexWidth:I

    .line 46
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getMarinEnd()I

    .line 49
    move-result v3

    .line 50
    add-int/2addr v2, v3

    .line 51
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 54
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    .line 56
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    .line 61
    const/4 v2, 0x5

    .line 62
    invoke-virtual {v1, v2}, Landroid/view/View;->setTextAlignment(I)V

    .line 65
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    .line 67
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayBackground:Landroid/graphics/drawable/Drawable;

    .line 69
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    .line 74
    const/16 v2, 0x10

    .line 76
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 79
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    .line 81
    iget v2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayTextSize:I

    .line 83
    int-to-float v2, v2

    .line 84
    const/4 v3, 0x0

    .line 85
    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 88
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    .line 90
    iget v2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayTextColor:I

    .line 92
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    .line 97
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    .line 102
    const/4 v2, 0x0

    .line 103
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 106
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    .line 108
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 111
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    .line 113
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 116
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    .line 118
    iget v2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayTextAppearanceRes:I

    .line 120
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 123
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    .line 125
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 128
    move-result-object v1

    .line 129
    iput-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayTextPaint:Landroid/text/TextPaint;

    .line 131
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    .line 133
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 136
    :cond_87
    return-void
.end method

.method private doPerformHapticFeedback(I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getHapticFeedbackCompat()Lmiuix/util/HapticFeedbackCompat;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getUsageAlarmVibrationAttributes()Landroid/os/VibrationAttributes;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1, p1}, Lmiuix/util/HapticFeedbackCompat;->performHapticFeedback(Landroid/os/VibrationAttributes;I)Z

    .line 12
    return-void
.end method

.method private drawThumb(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1c

    .line 7
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getIndex(Ljava/lang/String;)I

    .line 18
    move-result p1

    .line 19
    iget v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mSelectedAlphaIndex:I

    .line 21
    if-eq v0, p1, :cond_1c

    .line 23
    invoke-direct {p0, v0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->clearLastChecked(I)V

    .line 26
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->setChecked(I)V

    .line 29
    :cond_1c
    return-void
.end method

.method private drawThumbInternal(Ljava/lang/CharSequence;F)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mAdapter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    .line 8
    if-eqz v0, :cond_76

    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mCancelOverlayTextColorAnim:Z

    .line 13
    const-string v0, "!"

    .line 15
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_16

    .line 21
    const-string p1, "♥"

    .line 23
    :cond_16
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    .line 25
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_43

    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 37
    const/16 v1, 0x1e

    .line 39
    if-lt v0, v1, :cond_3c

    .line 41
    const-string v0, "2.0"

    .line 43
    invoke-static {v0}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_36

    .line 49
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_GEAR_LIGHT:I

    .line 51
    invoke-direct {p0, v0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->doPerformHapticFeedback(I)V

    .line 54
    goto :goto_43

    .line 55
    :cond_36
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    .line 57
    invoke-direct {p0, v0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->doPerformHapticFeedback(I)V

    .line 60
    goto :goto_43

    .line 61
    :cond_3c
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_GEAR_LIGHT:I

    .line 63
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    .line 65
    invoke-static {p0, v0, v1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;II)Z

    .line 68
    :cond_43
    :goto_43
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    .line 70
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getMarginTop()I

    .line 73
    move-result v1

    .line 74
    int-to-float v1, v1

    .line 75
    sub-float/2addr p2, v1

    .line 76
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 79
    const/high16 p2, 0x3f800000  # 1.0f

    .line 81
    invoke-direct {p0, p2}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->updateOverlayTextAlpha(F)V

    .line 84
    iget-object p2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    .line 86
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object p2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayTextPaint:Landroid/text/TextPaint;

    .line 91
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 98
    move-result p1

    .line 99
    float-to-int p1, p1

    .line 100
    iget p2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayHeight:I

    .line 102
    sub-int/2addr p2, p1

    .line 103
    div-int/lit8 p2, p2, 0x2

    .line 105
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    .line 107
    const/4 v0, 0x0

    .line 108
    invoke-virtual {p1, p2, v0, v0, v0}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 111
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    .line 113
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 116
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->showOverlay()V

    .line 119
    :cond_76
    return-void
.end method

.method private getChildIndex(I)I
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    .line 3
    iget-object v0, v0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mIndexes:[Ljava/lang/String;

    .line 5
    array-length v0, v0

    .line 6
    add-int/lit8 v1, v0, -0x1

    .line 8
    if-le p1, v1, :cond_b

    .line 10
    move v2, v1

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    move v2, p1

    .line 13
    :goto_c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 16
    move-result v3

    .line 17
    if-eq v3, v0, :cond_5a

    .line 19
    iget v3, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mGroupItemCount:I

    .line 21
    const/4 v4, 0x1

    .line 22
    if-le v3, v4, :cond_5a

    .line 24
    if-le p1, v4, :cond_5a

    .line 26
    add-int/lit8 v0, v0, -0x2

    .line 28
    const/4 v5, 0x0

    .line 29
    if-lt p1, v0, :cond_2a

    .line 31
    iget p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mGroupCount:I

    .line 33
    mul-int/lit8 p1, p1, 0x2

    .line 35
    add-int/2addr p1, v4

    .line 36
    if-ne v2, v1, :cond_26

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    move v4, v5

    .line 40
    :goto_27
    add-int v2, p1, v4

    .line 42
    goto :goto_5a

    .line 43
    :cond_2a
    iget v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mLeftCount:I

    .line 45
    if-lez v0, :cond_4e

    .line 47
    add-int/lit8 v1, v3, 0x1

    .line 49
    mul-int/2addr v1, v0

    .line 50
    if-ge p1, v1, :cond_3e

    .line 52
    add-int/2addr v3, v4

    .line 53
    sub-int/2addr p1, v4

    .line 54
    div-int v0, p1, v3

    .line 56
    rem-int/2addr p1, v3

    .line 57
    mul-int/lit8 v0, v0, 0x2

    .line 59
    add-int/2addr v0, v4

    .line 60
    if-nez p1, :cond_58

    .line 62
    goto :goto_57

    .line 63
    :cond_3e
    sub-int v1, p1, v0

    .line 65
    sub-int/2addr v1, v4

    .line 66
    div-int/2addr v1, v3

    .line 67
    sub-int/2addr p1, v0

    .line 68
    sub-int/2addr p1, v4

    .line 69
    rem-int/2addr p1, v3

    .line 70
    mul-int/lit8 v1, v1, 0x2

    .line 72
    add-int/2addr v1, v4

    .line 73
    if-nez p1, :cond_4b

    .line 75
    move v4, v5

    .line 76
    :cond_4b
    add-int v2, v1, v4

    .line 78
    goto :goto_5a

    .line 79
    :cond_4e
    sub-int/2addr p1, v4

    .line 80
    div-int v0, p1, v3

    .line 82
    rem-int/2addr p1, v3

    .line 83
    mul-int/lit8 v0, v0, 0x2

    .line 85
    add-int/2addr v0, v4

    .line 86
    if-nez p1, :cond_58

    .line 88
    :goto_57
    move v4, v5

    .line 89
    :cond_58
    add-int v2, v0, v4

    .line 91
    :cond_5a
    :goto_5a
    invoke-direct {p0, v2}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->normalizeIndex(I)I

    .line 94
    move-result p1

    .line 95
    return p1
.end method

.method private getHapticFeedbackCompat()Lmiuix/util/HapticFeedbackCompat;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    .line 3
    if-nez v0, :cond_f

    .line 5
    new-instance v0, Lmiuix/util/HapticFeedbackCompat;

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lmiuix/util/HapticFeedbackCompat;-><init>(Landroid/content/Context;)V

    .line 14
    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    .line 16
    :cond_f
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    .line 18
    return-object v0
.end method

.method private getIndex(Ljava/lang/String;)I
    .registers 7

    .line 1
    iget v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mLastAlphabetIndex:I

    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    :goto_4
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    .line 7
    iget-object v3, v3, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mIndexes:[Ljava/lang/String;

    .line 9
    array-length v4, v3

    .line 10
    if-ge v2, v4, :cond_17

    .line 12
    aget-object v3, v3, v2

    .line 14
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_14

    .line 20
    move v0, v2

    .line 21
    :cond_14
    add-int/lit8 v2, v2, 0x1

    .line 23
    goto :goto_4

    .line 24
    :cond_17
    const/4 p1, -0x1

    .line 25
    if-ne v0, p1, :cond_1b

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    move v1, v0

    .line 29
    :goto_1c
    return v1
.end method

.method private getListOffset()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mAdapter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_6
    invoke-interface {v0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;->getListHeaderCount()I

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method private getMarginBottom()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 7
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 9
    return v0
.end method

.method private getMarginTop()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 7
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 9
    return v0
.end method

.method private getMarinEnd()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method private getSafeSectionIndex(ILandroid/widget/SectionIndexer;)I
    .registers 9

    .line 1
    if-nez p2, :cond_4

    .line 3
    const/4 p2, 0x0

    .line 4
    goto :goto_8

    .line 5
    :cond_4
    invoke-interface {p2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    .line 8
    move-result-object p2

    .line 9
    :goto_8
    const/4 v0, -0x1

    .line 10
    if-nez p2, :cond_c

    .line 12
    return v0

    .line 13
    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 16
    move-result v1

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 20
    move-result v2

    .line 21
    sub-int/2addr v1, v2

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 25
    move-result v2

    .line 26
    sub-int/2addr v1, v2

    .line 27
    if-gtz v1, :cond_1d

    .line 29
    return v0

    .line 30
    :cond_1d
    if-gez p1, :cond_20

    .line 32
    return v0

    .line 33
    :cond_20
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    .line 35
    iget-object v0, v0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mIndexes:[Ljava/lang/String;

    .line 37
    array-length v0, v0

    .line 38
    if-lt p1, v0, :cond_29

    .line 40
    array-length p1, p2

    .line 41
    return p1

    .line 42
    :cond_29
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mSectionMap:Ljava/util/HashMap;

    .line 44
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 47
    const/4 v0, 0x0

    .line 48
    move v1, v0

    .line 49
    :goto_30
    array-length v2, p2

    .line 50
    if-ge v1, v2, :cond_49

    .line 52
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mSectionMap:Ljava/util/HashMap;

    .line 54
    aget-object v3, p2, v1

    .line 56
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 63
    move-result-object v3

    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    add-int/lit8 v1, v1, 0x1

    .line 73
    goto :goto_30

    .line 74
    :cond_49
    iget-object p2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    .line 76
    iget-object p2, p2, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mIndexes:[Ljava/lang/String;

    .line 78
    move v1, v0

    .line 79
    :goto_4e
    add-int v2, v1, p1

    .line 81
    array-length v3, p2

    .line 82
    if-lt v2, v3, :cond_55

    .line 84
    if-lt p1, v1, :cond_8d

    .line 86
    :cond_55
    sub-int v3, p1, v1

    .line 88
    array-length v4, p2

    .line 89
    if-ge v2, v4, :cond_73

    .line 91
    iget-object v4, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mSectionMap:Ljava/util/HashMap;

    .line 93
    aget-object v5, p2, v2

    .line 95
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 98
    move-result v4

    .line 99
    if-eqz v4, :cond_73

    .line 101
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mSectionMap:Ljava/util/HashMap;

    .line 103
    aget-object p2, p2, v2

    .line 105
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    move-result-object p1

    .line 109
    check-cast p1, Ljava/lang/Integer;

    .line 111
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 114
    move-result v0

    .line 115
    goto :goto_8d

    .line 116
    :cond_73
    if-ltz v3, :cond_8e

    .line 118
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mSectionMap:Ljava/util/HashMap;

    .line 120
    aget-object v4, p2, v3

    .line 122
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 125
    move-result v2

    .line 126
    if-eqz v2, :cond_8e

    .line 128
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mSectionMap:Ljava/util/HashMap;

    .line 130
    aget-object p2, p2, v3

    .line 132
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    move-result-object p1

    .line 136
    check-cast p1, Ljava/lang/Integer;

    .line 138
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 141
    move-result v0

    .line 142
    :cond_8d
    :goto_8d
    return v0

    .line 143
    :cond_8e
    add-int/lit8 v1, v1, 0x1

    .line 145
    goto :goto_4e
.end method

.method private getSafeSectionIndexWithAccessibilityAction(ILandroid/widget/SectionIndexer;)I
    .registers 6

    .line 1
    if-nez p2, :cond_4

    .line 3
    const/4 p2, 0x0

    .line 4
    goto :goto_8

    .line 5
    :cond_4
    invoke-interface {p2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    .line 8
    move-result-object p2

    .line 9
    :goto_8
    const/4 v0, -0x1

    .line 10
    if-nez p2, :cond_c

    .line 12
    return v0

    .line 13
    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 16
    move-result v1

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 20
    move-result v2

    .line 21
    sub-int/2addr v1, v2

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 25
    move-result v2

    .line 26
    sub-int/2addr v1, v2

    .line 27
    if-gtz v1, :cond_1d

    .line 29
    return v0

    .line 30
    :cond_1d
    if-gez p1, :cond_20

    .line 32
    return v0

    .line 33
    :cond_20
    array-length v0, p2

    .line 34
    if-lt p1, v0, :cond_24

    .line 36
    array-length p1, p2

    .line 37
    :cond_24
    return p1
.end method

.method private getScrollTargetInfo(Landroid/widget/SectionIndexer;I)Lmiuix/miuixbasewidget/widget/AlphabetIndexer$ScrollTargetInfo;
    .registers 16

    .line 1
    new-instance v0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$ScrollTargetInfo;

    .line 3
    invoke-direct {v0, p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$ScrollTargetInfo;-><init>(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)V

    .line 6
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mAdapter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;

    .line 8
    invoke-interface {v1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;->getItemCount()I

    .line 11
    move-result v1

    .line 12
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getListOffset()I

    .line 15
    move-result v2

    .line 16
    int-to-float v3, v1

    .line 17
    const/high16 v4, 0x3f800000  # 1.0f

    .line 19
    div-float/2addr v4, v3

    .line 20
    const/high16 v3, 0x41000000  # 8.0f

    .line 22
    div-float/2addr v4, v3

    .line 23
    invoke-interface {p1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    .line 26
    move-result-object v3

    .line 27
    if-eqz v3, :cond_83

    .line 29
    array-length v5, v3

    .line 30
    const/4 v6, 0x1

    .line 31
    if-le v5, v6, :cond_83

    .line 33
    array-length v3, v3

    .line 34
    if-lt p2, v3, :cond_26

    .line 36
    add-int/lit8 v5, v3, -0x1

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    move v5, p2

    .line 40
    :goto_27
    iput v5, v0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$ScrollTargetInfo;->targetSectionIndex:I

    .line 42
    invoke-interface {p1, v5}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    .line 45
    move-result v7

    .line 46
    add-int/lit8 v8, v5, 0x1

    .line 48
    add-int/lit8 v9, v3, -0x1

    .line 50
    if-ge v5, v9, :cond_38

    .line 52
    invoke-interface {p1, v8}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    .line 55
    move-result v9

    .line 56
    goto :goto_39

    .line 57
    :cond_38
    move v9, v1

    .line 58
    :goto_39
    move v10, v5

    .line 59
    if-ne v9, v7, :cond_51

    .line 61
    move v11, v7

    .line 62
    :cond_3d
    if-lez v10, :cond_4f

    .line 64
    add-int/lit8 v10, v10, -0x1

    .line 66
    invoke-interface {p1, v10}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    .line 69
    move-result v11

    .line 70
    if-eq v11, v7, :cond_4a

    .line 72
    iput v10, v0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$ScrollTargetInfo;->targetSectionIndex:I

    .line 74
    goto :goto_50

    .line 75
    :cond_4a
    if-nez v10, :cond_3d

    .line 77
    const/4 v7, 0x0

    .line 78
    iput v7, v0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$ScrollTargetInfo;->targetSectionIndex:I

    .line 80
    :cond_4f
    move v10, v5

    .line 81
    :goto_50
    move v7, v11

    .line 82
    :cond_51
    add-int/lit8 v11, v8, 0x1

    .line 84
    :goto_53
    if-ge v11, v3, :cond_60

    .line 86
    invoke-interface {p1, v11}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    .line 89
    move-result v12

    .line 90
    if-ne v12, v9, :cond_60

    .line 92
    add-int/lit8 v11, v11, 0x1

    .line 94
    add-int/lit8 v8, v8, 0x1

    .line 96
    goto :goto_53

    .line 97
    :cond_60
    int-to-float p1, v10

    .line 98
    int-to-float v3, v3

    .line 99
    div-float/2addr p1, v3

    .line 100
    int-to-float v8, v8

    .line 101
    div-float/2addr v8, v3

    .line 102
    int-to-float p2, p2

    .line 103
    div-float/2addr p2, v3

    .line 104
    if-ne v10, v5, :cond_70

    .line 106
    sub-float v3, p2, p1

    .line 108
    cmpg-float v3, v3, v4

    .line 110
    if-gez v3, :cond_70

    .line 112
    goto :goto_7b

    .line 113
    :cond_70
    sub-int/2addr v9, v7

    .line 114
    int-to-float v3, v9

    .line 115
    sub-float/2addr p2, p1

    .line 116
    mul-float/2addr p2, v3

    .line 117
    sub-float/2addr v8, p1

    .line 118
    div-float/2addr p2, v8

    .line 119
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 122
    move-result p1

    .line 123
    add-int/2addr v7, p1

    .line 124
    :goto_7b
    sub-int/2addr v1, v6

    .line 125
    if-le v7, v1, :cond_7f

    .line 127
    move v7, v1

    .line 128
    :cond_7f
    add-int/2addr v7, v2

    .line 129
    iput v7, v0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$ScrollTargetInfo;->targetItemPos:I

    .line 131
    goto :goto_8f

    .line 132
    :cond_83
    mul-int/2addr p2, v1

    .line 133
    int-to-float p1, p2

    .line 134
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 137
    move-result p1

    .line 138
    const/4 p2, -0x1

    .line 139
    iput p2, v0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$ScrollTargetInfo;->targetSectionIndex:I

    .line 141
    add-int/2addr p1, v2

    .line 142
    iput p1, v0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$ScrollTargetInfo;->targetItemPos:I

    .line 144
    :goto_8f
    return-object v0
.end method

.method private getSectionIndexer()Landroid/widget/SectionIndexer;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mIndexer:Landroid/widget/SectionIndexer;

    .line 3
    return-object v0
.end method

.method private getUsageAlarmVibrationAttributes()Landroid/os/VibrationAttributes;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mUsageAlarmVibrationAttributes:Landroid/os/VibrationAttributes;

    .line 3
    if-nez v0, :cond_15

    .line 5
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    .line 7
    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    .line 10
    const/16 v1, 0x11

    .line 12
    invoke-virtual {v0, v1}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mUsageAlarmVibrationAttributes:Landroid/os/VibrationAttributes;

    .line 22
    :cond_15
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mUsageAlarmVibrationAttributes:Landroid/os/VibrationAttributes;

    .line 24
    return-object v0
.end method

.method public static getViewHeight(Landroid/view/View;)I
    .registers 4

    .line 1
    new-instance v0, Landroid/graphics/Point;

    .line 3
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1, v0}, Lmiuix/core/util/WindowUtils;->getWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 13
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 15
    const/high16 v2, -0x80000000

    .line 17
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 20
    move-result v1

    .line 21
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 23
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 26
    move-result v0

    .line 27
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->measure(II)V

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 33
    move-result p0

    .line 34
    return p0
.end method

.method private hasShown()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    .line 3
    if-eqz v0, :cond_18

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_18

    .line 11
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    .line 16
    move-result v0

    .line 17
    const/high16 v1, 0x3f800000  # 1.0f

    .line 19
    cmpl-float v0, v0, v1

    .line 21
    if-nez v0, :cond_18

    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    const/4 v0, 0x0

    .line 26
    :goto_19
    return v0
.end method

.method private hideOverlay()V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    .line 3
    if-eqz v0, :cond_38

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v2, v1, [Landroid/view/View;

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v0, v2, v3

    .line 11
    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    .line 18
    move-result-object v0

    .line 19
    const-wide/16 v4, 0x1

    .line 21
    invoke-interface {v0, v4, v5}, Lmiuix/animation/IVisibleStyle;->setFlags(J)Lmiuix/animation/IVisibleStyle;

    .line 24
    move-result-object v0

    .line 25
    const/high16 v2, 0x3f800000  # 1.0f

    .line 27
    new-array v4, v1, [Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 29
    sget-object v5, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 31
    aput-object v5, v4, v3

    .line 33
    invoke-interface {v0, v2, v4}, Lmiuix/animation/IVisibleStyle;->setScale(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    .line 36
    move-result-object v0

    .line 37
    const/4 v2, 0x0

    .line 38
    new-array v4, v1, [Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 40
    sget-object v5, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 42
    aput-object v5, v4, v3

    .line 44
    invoke-interface {v0, v2, v4}, Lmiuix/animation/IVisibleStyle;->setScale(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    .line 47
    move-result-object v0

    .line 48
    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    .line 50
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayHideAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 52
    aput-object v2, v1, v3

    .line 54
    invoke-interface {v0, v1}, Lmiuix/animation/IVisibleStyle;->hide([Lmiuix/animation/base/AnimConfig;)V

    .line 57
    :cond_38
    return-void
.end method

.method private init()V
    .registers 3

    .line 1
    const v0, 0x800005

    .line 4
    iput v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mVerticalPosition:I

    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 13
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->initAnimConfig()V

    .line 16
    iget v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mMaxItemMargin:I

    .line 18
    invoke-direct {p0, v1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->constructItem(I)V

    .line 21
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_20

    .line 30
    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 33
    :cond_20
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 36
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 46
    move-result-object v0

    .line 47
    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 49
    iput v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mScreenHeightDp:I

    .line 51
    return-void
.end method

.method private initAnimConfig()V
    .registers 6

    .line 1
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 3
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 6
    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayShowAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 8
    const/4 v1, 0x1

    .line 9
    new-array v2, v1, [Lmiuix/animation/listener/TransitionListener;

    .line 11
    new-instance v3, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$2;

    .line 13
    invoke-direct {v3, p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$2;-><init>(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)V

    .line 16
    const/4 v4, 0x0

    .line 17
    aput-object v3, v2, v4

    .line 19
    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 22
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 24
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 27
    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayHideAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 29
    new-array v1, v1, [Lmiuix/animation/listener/TransitionListener;

    .line 31
    new-instance v2, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$3;

    .line 33
    invoke-direct {v2, p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$3;-><init>(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)V

    .line 36
    aput-object v2, v1, v4

    .line 38
    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 41
    return-void
.end method

.method private normalizeIndex(I)I
    .registers 3

    .line 1
    if-gez p1, :cond_4

    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_10

    .line 5
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    move-result v0

    .line 9
    if-lt p1, v0, :cond_10

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    move-result p1

    .line 15
    add-int/lit8 p1, p1, -0x1

    .line 17
    :cond_10
    :goto_10
    return p1
.end method

.method private parseAttrs(Landroid/util/AttributeSet;I)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v1

    .line 13
    sget-object v2, Lmiuix/miuixbasewidget/R$styleable;->MiuixAppcompatAlphabetIndexer:[I

    .line 15
    sget v3, Lmiuix/miuixbasewidget/R$style;->Widget_AlphabetIndexer_Starred_DayNight:I

    .line 17
    invoke-virtual {v1, p1, v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 20
    move-result-object p1

    .line 21
    new-instance p2, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v1

    .line 27
    invoke-direct {p2, v1, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 30
    iput-object p2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    .line 32
    sget p2, Lmiuix/miuixbasewidget/R$styleable;->MiuixAppcompatAlphabetIndexer_miuixAppcompatDrawOverlay:I

    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 38
    move-result p2

    .line 39
    iput-boolean p2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mDrawOverlay:Z

    .line 41
    if-eqz p2, :cond_96

    .line 43
    sget p2, Lmiuix/miuixbasewidget/R$styleable;->MiuixAppcompatAlphabetIndexer_miuixAppcompatOverlayTextSize:I

    .line 45
    sget v1, Lmiuix/miuixbasewidget/R$dimen;->miuix_appcompat_alphabet_indexer_overlay_text_size:I

    .line 47
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 50
    move-result v1

    .line 51
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 54
    move-result p2

    .line 55
    iput p2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayTextSize:I

    .line 57
    sget p2, Lmiuix/miuixbasewidget/R$styleable;->MiuixAppcompatAlphabetIndexer_miuixAppcompatOverlayTextColor:I

    .line 59
    sget v1, Lmiuix/miuixbasewidget/R$color;->miuix_appcompat_alphabet_indexer_overlay_text_color:I

    .line 61
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 64
    move-result v1

    .line 65
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 68
    move-result p2

    .line 69
    iput p2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayTextColor:I

    .line 71
    sget p2, Lmiuix/miuixbasewidget/R$styleable;->MiuixAppcompatAlphabetIndexer_miuixAppCompatOverlayTextAppearance:I

    .line 73
    sget v1, Lmiuix/miuixbasewidget/R$style;->Widget_TextAppearance_AlphabetIndexer_Overlay:I

    .line 75
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 78
    move-result p2

    .line 79
    iput p2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayTextAppearanceRes:I

    .line 81
    sget p2, Lmiuix/miuixbasewidget/R$styleable;->MiuixAppcompatAlphabetIndexer_miuixAppcompatOverlayBackground:I

    .line 83
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 86
    move-result-object p2

    .line 87
    iput-object p2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayBackground:Landroid/graphics/drawable/Drawable;

    .line 89
    sget p2, Lmiuix/miuixbasewidget/R$dimen;->miuix_appcompat_alphabet_indexer_item_height:I

    .line 91
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 94
    move-result p2

    .line 95
    iput p2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemHeight:I

    .line 97
    sget p2, Lmiuix/miuixbasewidget/R$dimen;->miuix_appcompat_alphabet_indexer_omit_item_height:I

    .line 99
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 102
    move-result p2

    .line 103
    iput p2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOmitItemHeight:I

    .line 105
    sget p2, Lmiuix/miuixbasewidget/R$dimen;->miuix_appcompat_alphabet_indexer_item_margin:I

    .line 107
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 110
    move-result v1

    .line 111
    iput v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemMargin:I

    .line 113
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 116
    move-result p2

    .line 117
    iput p2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mMaxItemMargin:I

    .line 119
    sget p2, Lmiuix/miuixbasewidget/R$dimen;->miuix_appcompat_alphabet_indexer_min_item_margin:I

    .line 121
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 124
    move-result p2

    .line 125
    iput p2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mMinItemMargin:I

    .line 127
    sget p2, Lmiuix/miuixbasewidget/R$dimen;->miuix_appcompat_alphabet_overlay_width:I

    .line 129
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 132
    move-result p2

    .line 133
    iput p2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayWidth:I

    .line 135
    sget p2, Lmiuix/miuixbasewidget/R$dimen;->miuix_appcompat_alphabet_overlay_height:I

    .line 137
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 140
    move-result p2

    .line 141
    iput p2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayHeight:I

    .line 143
    sget p2, Lmiuix/miuixbasewidget/R$dimen;->miuix_appcompat_alphabet_indexer_min_width:I

    .line 145
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 148
    move-result p2

    .line 149
    iput p2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mIndexWidth:I

    .line 151
    :cond_96
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 154
    return-void
.end method

.method private refreshMask()V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mAdapter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getSectionIndexer()Landroid/widget/SectionIndexer;

    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_c

    .line 12
    return-void

    .line 13
    :cond_c
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mAdapter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;

    .line 15
    invoke-interface {v1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;->getFirstVisibleItemPosition()I

    .line 18
    move-result v1

    .line 19
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getListOffset()I

    .line 22
    move-result v2

    .line 23
    sub-int/2addr v1, v2

    .line 24
    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    .line 27
    move-result v1

    .line 28
    const/4 v2, -0x1

    .line 29
    if-eq v1, v2, :cond_44

    .line 31
    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    aget-object v0, v0, v1

    .line 37
    check-cast v0, Ljava/lang/String;

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_44

    .line 45
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    const/4 v1, 0x0

    .line 50
    :goto_31
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    .line 52
    iget-object v3, v3, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mIndexes:[Ljava/lang/String;

    .line 54
    array-length v4, v3

    .line 55
    if-ge v1, v4, :cond_44

    .line 57
    aget-object v3, v3, v1

    .line 59
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_41

    .line 65
    goto :goto_45

    .line 66
    :cond_41
    add-int/lit8 v1, v1, 0x1

    .line 68
    goto :goto_31

    .line 69
    :cond_44
    move v1, v2

    .line 70
    :goto_45
    if-eq v1, v2, :cond_4d

    .line 72
    iget v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mLastAlphabetIndex:I

    .line 74
    if-eq v0, v1, :cond_4d

    .line 76
    iput v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mLastAlphabetIndex:I

    .line 78
    :cond_4d
    return-void
.end method

.method private resetViews()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mGroupCount:I

    .line 4
    iput v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mGroupItemCount:I

    .line 6
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mSelectedAlphaIndex:I

    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mLastSelectedItem:Landroid/view/View;

    .line 12
    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mFirstOmitItem:Landroid/widget/ImageView;

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 17
    return-void
.end method

.method private scrollTo(Landroid/widget/SectionIndexer;Lmiuix/miuixbasewidget/widget/AlphabetIndexer$ScrollTargetInfo;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mAdapter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-interface {v0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;->stopScroll()V

    .line 9
    invoke-interface {p1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mAdapter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;

    .line 15
    iget v1, p2, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$ScrollTargetInfo;->targetItemPos:I

    .line 17
    invoke-interface {v0, v1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;->scrollToPosition(I)V

    .line 20
    invoke-direct {p0, p2, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->updateOverlay(Lmiuix/miuixbasewidget/widget/AlphabetIndexer$ScrollTargetInfo;[Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method private scrollToSelection(ILandroid/widget/SectionIndexer;Z)Lmiuix/miuixbasewidget/widget/AlphabetIndexer$ScrollTargetInfo;
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mAdapter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_6
    if-eqz p3, :cond_d

    .line 9
    invoke-direct {p0, p1, p2}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getSafeSectionIndexWithAccessibilityAction(ILandroid/widget/SectionIndexer;)I

    .line 12
    move-result p1

    .line 13
    goto :goto_11

    .line 14
    :cond_d
    invoke-direct {p0, p1, p2}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getSafeSectionIndex(ILandroid/widget/SectionIndexer;)I

    .line 17
    move-result p1

    .line 18
    :goto_11
    if-gez p1, :cond_23

    .line 20
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mAdapter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;

    .line 22
    const/4 p2, 0x0

    .line 23
    invoke-interface {p1, p2}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;->scrollToPosition(I)V

    .line 26
    new-instance p1, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$ScrollTargetInfo;

    .line 28
    invoke-direct {p1, p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$ScrollTargetInfo;-><init>(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)V

    .line 31
    iput p2, p1, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$ScrollTargetInfo;->targetItemPos:I

    .line 33
    iput p2, p1, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$ScrollTargetInfo;->targetSectionIndex:I

    .line 35
    return-object p1

    .line 36
    :cond_23
    invoke-direct {p0, p2, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getScrollTargetInfo(Landroid/widget/SectionIndexer;I)Lmiuix/miuixbasewidget/widget/AlphabetIndexer$ScrollTargetInfo;

    .line 39
    move-result-object p1

    .line 40
    invoke-direct {p0, p2, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->scrollTo(Landroid/widget/SectionIndexer;Lmiuix/miuixbasewidget/widget/AlphabetIndexer$ScrollTargetInfo;)V

    .line 43
    return-object p1
.end method

.method private setChecked(I)V
    .registers 4

    .line 1
    iput p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mSelectedAlphaIndex:I

    .line 3
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mLastSelectedItem:Landroid/view/View;

    .line 5
    if-eqz v0, :cond_a

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {p0, v0, v1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->updateIndexItemColor(Landroid/view/View;Z)V

    .line 11
    :cond_a
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getChildIndex(I)I

    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mLastSelectedItem:Landroid/view/View;

    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-direct {p0, p1, v0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->updateIndexItemColor(Landroid/view/View;Z)V

    .line 25
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mLastSelectedItem:Landroid/view/View;

    .line 27
    if-eqz p1, :cond_1f

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 32
    :cond_1f
    return-void
.end method

.method private showOverlay()V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    .line 3
    if-eqz v0, :cond_38

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v2, v1, [Landroid/view/View;

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v0, v2, v3

    .line 11
    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    .line 18
    move-result-object v0

    .line 19
    const-wide/16 v4, 0x1

    .line 21
    invoke-interface {v0, v4, v5}, Lmiuix/animation/IVisibleStyle;->setFlags(J)Lmiuix/animation/IVisibleStyle;

    .line 24
    move-result-object v0

    .line 25
    const/4 v2, 0x0

    .line 26
    new-array v4, v1, [Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 28
    sget-object v5, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 30
    aput-object v5, v4, v3

    .line 32
    invoke-interface {v0, v2, v4}, Lmiuix/animation/IVisibleStyle;->setScale(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    .line 35
    move-result-object v0

    .line 36
    const/high16 v2, 0x3f800000  # 1.0f

    .line 38
    new-array v4, v1, [Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 40
    sget-object v5, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 42
    aput-object v5, v4, v3

    .line 44
    invoke-interface {v0, v2, v4}, Lmiuix/animation/IVisibleStyle;->setScale(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    .line 47
    move-result-object v0

    .line 48
    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    .line 50
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayShowAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 52
    aput-object v2, v1, v3

    .line 54
    invoke-interface {v0, v1}, Lmiuix/animation/IVisibleStyle;->show([Lmiuix/animation/base/AnimConfig;)V

    .line 57
    :cond_38
    return-void
.end method

.method private stop(I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mHandler:Landroid/os/Handler;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mHandler:Landroid/os/Handler;

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mHandler:Landroid/os/Handler;

    .line 15
    if-gtz p1, :cond_13

    .line 17
    const-wide/16 v2, 0x0

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    int-to-long v2, p1

    .line 21
    :goto_14
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 24
    return-void
.end method

.method private updateIndexItemColor(Landroid/view/View;Z)V
    .registers 4

    .line 1
    instance-of v0, p1, Landroid/widget/TextView;

    .line 3
    if-eqz v0, :cond_15

    .line 5
    check-cast p1, Landroid/widget/TextView;

    .line 7
    if-eqz p2, :cond_d

    .line 9
    iget-object p2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    .line 11
    iget p2, p2, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mHighlightColor:I

    .line 13
    goto :goto_11

    .line 14
    :cond_d
    iget-object p2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    .line 16
    iget p2, p2, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mNormalColor:I

    .line 18
    :goto_11
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 21
    goto :goto_25

    .line 22
    :cond_15
    instance-of v0, p1, Landroid/widget/ImageView;

    .line 24
    if-eqz v0, :cond_25

    .line 26
    check-cast p1, Landroid/widget/ImageView;

    .line 28
    if-eqz p2, :cond_20

    .line 30
    sget p2, Lmiuix/miuixbasewidget/R$drawable;->miuix_ic_omit_selected:I

    .line 32
    goto :goto_22

    .line 33
    :cond_20
    sget p2, Lmiuix/miuixbasewidget/R$drawable;->miuix_ic_omit:I

    .line 35
    :goto_22
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 38
    :cond_25
    :goto_25
    return-void
.end method

.method private updateItemMargin(I)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 12
    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 14
    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    iput p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemMargin:I

    .line 21
    return-void
.end method

.method private updateItemsAfterParentVisibleHeightChanged(I)V
    .registers 9

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 9
    move-result v2

    .line 10
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    .line 12
    iget-object v3, v3, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mIndexes:[Ljava/lang/String;

    .line 14
    array-length v3, v3

    .line 15
    iget v4, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemHeight:I

    .line 17
    iget v5, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mMinItemMargin:I

    .line 19
    mul-int/lit8 v5, v5, 0x2

    .line 21
    add-int/2addr v5, v4

    .line 22
    mul-int/2addr v5, v3

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 26
    move-result v3

    .line 27
    add-int/2addr v3, v5

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 31
    move-result v4

    .line 32
    add-int/2addr v4, v3

    .line 33
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getMarginTop()I

    .line 36
    move-result v3

    .line 37
    if-gtz v3, :cond_32

    .line 39
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getMarginTop()I

    .line 42
    move-result v3

    .line 43
    iget v5, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayHeight:I

    .line 45
    div-int/lit8 v5, v5, 0x2

    .line 47
    add-int/2addr v5, v3

    .line 48
    add-int/lit8 v5, v5, 0x1

    .line 50
    goto :goto_36

    .line 51
    :cond_32
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getMarginTop()I

    .line 54
    move-result v5

    .line 55
    :goto_36
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getMarginBottom()I

    .line 58
    move-result v3

    .line 59
    if-gtz v3, :cond_48

    .line 61
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getMarginBottom()I

    .line 64
    move-result v3

    .line 65
    iget v6, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayHeight:I

    .line 67
    div-int/lit8 v6, v6, 0x2

    .line 69
    add-int/2addr v6, v3

    .line 70
    add-int/lit8 v6, v6, 0x1

    .line 72
    goto :goto_4c

    .line 73
    :cond_48
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getMarginBottom()I

    .line 76
    move-result v6

    .line 77
    :goto_4c
    add-int/2addr v4, v5

    .line 78
    add-int/2addr v4, v6

    .line 79
    if-gt v4, p1, :cond_bf

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 84
    move-result v3

    .line 85
    sub-int/2addr p1, v3

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 89
    move-result v3

    .line 90
    sub-int/2addr p1, v3

    .line 91
    sub-int/2addr p1, v5

    .line 92
    sub-int/2addr p1, v6

    .line 93
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    .line 95
    iget-object v3, v3, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mIndexes:[Ljava/lang/String;

    .line 97
    array-length v3, v3

    .line 98
    div-int/2addr p1, v3

    .line 99
    iget v3, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemHeight:I

    .line 101
    sub-int/2addr p1, v3

    .line 102
    div-int/lit8 p1, p1, 0x2

    .line 104
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 107
    move-result v3

    .line 108
    iget-object v4, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    .line 110
    iget-object v4, v4, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mIndexes:[Ljava/lang/String;

    .line 112
    array-length v4, v4

    .line 113
    if-ne v3, v4, :cond_b2

    .line 115
    iget v3, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mMaxItemMargin:I

    .line 117
    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    .line 120
    move-result v3

    .line 121
    iget v4, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemMargin:I

    .line 123
    if-eq v3, v4, :cond_86

    .line 125
    iget v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mMaxItemMargin:I

    .line 127
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 130
    move-result p1

    .line 131
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->updateItemMargin(I)V

    .line 134
    goto :goto_e7

    .line 135
    :cond_86
    if-nez v2, :cond_9c

    .line 137
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 140
    move-result-object p1

    .line 141
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 143
    iget v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemHeight:I

    .line 145
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 147
    iget v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemMargin:I

    .line 149
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 151
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 153
    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    goto :goto_e7

    .line 157
    :cond_9c
    iget p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemHeight:I

    .line 159
    if-eq v2, p1, :cond_e7

    .line 161
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 164
    move-result-object p1

    .line 165
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 167
    iget v2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemHeight:I

    .line 169
    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 171
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 173
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 175
    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    goto :goto_e7

    .line 179
    :cond_b2
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->resetViews()V

    .line 182
    iget v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mMaxItemMargin:I

    .line 184
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 187
    move-result p1

    .line 188
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->constructItem(I)V

    .line 191
    goto :goto_e7

    .line 192
    :cond_bf
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 195
    move-result v0

    .line 196
    if-lez v0, :cond_c8

    .line 198
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->resetViews()V

    .line 201
    :cond_c8
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->constructItemWithOmit(I)V

    .line 204
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getSectionIndexer()Landroid/widget/SectionIndexer;

    .line 207
    move-result-object p1

    .line 208
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mAdapter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;

    .line 210
    if-eqz v0, :cond_e7

    .line 212
    if-eqz p1, :cond_e7

    .line 214
    invoke-interface {v0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;->getFirstVisibleItemPosition()I

    .line 217
    move-result v0

    .line 218
    invoke-interface {p1, v0}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    .line 221
    move-result p1

    .line 222
    iget v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mSelectedAlphaIndex:I

    .line 224
    if-eq v0, p1, :cond_e7

    .line 226
    invoke-direct {p0, v0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->clearLastChecked(I)V

    .line 229
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->setChecked(I)V

    .line 232
    :cond_e7
    :goto_e7
    return-void
.end method

.method private updateOverlay(Lmiuix/miuixbasewidget/widget/AlphabetIndexer$ScrollTargetInfo;[Ljava/lang/Object;)V
    .registers 5

    .line 1
    if-eqz p1, :cond_2c

    .line 3
    iget v0, p1, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$ScrollTargetInfo;->targetSectionIndex:I

    .line 5
    if-ltz v0, :cond_2c

    .line 7
    if-eqz p2, :cond_2c

    .line 9
    aget-object p2, p2, v0

    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    move-result-object p2

    .line 15
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2c

    .line 21
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 24
    move-result-object p2

    .line 25
    const/4 v0, 0x0

    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 30
    move-result-object v0

    .line 31
    invoke-direct {p0, p2}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getIndex(Ljava/lang/String;)I

    .line 34
    move-result p2

    .line 35
    iput p2, p1, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$ScrollTargetInfo;->targetSectionIndex:I

    .line 37
    invoke-direct {p0, p2}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->calculateOverlayPosition(I)I

    .line 40
    move-result p1

    .line 41
    int-to-float p1, p1

    .line 42
    invoke-direct {p0, v0, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->drawThumbInternal(Ljava/lang/CharSequence;F)V

    .line 45
    :cond_2c
    return-void
.end method

.method private updateOverlayLayout()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    .line 3
    if-eqz v0, :cond_19

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 11
    iget v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mIndexWidth:I

    .line 13
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getMarinEnd()I

    .line 16
    move-result v2

    .line 17
    add-int/2addr v1, v2

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 21
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    .line 23
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    :cond_19
    return-void
.end method

.method private updateOverlayTextAlpha(F)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 6
    move-result-object v1

    .line 7
    const/high16 v2, 0x437f0000  # 255.0f

    .line 9
    mul-float/2addr p1, v2

    .line 10
    float-to-int p1, p1

    .line 11
    invoke-virtual {v1, p1}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 18
    return-void
.end method

.method private updateOverlayTranslationX(F)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 6
    move-result v0

    .line 7
    div-int/lit8 v0, v0, 0x2

    .line 9
    int-to-float v0, v0

    .line 10
    const/high16 v1, 0x3f800000  # 1.0f

    .line 12
    sub-float/2addr v1, p1

    .line 13
    mul-float/2addr v1, v0

    .line 14
    invoke-static {p0}, Landroidx/appcompat/widget/h1;->a(Landroid/view/View;)Z

    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_16

    .line 20
    const/high16 p1, -0x40800000  # -1.0f

    .line 22
    mul-float/2addr v1, p1

    .line 23
    :cond_16
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    .line 25
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 28
    return-void
.end method

.method private updateVerticalPadding()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    sget v1, Lmiuix/miuixbasewidget/R$dimen;->miuix_appcompat_alphabet_indexer_padding_vertical:I

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 14
    move-result v1

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 18
    move-result v2

    .line 19
    invoke-virtual {p0, v1, v0, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 22
    return-void
.end method


# virtual methods
.method public attach(Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mAdapter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;

    .line 3
    if-ne v0, p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->detach()V

    .line 9
    if-nez p1, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mLastAlphabetIndex:I

    .line 15
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mAdapter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;

    .line 17
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->constructOverlay()V

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 26
    iget v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mVerticalPosition:I

    .line 28
    or-int/lit8 v0, v0, 0x30

    .line 30
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 32
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 34
    iget v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayHeight:I

    .line 36
    div-int/lit8 v2, v1, 0x2

    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 40
    add-int/2addr v2, v0

    .line 41
    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 43
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 45
    div-int/lit8 v1, v1, 0x2

    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 49
    add-int/2addr v1, v0

    .line 50
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 52
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    return-void
.end method

.method public detach()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mAdapter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;

    .line 3
    if-eqz v0, :cond_1d

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->stop(I)V

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/FrameLayout;

    .line 15
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    .line 17
    if-eqz v1, :cond_15

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 22
    :cond_15
    const/16 v0, 0x8

    .line 24
    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->setVisibility(I)V

    .line 27
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mAdapter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;

    .line 30
    :cond_1d
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getIndexerIntrinsicWidth()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 10
    move-result v0

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    return v0
.end method

.method public onAttachedToWindow()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/view/View;

    .line 10
    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mParentView:Landroid/view/View;

    .line 12
    if-eqz v0, :cond_12

    .line 14
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mParentLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 19
    :cond_12
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 6
    iget v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mScreenHeightDp:I

    .line 8
    if-eq p1, v0, :cond_25

    .line 10
    iput p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mScreenHeightDp:I

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object p1

    .line 16
    sget v0, Lmiuix/miuixbasewidget/R$dimen;->miuix_appcompat_alphabet_indexer_item_margin:I

    .line 18
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 21
    move-result p1

    .line 22
    iput p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mMaxItemMargin:I

    .line 24
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->updateVerticalPadding()V

    .line 27
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->updateOverlayLayout()V

    .line 30
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->resetViews()V

    .line 33
    iget p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mMaxItemMargin:I

    .line 35
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->constructItem(I)V

    .line 38
    :cond_25
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 4
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mParentView:Landroid/view/View;

    .line 6
    if-eqz v0, :cond_f

    .line 8
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mParentLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mParentView:Landroid/view/View;

    .line 16
    :cond_f
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 9

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getSectionIndexer()Landroid/widget/SectionIndexer;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_93

    .line 14
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mAdapter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;

    .line 16
    if-eqz v1, :cond_93

    .line 18
    if-eqz v0, :cond_93

    .line 20
    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_93

    .line 26
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mAdapter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;

    .line 28
    invoke-interface {v1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;->getFirstVisibleItemPosition()I

    .line 31
    move-result v1

    .line 32
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getListOffset()I

    .line 35
    move-result v2

    .line 36
    sub-int/2addr v1, v2

    .line 37
    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    .line 40
    move-result v1

    .line 41
    if-ltz v1, :cond_93

    .line 43
    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    .line 46
    move-result-object v2

    .line 47
    array-length v2, v2

    .line 48
    if-lt v1, v2, :cond_32

    .line 50
    goto :goto_93

    .line 51
    :cond_32
    if-lez v1, :cond_39

    .line 53
    const/16 v2, 0x2000

    .line 55
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 58
    :cond_39
    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    .line 61
    move-result-object v2

    .line 62
    array-length v2, v2

    .line 63
    add-int/lit8 v2, v2, -0x1

    .line 65
    if-ge v1, v2, :cond_47

    .line 67
    const/16 v2, 0x1000

    .line 69
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 72
    :cond_47
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 74
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 76
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 79
    const/4 v3, 0x0

    .line 80
    const/high16 v4, -0x40800000  # -1.0f

    .line 82
    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    .line 85
    move-result-object v5

    .line 86
    array-length v5, v5

    .line 87
    add-int/lit8 v5, v5, -0x1

    .line 89
    int-to-float v5, v5

    .line 90
    int-to-float v6, v1

    .line 91
    invoke-static {v3, v4, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    .line 98
    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    .line 101
    move-result-object v0

    .line 102
    aget-object v0, v0, v1

    .line 104
    instance-of v1, v0, Ljava/lang/String;

    .line 106
    if-eqz v1, :cond_82

    .line 108
    check-cast v0, Ljava/lang/String;

    .line 110
    const-string v1, "!"

    .line 112
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_7f

    .line 118
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 121
    move-result-object v0

    .line 122
    sget v1, Lmiuix/miuixbasewidget/R$string;->miuix_indexer_collect:I

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 127
    move-result-object v0

    .line 128
    :cond_7f
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 131
    :cond_82
    const/16 v0, 0x1e

    .line 133
    if-lt v2, v0, :cond_93

    .line 135
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 138
    move-result-object v0

    .line 139
    sget v1, Lmiuix/miuixbasewidget/R$string;->miuix_alphabet_indexer_name:I

    .line 141
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 144
    move-result-object v0

    .line 145
    invoke-static {p1, v0}, Landroidx/core/content/a;->u(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V

    .line 148
    :cond_93
    :goto_93
    return-void
.end method

.method public onScrollStateChanged(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mListScrollState:I

    .line 3
    return-void
.end method

.method public onScrolled(II)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->refreshMask()V

    .line 4
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mAdapter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;

    .line 6
    if-nez p1, :cond_8

    .line 8
    return-void

    .line 9
    :cond_8
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getSectionIndexer()Landroid/widget/SectionIndexer;

    .line 12
    move-result-object p1

    .line 13
    if-nez p1, :cond_f

    .line 15
    return-void

    .line 16
    :cond_f
    iget-object p2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mAdapter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;

    .line 18
    invoke-interface {p2}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;->getFirstVisibleItemPosition()I

    .line 21
    move-result p2

    .line 22
    invoke-interface {p1, p2}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    .line 25
    move-result p2

    .line 26
    invoke-interface {p1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 30
    aget-object p1, p1, p2

    .line 32
    check-cast p1, Ljava/lang/String;

    .line 34
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->drawThumb(Ljava/lang/CharSequence;)V

    .line 37
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mAdapter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_7b

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_d

    .line 12
    goto/16 :goto_7b

    .line 14
    :cond_d
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getSectionIndexer()Landroid/widget/SectionIndexer;

    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_17

    .line 20
    invoke-direct {p0, v1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->stop(I)V

    .line 23
    return v1

    .line 24
    :cond_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 27
    move-result v2

    .line 28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 31
    move-result v3

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 35
    move-result v4

    .line 36
    int-to-float v4, v4

    .line 37
    sub-float/2addr v3, v4

    .line 38
    const/4 v4, 0x0

    .line 39
    cmpl-float v5, v3, v4

    .line 41
    if-ltz v5, :cond_2b

    .line 43
    goto :goto_2c

    .line 44
    :cond_2b
    move v3, v4

    .line 45
    :goto_2c
    const/4 v4, 0x1

    .line 46
    if-eqz v2, :cond_56

    .line 48
    if-eq v2, v4, :cond_3e

    .line 50
    const/4 v5, 0x2

    .line 51
    if-eq v2, v5, :cond_64

    .line 53
    const/4 v5, 0x3

    .line 54
    if-eq v2, v5, :cond_3e

    .line 56
    const/4 v5, 0x5

    .line 57
    if-eq v2, v5, :cond_56

    .line 59
    const/4 v0, 0x6

    .line 60
    if-eq v2, v0, :cond_3e

    .line 62
    goto :goto_7a

    .line 63
    :cond_3e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 66
    move-result v0

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_49

    .line 73
    goto :goto_7a

    .line 74
    :cond_49
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 77
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->hasShown()Z

    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_7a

    .line 83
    invoke-direct {p0, v1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->stop(I)V

    .line 86
    goto :goto_7a

    .line 87
    :cond_56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 90
    move-result v2

    .line 91
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_61

    .line 97
    goto :goto_7a

    .line 98
    :cond_61
    invoke-virtual {p0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 101
    :cond_64
    invoke-direct {p0, v3}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->calculateIndex(F)I

    .line 104
    move-result p1

    .line 105
    invoke-direct {p0, p1, v0, v1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->scrollToSelection(ILandroid/widget/SectionIndexer;Z)Lmiuix/miuixbasewidget/widget/AlphabetIndexer$ScrollTargetInfo;

    .line 108
    move-result-object p1

    .line 109
    iget v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mSelectedAlphaIndex:I

    .line 111
    iget v1, p1, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$ScrollTargetInfo;->targetSectionIndex:I

    .line 113
    if-eq v0, v1, :cond_7a

    .line 115
    invoke-direct {p0, v0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->clearLastChecked(I)V

    .line 118
    iget p1, p1, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$ScrollTargetInfo;->targetSectionIndex:I

    .line 120
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->setChecked(I)V

    .line 123
    :cond_7a
    :goto_7a
    return v4

    .line 124
    :cond_7b
    :goto_7b
    invoke-direct {p0, v1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->stop(I)V

    .line 127
    return v1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 8

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p2, :cond_8

    .line 8
    return v0

    .line 9
    :cond_8
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getSectionIndexer()Landroid/widget/SectionIndexer;

    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_82

    .line 20
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mAdapter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;

    .line 22
    if-eqz v1, :cond_82

    .line 24
    if-nez p2, :cond_1a

    .line 26
    goto :goto_82

    .line 27
    :cond_1a
    const/16 v3, 0x1000

    .line 29
    if-eq p1, v3, :cond_23

    .line 31
    const/16 v4, 0x2000

    .line 33
    if-eq p1, v4, :cond_23

    .line 35
    return v2

    .line 36
    :cond_23
    invoke-interface {v1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;->getFirstVisibleItemPosition()I

    .line 39
    move-result v1

    .line 40
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getListOffset()I

    .line 43
    move-result v4

    .line 44
    sub-int/2addr v1, v4

    .line 45
    invoke-interface {p2, v1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    .line 48
    move-result v1

    .line 49
    if-ne p1, v3, :cond_34

    .line 51
    add-int/2addr v1, v0

    .line 52
    goto :goto_35

    .line 53
    :cond_34
    sub-int/2addr v1, v0

    .line 54
    :goto_35
    invoke-interface {p2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    .line 57
    move-result-object p1

    .line 58
    array-length p1, p1

    .line 59
    sub-int/2addr p1, v0

    .line 60
    if-gt v1, p1, :cond_81

    .line 62
    if-gez v1, :cond_40

    .line 64
    goto :goto_81

    .line 65
    :cond_40
    invoke-direct {p0, v1, p2, v0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->scrollToSelection(ILandroid/widget/SectionIndexer;Z)Lmiuix/miuixbasewidget/widget/AlphabetIndexer$ScrollTargetInfo;

    .line 68
    move-result-object p1

    .line 69
    iget p1, p1, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$ScrollTargetInfo;->targetSectionIndex:I

    .line 71
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->setChecked(I)V

    .line 74
    invoke-interface {p2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    .line 77
    move-result-object p1

    .line 78
    invoke-direct {p0, v1, p2}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getSafeSectionIndexWithAccessibilityAction(ILandroid/widget/SectionIndexer;)I

    .line 81
    move-result p2

    .line 82
    aget-object p1, p1, p2

    .line 84
    instance-of p2, p1, Ljava/lang/String;

    .line 86
    if-eqz p2, :cond_81

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 91
    move-result-object p2

    .line 92
    sget v1, Lmiuix/miuixbasewidget/R$string;->miuix_indexer_selected:I

    .line 94
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 97
    move-result-object p2

    .line 98
    new-array v1, v0, [Ljava/lang/Object;

    .line 100
    move-object v3, p1

    .line 101
    check-cast v3, Ljava/lang/String;

    .line 103
    const-string v4, "!"

    .line 105
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 108
    move-result v3

    .line 109
    if-eqz v3, :cond_78

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 114
    move-result-object p1

    .line 115
    sget v3, Lmiuix/miuixbasewidget/R$string;->miuix_indexer_collect:I

    .line 117
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 120
    move-result-object p1

    .line 121
    :cond_78
    aput-object p1, v1, v2

    .line 123
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 130
    :cond_81
    :goto_81
    return v0

    .line 131
    :cond_82
    :goto_82
    return v2
.end method

.method public setSectionIndexer(Landroid/widget/SectionIndexer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mIndexer:Landroid/widget/SectionIndexer;

    .line 3
    return-void
.end method

.method public setVerticalPosition(Z)V
    .registers 2

    .line 1
    if-eqz p1, :cond_6

    .line 3
    const p1, 0x800005

    .line 6
    goto :goto_9

    .line 7
    :cond_6
    const p1, 0x800003

    .line 10
    :goto_9
    iput p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mVerticalPosition:I

    .line 12
    return-void
.end method

.method public setVisibility(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    if-eqz p1, :cond_e

    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->stop(I)V

    .line 10
    iget p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mLastAlphabetIndex:I

    .line 12
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->clearLastChecked(I)V

    .line 15
    :cond_e
    return-void
.end method
