.class public Lmiuix/androidbasewidget/widget/SeekBar;
.super Landroidx/appcompat/widget/r;
.source "SeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/androidbasewidget/widget/SeekBar$ColorUpdateRunner;
    }
.end annotation


# static fields
.field private static final NO_ALPHA:I = 0xff

.field private static final PROPERTY_PROGRESS:Ljava/lang/String; = "progress"

.field private static final TAG:Ljava/lang/String; = "SeekBar"


# instance fields
.field private mDefaultForegroundPrimaryColor:I

.field private mDefaultForegroundPrimaryDisableColor:I

.field private mDefaultIconPrimaryColor:I

.field private mDisabledProgressAlpha:F

.field private mDraggableMaxPercentProcess:F

.field private mDraggableMinPercentProgress:F

.field private mForegroundPrimaryColor:I

.field private mForegroundPrimaryDisableColor:I

.field private mHasEdgeReached:Z

.field private mIStateStyle:Lmiuix/animation/IStateStyle;

.field private mIconPrimaryColor:I

.field private mIconTransparent:I

.field private mIsInMiddle:Z

.field private mMaxMiddle:F

.field private mMiddleEnabled:Z

.field private mMinMiddle:F

.field private mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mProgess:I

.field private mProgressColorStateList:Landroid/content/res/ColorStateList;

