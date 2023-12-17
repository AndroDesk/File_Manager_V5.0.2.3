.class public Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;
.super Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;
.source "FastScrollerTimeCapsuleView.java"


# instance fields
.field private mDate:Ljava/lang/String;

.field private mDateColor:I

.field private mDateMarginStart:I

.field private mDateMarginTop:I

.field private mDateRect:Landroid/graphics/Rect;

.field private mDateTextSize:I

.field private mMonth:Ljava/lang/String;

.field private mMonthColor:I

.field private mMonthRect:Landroid/graphics/Rect;

.field private mMonthTextSize:I

.field private mTime:J

.field private mYear:Ljava/lang/String;

.field private mYearColor:I

.field private mYearRect:Landroid/graphics/Rect;

.field private mYearTextSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 11

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mMonth:Ljava/lang/String;

    if-eqz v0, :cond_11c

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mDate:Ljava/lang/String;

    if-eqz v0, :cond_11c

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mYear:Ljava/lang/String;

    if-eqz v0, :cond_11c

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mViewWidth:I

    int-to-float v3, v2

    iget v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mScaleX:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int v4, v2, v3

    iget-boolean v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mIsInRight:Z

    if-eqz v5, :cond_2b

    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mTranslationX:I

    add-int/2addr v4, v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mViewHeight:I

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_33

    :cond_2b
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mTranslationX:I

    add-int/2addr v3, v2

    iget v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mViewHeight:I

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_33
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_38
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mMonthColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mAlpha:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mMonthTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mMonth:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mMonthRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mStartMargin:I

    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mTopMargin:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mMonth:Ljava/lang/String;

    iget v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mTranslationX:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    int-to-float v3, v3

    iget-object v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mDateColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mDateTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mDate:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mDateRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mStartMargin:I

    iget-object v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mMonthRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v4, v3

    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mDateMarginStart:I

    add-int/2addr v4, v3

    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mTopMargin:I

    iget v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mDateMarginTop:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    iget v5, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v3, v5

    float-to-int v3, v3

    iget-object v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mDate:Ljava/lang/String;

    iget v6, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mTranslationX:I

    add-int/2addr v6, v4

    int-to-float v6, v6

    int-to-float v3, v3

    iget-object v7, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v3, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mYearTextSize:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mYearColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mAlpha:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mYear:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mYearRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6, v1, v7, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v3, v2

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v3, v1

    float-to-int v1, v3

    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mYear:Ljava/lang/String;

    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mTranslationX:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v1, v1

    iget-object v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mYearRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v1, v4

    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mEndMargin:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mViewWidth:I

    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mTopMargin:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v2

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v1, v0

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mBottomMargin:I

    int-to-float v0, v0

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mViewHeight:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_11c
    return-void
.end method

.method public getDate()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public getMonth()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mMonth:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mYear:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleContentProvider;)V
    .registers 8

    check-cast p1, Lcom/android/fileexplorer/view/indicator/model/FastScrollerTimeCapsuleModel;

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/indicator/model/FastScrollerTimeCapsuleModel;->getContent()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mTime:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x3fb999999999999aL  # 0.1

    cmpl-double p1, v2, v4

    if-gtz p1, :cond_27

    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mYear:Ljava/lang/String;

    if-eqz p1, :cond_27

    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mMonth:Ljava/lang/String;

    if-eqz p1, :cond_27

    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mDate:Ljava/lang/String;

    if-nez p1, :cond_51

    :cond_27
    iput-wide v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mTime:J

    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/model/TimeUtils;->getYear(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mYear:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->mContext:Landroid/content/Context;

    iget-wide v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mTime:J

    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/model/TimeUtils;->getMonth(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mMonth:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->mContext:Landroid/content/Context;

    iget-wide v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mTime:J

    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/model/TimeUtils;->getDay(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mDate:Ljava/lang/String;

    :cond_51
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mDate:Ljava/lang/String;

    return-void
.end method

.method public setInvisible()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->setInvisible()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mYear:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mMonth:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mDate:Ljava/lang/String;

    return-void
.end method

.method public setMonth(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mMonth:Ljava/lang/String;

    return-void
.end method

.method public setStyle(I)V
    .registers 7

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/fileexplorer/R$styleable;->CustomFastCapsule:[I

    const/4 v2, 0x0

    const v3, 0x7f0401c9

    invoke-virtual {v0, v2, v1, v3, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_12
    if-ge v2, v0, :cond_8f

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_d2

    :pswitch_1c  #0x4, 0x5
    goto/16 :goto_8c

    :pswitch_1e  #0xf
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mYearTextSize:I

    goto/16 :goto_8c

    :pswitch_27  #0xe
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mYearColor:I

    goto :goto_8c

    :pswitch_2e  #0xd
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mMonthTextSize:I

    goto :goto_8c

    :pswitch_36  #0xc
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mMonthColor:I

    goto :goto_8c

    :pswitch_3d  #0xb
    const/high16 v4, 0x42380000  # 46.0f

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->mCapsuleMarginToThumb:I

    goto :goto_8c

    :pswitch_47  #0xa
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mDateTextSize:I

    goto :goto_8c

    :pswitch_4f  #0x9
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mDateMarginTop:I

    goto :goto_8c

    :pswitch_57  #0x8
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mDateMarginStart:I

    goto :goto_8c

    :pswitch_5f  #0x7
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mDateColor:I

    goto :goto_8c

    :pswitch_66  #0x6
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mTopMargin:I

    goto :goto_8c

    :pswitch_6e  #0x3
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mStartMargin:I

    goto :goto_8c

    :pswitch_76  #0x2
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mEndMargin:I

    goto :goto_8c

    :pswitch_7e  #0x1
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mBottomMargin:I

    goto :goto_8c

    :pswitch_86  #0x0
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mBackground:Landroid/graphics/drawable/Drawable;

    :goto_8c
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_8f
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mDefaultTimeCapsuleWidth:I

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mViewWidth:I

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mDefaultTimeCapsuleHeight:I

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mViewHeight:I

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b6

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mViewWidth:I

    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mDefaultTimeCapsuleHeight:I

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mViewHeight:I

    :cond_b6
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mMonthRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mYearRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mDateRect:Landroid/graphics/Rect;

    return-void

    :pswitch_data_d2
    .packed-switch 0x0
        :pswitch_86  #00000000
        :pswitch_7e  #00000001
        :pswitch_76  #00000002
        :pswitch_6e  #00000003
        :pswitch_1c  #00000004
        :pswitch_1c  #00000005
        :pswitch_66  #00000006
        :pswitch_5f  #00000007
        :pswitch_57  #00000008
        :pswitch_4f  #00000009
        :pswitch_47  #0000000a
        :pswitch_3d  #0000000b
        :pswitch_36  #0000000c
        :pswitch_2e  #0000000d
        :pswitch_27  #0000000e
        :pswitch_1e  #0000000f
    .end packed-switch
.end method

.method public setYear(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mYear:Ljava/lang/String;

    return-void
.end method
