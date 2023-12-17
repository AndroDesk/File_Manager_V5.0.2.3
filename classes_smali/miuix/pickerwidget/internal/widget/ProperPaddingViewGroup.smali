.class public Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;
.super Landroid/view/ViewGroup;
.source "ProperPaddingViewGroup.java"


# static fields
.field private static final ENABLE_SMALL_HORIZONTAL_PADDING_WIDTH_DP:I = 0x154

.field private static final MIN_NORMALLY_SHOW_WIDTH_DP:I = 0x122

.field private static final UNDEFINED_PADDING:I = -0x80000000


# instance fields
.field private final DENSITY:F

.field private mChildView:Landroid/view/View;

.field private mFixedHorizontalPadding:Z

.field private mFixedHorizontalPaddingEnd:I

.field private mFixedHorizontalPaddingStart:I

.field private final mHorizontalPaddingEnd:I

.field private final mHorizontalPaddingStart:I

.field private mPaddingEnd:I

.field private mPaddingStart:I

.field private final mSmallHorizontalPaddingEnd:I

.field private final mSmallHorizontalPaddingStart:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 4
    iput-boolean p3, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mFixedHorizontalPadding:Z

    const/high16 v0, -0x80000000

    .line 5
    iput v0, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mFixedHorizontalPaddingStart:I

    .line 6
    iput v0, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mFixedHorizontalPaddingEnd:I

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mChildView:Landroid/view/View;

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->DENSITY:F

    .line 9
    :try_start_1b
    sget-object v1, Lmiuix/pickerwidget/R$styleable;->ProperPaddingViewGroup:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 10
    sget p1, Lmiuix/pickerwidget/R$styleable;->ProperPaddingViewGroup_horizontalPadding:I

    invoke-virtual {v0, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 11
    sget p2, Lmiuix/pickerwidget/R$styleable;->ProperPaddingViewGroup_horizontalPaddingStart:I

    invoke-virtual {v0, p2, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mHorizontalPaddingStart:I

    .line 12
    sget p2, Lmiuix/pickerwidget/R$styleable;->ProperPaddingViewGroup_horizontalPaddingEnd:I

    invoke-virtual {v0, p2, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mHorizontalPaddingEnd:I

    .line 13
    sget p1, Lmiuix/pickerwidget/R$styleable;->ProperPaddingViewGroup_smallHorizontalPadding:I

    invoke-virtual {v0, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 14
    sget p2, Lmiuix/pickerwidget/R$styleable;->ProperPaddingViewGroup_smallHorizontalPaddingStart:I

    invoke-virtual {v0, p2, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mSmallHorizontalPaddingStart:I

    .line 15
    sget p2, Lmiuix/pickerwidget/R$styleable;->ProperPaddingViewGroup_smallHorizontalPaddingEnd:I

    invoke-virtual {v0, p2, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mSmallHorizontalPaddingEnd:I
    :try_end_4d
    .catchall {:try_start_1b .. :try_end_4d} :catchall_51

    .line 16
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_51
    move-exception p1

    if-eqz v0, :cond_57

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 17
    :cond_57
    throw p1
.end method


# virtual methods
.method public onFinishInflate()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-gt v0, v1, :cond_12

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mChildView:Landroid/view/View;

    .line 18
    return-void

    .line 19
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 21
    const-string v1, "Only one child view can be added into the ProperPaddingViewGroup!"

    .line 23
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    throw v0
.end method

.method public onLayout(ZIIII)V
    .registers 6

    .line 1
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_9

    .line 7
    iget p1, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mPaddingEnd:I

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    iget p1, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mPaddingStart:I

    .line 12
    :goto_b
    const/4 p2, 0x0

    .line 13
    iget-object p3, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mChildView:Landroid/view/View;

    .line 15
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    .line 18
    move-result p3

    .line 19
    add-int/2addr p3, p1

    .line 20
    iget-object p4, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mChildView:Landroid/view/View;

    .line 22
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    .line 25
    move-result p4

    .line 26
    add-int/2addr p4, p2

    .line 27
    iget-object p5, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mChildView:Landroid/view/View;

    .line 29
    invoke-virtual {p5, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    .line 32
    return-void
.end method

.method public onMeasure(II)V
    .registers 9

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 4
    move-result v0

    .line 5
    int-to-float v1, v0

    .line 6
    iget v2, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->DENSITY:F

    .line 8
    div-float v3, v1, v2

    .line 10
    iget-boolean v4, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mFixedHorizontalPadding:Z

    .line 12
    const/4 v5, 0x0

    .line 13
    if-eqz v4, :cond_17

    .line 15
    iget v1, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mFixedHorizontalPaddingStart:I

    .line 17
    iput v1, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mPaddingStart:I

    .line 19
    iget v1, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mFixedHorizontalPaddingEnd:I

    .line 21
    iput v1, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mPaddingEnd:I

    .line 23
    goto :goto_3c

    .line 24
    :cond_17
    const/high16 v4, 0x43aa0000  # 340.0f

    .line 26
    cmpg-float v3, v3, v4

    .line 28
    if-gtz v3, :cond_34

    .line 30
    const/high16 v3, 0x43910000  # 290.0f

    .line 32
    mul-float/2addr v2, v3

    .line 33
    sub-float/2addr v1, v2

    .line 34
    float-to-int v1, v1

    .line 35
    div-int/lit8 v1, v1, 0x2

    .line 37
    if-gez v1, :cond_27

    .line 39
    move v1, v5

    .line 40
    :cond_27
    iget v2, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mSmallHorizontalPaddingStart:I

    .line 42
    div-int/lit8 v1, v1, 0x2

    .line 44
    add-int/2addr v2, v1

    .line 45
    iput v2, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mPaddingStart:I

    .line 47
    iget v2, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mSmallHorizontalPaddingEnd:I

    .line 49
    add-int/2addr v2, v1

    .line 50
    iput v2, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mPaddingEnd:I

    .line 52
    goto :goto_3c

    .line 53
    :cond_34
    iget v1, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mHorizontalPaddingStart:I

    .line 55
    iput v1, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mPaddingStart:I

    .line 57
    iget v1, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mHorizontalPaddingEnd:I

    .line 59
    iput v1, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mPaddingEnd:I

    .line 61
    :goto_3c
    iget-object v1, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mChildView:Landroid/view/View;

    .line 63
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 66
    move-result-object v1

    .line 67
    iget-object v2, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mChildView:Landroid/view/View;

    .line 69
    iget v3, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mPaddingStart:I

    .line 71
    iget v4, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mPaddingEnd:I

    .line 73
    add-int/2addr v3, v4

    .line 74
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 76
    invoke-static {p1, v3, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 79
    move-result p1

    .line 80
    iget-object v1, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mChildView:Landroid/view/View;

    .line 82
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 85
    move-result-object v1

    .line 86
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 88
    invoke-static {p2, v5, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 91
    move-result p2

    .line 92
    invoke-virtual {v2, p1, p2}, Landroid/view/View;->measure(II)V

    .line 95
    iget-object p1, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mChildView:Landroid/view/View;

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 100
    move-result p1

    .line 101
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 104
    return-void
.end method

.method public setFixedContentHorizontalPadding(II)V
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mFixedHorizontalPadding:Z

    .line 4
    iget v1, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mFixedHorizontalPaddingStart:I

    .line 6
    iget v2, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mFixedHorizontalPaddingEnd:I

    .line 8
    iput p1, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mFixedHorizontalPaddingStart:I

    .line 10
    iput p2, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mFixedHorizontalPaddingEnd:I

    .line 12
    if-eq p1, v1, :cond_f

    .line 14
    move p1, v0

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 p1, 0x0

    .line 17
    :goto_10
    if-eq p2, v2, :cond_13

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    move v0, p1

    .line 21
    :goto_14
    if-eqz v0, :cond_19

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 26
    :cond_19
    return-void
.end method