.field private final mTrainsOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/androidbasewidget/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    sget v0, Lmiuix/androidbasewidget/R$attr;->seekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/androidbasewidget/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/r;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Lmiuix/androidbasewidget/widget/SeekBar$1;

    invoke-direct {v0, p0}, Lmiuix/androidbasewidget/widget/SeekBar$1;-><init>(Lmiuix/androidbasewidget/widget/SeekBar;)V

    iput-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mTrainsOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    const/4 v1, 0x0

    .line 5
    invoke-static {p0, v1}, Lmiuix/view/CompatViewMethod;->setForceDarkAllowed(Landroid/view/View;Z)V

    .line 6
    sget-object v2, Lmiuix/androidbasewidget/R$styleable;->SeekBar:[I

    sget v3, Lmiuix/androidbasewidget/R$style;->Widget_SeekBar_DayNight:I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lmiuix/androidbasewidget/R$color;->miuix_appcompat_progress_primary_colors_light:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDefaultForegroundPrimaryColor:I

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lmiuix/androidbasewidget/R$color;->miuix_appcompat_progress_disable_color_light:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDefaultForegroundPrimaryDisableColor:I

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lmiuix/androidbasewidget/R$color;->miuix_appcompat_progress_background_icon_light:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDefaultIconPrimaryColor:I

    .line 10
    sget p3, Lmiuix/androidbasewidget/R$styleable;->SeekBar_middleEnabled:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMiddleEnabled:Z

    .line 11
    sget p3, Lmiuix/androidbasewidget/R$styleable;->SeekBar_foregroundPrimaryColor:I

    iget v2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDefaultForegroundPrimaryColor:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mForegroundPrimaryColor:I

    .line 12
    sget p3, Lmiuix/androidbasewidget/R$styleable;->SeekBar_foregroundPrimaryDisableColor:I

    iget v2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDefaultForegroundPrimaryDisableColor:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mForegroundPrimaryDisableColor:I

    .line 13
    sget p3, Lmiuix/androidbasewidget/R$styleable;->SeekBar_iconPrimaryColor:I

    iget v2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDefaultIconPrimaryColor:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mIconPrimaryColor:I

    .line 14
    sget p3, Lmiuix/androidbasewidget/R$styleable;->SeekBar_disabledProgressAlpha:I

    const/high16 v2, 0x3f000000  # 0.5f

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDisabledProgressAlpha:F

    .line 15
    sget p3, Lmiuix/androidbasewidget/R$styleable;->SeekBar_minMiddle:I

    const v3, 0x3eeb851f  # 0.46f

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMinMiddle:F

    .line 16
    sget p3, Lmiuix/androidbasewidget/R$styleable;->SeekBar_maxMiddle:I

    const v4, 0x3f0a3d71  # 0.54f

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMaxMiddle:F

    .line 17
    sget p3, Lmiuix/androidbasewidget/R$styleable;->SeekBar_draggableMinPercentProgress:I

    const/4 v5, 0x0

    invoke-direct {p0, p2, p3, v5}, Lmiuix/androidbasewidget/widget/SeekBar;->getValueFromTypedArray(Landroid/content/res/TypedArray;IF)F

    move-result p3

    iput p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMinPercentProgress:F

    .line 18
    sget p3, Lmiuix/androidbasewidget/R$styleable;->SeekBar_draggableMaxPercentProgress:I

    const/high16 v6, 0x3f800000  # 1.0f

    invoke-direct {p0, p2, p3, v6}, Lmiuix/androidbasewidget/widget/SeekBar;->getValueFromTypedArray(Landroid/content/res/TypedArray;IF)F

    move-result p3

    iput p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMaxPercentProcess:F

    .line 19
    iget p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMinPercentProgress:F

    invoke-virtual {p0, p3}, Lmiuix/androidbasewidget/widget/SeekBar;->setDraggableMinPercentProgress(F)V

    .line 20
    iget p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMaxPercentProcess:F

    invoke-virtual {p0, p3}, Lmiuix/androidbasewidget/widget/SeekBar;->setDraggableMaxPercentProcess(F)V

    .line 21
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/androidbasewidget/R$color;->miuix_appcompat_transparent:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mIconTransparent:I

    .line 23
    iget p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMinMiddle:F

    cmpl-float p2, p1, v2

    if-gtz p2, :cond_b6

    cmpg-float p1, p1, v5

    if-gez p1, :cond_b8

    .line 24
    :cond_b6
    iput v3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMinMiddle:F

    .line 25
    :cond_b8
    iget p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMaxMiddle:F

    cmpg-float p2, p1, v2

    if-ltz p2, :cond_c2

    cmpl-float p1, p1, v6

    if-lez p1, :cond_c4

    .line 26
    :cond_c2
    iput v4, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMaxMiddle:F

    .line 27
    :cond_c4
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result p1

    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->getMinWrapper()I

    move-result p2

    sub-int/2addr p1, p2

    .line 28
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lmiuix/androidbasewidget/widget/SeekBar;->isInMiddle(II)Z

    move-result p2

    iput-boolean p2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mIsInMiddle:Z

    .line 29
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p2

    iput p2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgess:I

    .line 30
    iget-boolean p2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mIsInMiddle:Z

    if-eqz p2, :cond_ec

    int-to-float p1, p1

    mul-float/2addr p1, v2

    .line 31
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgess:I

    .line 32
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_ec
    const/4 p1, 0x1

    new-array p2, p1, [Ljava/lang/Object;

    .line 33
    iget p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgess:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v1

    invoke-static {p2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p2

    iput-object p2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mIStateStyle:Lmiuix/animation/IStateStyle;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const-string v2, "progress"

    aput-object v2, p3, v1

    .line 34
    iget v2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgess:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p3, p1

    invoke-interface {p2, p3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 35
    invoke-virtual {p0, v0}, Lmiuix/androidbasewidget/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 36
    new-instance p2, Lmiuix/androidbasewidget/widget/SeekBar$ColorUpdateRunner;

    invoke-direct {p2, p0}, Lmiuix/androidbasewidget/widget/SeekBar$ColorUpdateRunner;-><init>(Lmiuix/androidbasewidget/widget/SeekBar;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    new-array p1, p1, [Landroid/view/View;

    aput-object p0, p1, v1

    .line 37
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object p1

    sget-object p2, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {p1, p2}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object p1

    new-array p2, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p0, p2}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/androidbasewidget/widget/SeekBar;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMiddleEnabled:Z

    .line 3
    return p0
.end method

.method public static synthetic access$100(Lmiuix/androidbasewidget/widget/SeekBar;)I
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->getMinWrapper()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$1000(Lmiuix/androidbasewidget/widget/SeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1100(Lmiuix/androidbasewidget/widget/SeekBar;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->updatePrimaryColor()V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Lmiuix/androidbasewidget/widget/SeekBar;)F
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMinMiddle:F

    .line 3
    return p0
.end method

.method public static synthetic access$300(Lmiuix/androidbasewidget/widget/SeekBar;)F
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMaxMiddle:F

    .line 3
    return p0
.end method

.method public static synthetic access$400(Lmiuix/androidbasewidget/widget/SeekBar;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgess:I

    .line 3
    return p0
.end method

.method public static synthetic access$402(Lmiuix/androidbasewidget/widget/SeekBar;I)I
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgess:I

    .line 3
    return p1
.end method

.method public static synthetic access$500(Lmiuix/androidbasewidget/widget/SeekBar;)Lmiuix/animation/IStateStyle;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mIStateStyle:Lmiuix/animation/IStateStyle;

    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lmiuix/androidbasewidget/widget/SeekBar;)F
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMinPercentProgress:F

    .line 3
    return p0
.end method

.method public static synthetic access$700(Lmiuix/androidbasewidget/widget/SeekBar;F)I
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/SeekBar;->getProgressForm(F)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$800(Lmiuix/androidbasewidget/widget/SeekBar;)F
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMaxPercentProcess:F

    .line 3
    return p0
.end method

.method public static synthetic access$900(Lmiuix/androidbasewidget/widget/SeekBar;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mHasEdgeReached:Z

    .line 3
    return p0
.end method

.method public static synthetic access$902(Lmiuix/androidbasewidget/widget/SeekBar;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mHasEdgeReached:Z

    .line 3
    return p1
.end method

.method private getMinWrapper()I
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1a

    .line 5
    if-lt v0, v1, :cond_b

    .line 7
    invoke-super {p0}, Landroid/widget/SeekBar;->getMin()I

    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    return v0
.end method

.method private declared-synchronized getProgressForm(F)I
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->getRange()I

    .line 5
    move-result v0

    .line 6
    int-to-float v0, v0

    .line 7
    mul-float/2addr p1, v0

    .line 8
    float-to-int p1, p1

    .line 9
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->getMinWrapper()I

    .line 12
    move-result v0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_f

    .line 13
    add-int/2addr p1, v0

    .line 14
    monitor-exit p0

    .line 15
    return p1

    .line 16
    :catchall_f
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method private declared-synchronized getRange()I
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    .line 5
    move-result v0

    .line 6
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->getMinWrapper()I

    .line 9
    move-result v1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    .line 10
    sub-int/2addr v0, v1

    .line 11
    monitor-exit p0

    .line 12
    return v0

    .line 13
    :catchall_c
    move-exception v0

    .line 14
    monitor-exit p0

    .line 15
    throw v0
.end method

.method private getValueFromTypedArray(Landroid/content/res/TypedArray;IF)F
    .registers 5

    .line 1
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_12

    .line 7
    iget p2, p1, Landroid/util/TypedValue;->type:I

    .line 9
    const/4 v0, 0x6

    .line 10
    if-ne p2, v0, :cond_12

    .line 12
    const/high16 p2, 0x3f800000  # 1.0f

    .line 14
    invoke-virtual {p1, p2, p2}, Landroid/util/TypedValue;->getFraction(FF)F

    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    :cond_12
    return p3
.end method

.method private isInMiddle(II)Z
    .registers 4

    .line 1
    if-lez p1, :cond_b

    .line 3
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->getMinWrapper()I

    .line 6
    move-result v0

    .line 7
    sub-int/2addr p2, v0

    .line 8
    int-to-float p2, p2

    .line 9
    int-to-float p1, p1

    .line 10
    div-float/2addr p2, p1

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 p2, 0x0

    .line 13
    :goto_c
    iget p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMinMiddle:F

    .line 15
    cmpl-float p1, p2, p1

    .line 17
    if-lez p1, :cond_1a

    .line 19
    iget p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMaxMiddle:F

    .line 21
    cmpg-float p1, p2, p1

    .line 23
    if-gez p1, :cond_1a

    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_1a
    const/4 p1, 0x0

    .line 28
    return p1
.end method

.method private updatePrimaryColor()V
    .registers 9

    .line 1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    .line 7
    if-eqz v1, :cond_92

    .line 9
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 11
    const v1, 0x102000d

    .line 14
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 17
    move-result-object v1

    .line 18
    instance-of v2, v1, Landroid/graphics/drawable/ClipDrawable;

    .line 20
    if-eqz v2, :cond_79

    .line 22
    check-cast v1, Landroid/graphics/drawable/ClipDrawable;

    .line 24
    invoke-virtual {v1}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 27
    move-result-object v1

    .line 28
    instance-of v2, v1, Landroid/graphics/drawable/GradientDrawable;

    .line 30
    if-eqz v2, :cond_79

    .line 32
    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 34
    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    .line 37
    move-result-object v2

    .line 38
    iget-object v3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgressColorStateList:Landroid/content/res/ColorStateList;

    .line 40
    if-nez v3, :cond_2d

    .line 42
    if-eqz v2, :cond_2d

    .line 44
    iput-object v2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgressColorStateList:Landroid/content/res/ColorStateList;

    .line 46
    :cond_2d
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgressColorStateList:Landroid/content/res/ColorStateList;

    .line 48
    if-eqz v2, :cond_79

    .line 50
    const/4 v3, 0x1

    .line 51
    new-array v4, v3, [I

    .line 53
    const/4 v5, 0x0

    .line 54
    const v6, -0x101009e

    .line 57
    aput v6, v4, v5

    .line 59
    iget v7, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDefaultForegroundPrimaryDisableColor:I

    .line 61
    invoke-virtual {v2, v4, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 64
    move-result v2

    .line 65
    iget v4, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mForegroundPrimaryDisableColor:I

    .line 67
    if-ne v2, v4, :cond_52

    .line 69
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgressColorStateList:Landroid/content/res/ColorStateList;

    .line 71
    sget-object v4, Landroid/widget/SeekBar;->ENABLED_STATE_SET:[I

    .line 73
    iget v7, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDefaultForegroundPrimaryColor:I

    .line 75
    invoke-virtual {v2, v4, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 78
    move-result v2

    .line 79
    iget v4, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mForegroundPrimaryColor:I

    .line 81
    if-eq v2, v4, :cond_79

    .line 83
    :cond_52
    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 89
    const/4 v2, 0x2

    .line 90
    new-array v4, v2, [I

    .line 92
    iget v7, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mForegroundPrimaryDisableColor:I

    .line 94
    aput v7, v4, v5

    .line 96
    iget v7, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mForegroundPrimaryColor:I

    .line 98
    aput v7, v4, v3

    .line 100
    new-array v2, v2, [[I

    .line 102
    new-array v7, v3, [I

    .line 104
    aput v6, v7, v5

    .line 106
    aput-object v7, v2, v5

    .line 108
    new-array v5, v5, [I

    .line 110
    aput-object v5, v2, v3

    .line 112
    new-instance v3, Landroid/content/res/ColorStateList;

    .line 114
    invoke-direct {v3, v2, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 117
    iput-object v3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgressColorStateList:Landroid/content/res/ColorStateList;

    .line 119
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 122
    :cond_79
    const v1, 0x1020006

    .line 125
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 128
    move-result-object v0

    .line 129
    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    .line 131
    if-eqz v1, :cond_92

    .line 133
    iget-boolean v1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMiddleEnabled:Z

    .line 135
    if-eqz v1, :cond_8b

    .line 137
    iget v1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mIconPrimaryColor:I

    .line 139
    goto :goto_8d

    .line 140
    :cond_8b
    iget v1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mIconTransparent:I

    .line 142
    :goto_8d
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    .line 144
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 147
    :cond_92
    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .registers 4

    .line 1
    invoke-super {p0}, Landroidx/appcompat/widget/r;->drawableStateChanged()V

    .line 4
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->updatePrimaryColor()V

    .line 7
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1e

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_15

    .line 19
    const/16 v1, 0xff

    .line 21
    goto :goto_1b

    .line 22
    :cond_15
    const/high16 v1, 0x437f0000  # 255.0f

    .line 24
    iget v2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDisabledProgressAlpha:F

    .line 26
    mul-float/2addr v2, v1

    .line 27
    float-to-int v1, v2

    .line 28
    :goto_1b
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 31
    :cond_1e
    return-void
.end method

.method public declared-synchronized getDraggableMaxPercentProgress()F
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "draggableProgress"
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget v0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMaxPercentProcess:F
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_5
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public declared-synchronized getDraggableMinPercentProgress()F
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "draggableProgress"
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget v0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMinPercentProgress:F
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_5
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public declared-synchronized setDraggableMaxPercentProcess(F)V
    .registers 6

    .line 1
    monitor-enter p0

    .line 2
    float-to-double v0, p1

    .line 3
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    .line 5
    cmpl-double v0, v0, v2

    .line 7
    const/high16 v1, 0x3f800000  # 1.0f

    .line 9
    if-lez v0, :cond_15

    .line 11
    :try_start_a
    const-string p1, "SeekBar"

    .line 13
    const-string v0, "The draggableMaxPercentProcess value should not be higher than the max value, reset to 1.0"

    .line 15
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :goto_11
    move p1, v1

    .line 19
    goto :goto_22

    .line 20
    :catchall_13
    move-exception p1

    .line 21
    goto :goto_42

    .line 22
    :cond_15
    const/4 v0, 0x0

    .line 23
    cmpg-float v0, p1, v0

    .line 25
    if-gez v0, :cond_22

    .line 27
    const-string p1, "SeekBar"

    .line 29
    const-string v0, "The draggableMaxPercentProcess value should not be lower than the min value, reset to 1.0"

    .line 31
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    goto :goto_11

    .line 35
    :cond_22
    :goto_22
    iget v0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMinPercentProgress:F

    .line 37
    cmpg-float v0, p1, v0

    .line 39
    if-gez v0, :cond_30

    .line 41
    const-string p1, "SeekBar"

    .line 43
    const-string v0, "The draggableMaxPercentProcess value should not be lower than draggableMinPercentProcess value, reset to 1.0"

    .line 45
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    goto :goto_31

    .line 49
    :cond_30
    move v1, p1

    .line 50
    :goto_31
    iput v1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMaxPercentProcess:F

    .line 52
    invoke-direct {p0, v1}, Lmiuix/androidbasewidget/widget/SeekBar;->getProgressForm(F)I

    .line 55
    move-result p1

    .line 56
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 59
    move-result v0

    .line 60
    if-le v0, p1, :cond_40

    .line 62
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_40
    .catchall {:try_start_a .. :try_end_40} :catchall_13

    .line 65
    :cond_40
    monitor-exit p0

    .line 66
    return-void

    .line 67
    :goto_42
    monitor-exit p0

    .line 68
    throw p1
.end method

.method public declared-synchronized setDraggableMinPercentProgress(F)V
    .registers 8

    .line 1
    monitor-enter p0

    .line 2
    float-to-double v0, p1

    .line 3
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    .line 5
    cmpl-double v2, v0, v2

    .line 7
    const/4 v3, 0x0

    .line 8
    if-lez v2, :cond_14

    .line 10
    :try_start_9
    const-string p1, "SeekBar"

    .line 12
    const-string v0, "The draggableMinPercentProgress value should not be higher than 1.0, reset to 0.0"

    .line 14
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :goto_10
    move p1, v3

    .line 18
    goto :goto_22

    .line 19
    :catchall_12
    move-exception p1

    .line 20
    goto :goto_42

    .line 21
    :cond_14
    const-wide/16 v4, 0x0

    .line 23
    cmpg-double v0, v0, v4

    .line 25
    if-gez v0, :cond_22

    .line 27
    const-string p1, "SeekBar"

    .line 29
    const-string v0, "The draggableMinPercentProgress value should not be lower than 0.0, reset to 0.0"

    .line 31
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    goto :goto_10

    .line 35
    :cond_22
    :goto_22
    iget v0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMaxPercentProcess:F

    .line 37
    cmpl-float v0, p1, v0

    .line 39
    if-lez v0, :cond_30

    .line 41
    const-string p1, "SeekBar"

    .line 43
    const-string v0, "The draggableMinPercentProgress value should not be higher than draggableMaxPercentProcess value, reset to 0.0"

    .line 45
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    goto :goto_31

    .line 49
    :cond_30
    move v3, p1

    .line 50
    :goto_31
    iput v3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMinPercentProgress:F

    .line 52
    invoke-direct {p0, v3}, Lmiuix/androidbasewidget/widget/SeekBar;->getProgressForm(F)I

    .line 55
    move-result p1

    .line 56
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 59
    move-result v0

    .line 60
    if-ge v0, p1, :cond_40

    .line 62
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_40
    .catchall {:try_start_9 .. :try_end_40} :catchall_12

    .line 65
    :cond_40
    monitor-exit p0

    .line 66
    return-void

    .line 67
    :goto_42
    monitor-exit p0

    .line 68
    throw p1
.end method

.method public setForegroundPrimaryColor(II)V
    .registers 3

    .line 1
    iput p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mForegroundPrimaryColor:I

    .line 3
    iput p2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mForegroundPrimaryDisableColor:I

    .line 5
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->updatePrimaryColor()V

    .line 8
    return-void
.end method

.method public setIconPrimaryColor(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mIconPrimaryColor:I

    .line 3
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->updatePrimaryColor()V

    .line 6
    return-void
.end method

.method public setMiddleEnabled(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMiddleEnabled:Z

    .line 3
    if-eq p1, v0, :cond_9

    .line 5
    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMiddleEnabled:Z

    .line 7
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->updatePrimaryColor()V

    .line 10
    :cond_9
    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mTrainsOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 3
    if-ne p1, v0, :cond_8

    .line 5
    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 8
    goto :goto_a

    .line 9
    :cond_8
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 11
    :goto_a
    return-void
.end method
