.class Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;
.super Ljava/lang/Object;
.source "DialogParentPanel2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/widget/DialogParentPanel2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FloatingABOLayoutSpec"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFixedHeightMajor:Landroid/util/TypedValue;

.field private mFixedHeightMinor:Landroid/util/TypedValue;

.field private mFixedWidthMajor:Landroid/util/TypedValue;

.field private mFixedWidthMinor:Landroid/util/TypedValue;

.field private mIsFreeWindowMode:Z

.field private mMaxHeightMajor:Landroid/util/TypedValue;

.field private mMaxHeightMinor:Landroid/util/TypedValue;

.field private mMaxWidthMajor:Landroid/util/TypedValue;

.field private mMaxWidthMinor:Landroid/util/TypedValue;

.field private mScreenHeightDp:I

.field private final mScreenSize:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/graphics/Point;

    .line 6
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 9
    iput-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mScreenSize:Landroid/graphics/Point;

    .line 11
    iput-object p1, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    .line 13
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->parseWindowSize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    invoke-virtual {p0}, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->getScreenHeightDp()I

    .line 19
    move-result p2

    .line 20
    iput p2, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mScreenHeightDp:I

    .line 22
    invoke-static {p1}, Lmiuix/core/util/EnvStateManager;->isFreeFormMode(Landroid/content/Context;)Z

    .line 25
    move-result p1

    .line 26
    iput-boolean p1, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mIsFreeWindowMode:Z

    .line 28
    return-void
.end method

.method private getMeasureSpec(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I
    .registers 9

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 4
    move-result v0

    .line 5
    const/high16 v1, -0x80000000

    .line 7
    if-ne v0, v1, :cond_3a

    .line 9
    if-nez p2, :cond_f

    .line 11
    iget-boolean v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mIsFreeWindowMode:Z

    .line 13
    if-eqz v0, :cond_f

    .line 15
    return p1

    .line 16
    :cond_f
    invoke-direct {p0}, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->useMinor()Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_16

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move-object p3, p4

    .line 24
    :goto_17
    invoke-direct {p0, p3, p2}, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->resolveDimension(Landroid/util/TypedValue;Z)I

    .line 27
    move-result p3

    .line 28
    if-lez p3, :cond_24

    .line 30
    const/high16 p1, 0x40000000  # 2.0f

    .line 32
    invoke-static {p3, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 35
    move-result p1

    .line 36
    goto :goto_3a

    .line 37
    :cond_24
    if-eqz v0, :cond_27

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    move-object p5, p6

    .line 41
    :goto_28
    invoke-direct {p0, p5, p2}, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->resolveDimension(Landroid/util/TypedValue;Z)I

    .line 44
    move-result p2

    .line 45
    if-lez p2, :cond_3a

    .line 47
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 50
    move-result p1

    .line 51
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    .line 54
    move-result p1

    .line 55
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 58
    move-result p1

    .line 59
    :cond_3a
    :goto_3a
    return p1
.end method

.method private isActivity(Landroid/content/Context;)Z
    .registers 3

    .line 1
    :goto_0
    instance-of v0, p1, Landroid/content/ContextWrapper;

    .line 3
    if-eqz v0, :cond_11

    .line 5
    instance-of v0, p1, Landroid/app/Activity;

    .line 7
    if-eqz v0, :cond_a

    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_a
    check-cast p1, Landroid/content/ContextWrapper;

    .line 13
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_11
    const/4 p1, 0x0

    .line 19
    return p1
.end method

.method private isPortrait()Z
    .registers 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/16 v3, 0x1f

    .line 7
    if-ge v0, v3, :cond_25

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    .line 11
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->isActivity(Landroid/content/Context;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_11

    .line 17
    goto :goto_25

    .line 18
    :cond_11
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 31
    move-result-object v0

    .line 32
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 34
    if-ne v0, v2, :cond_24

    .line 36
    move v1, v2

    .line 37
    :cond_24
    return v1

    .line 38
    :cond_25
    :goto_25
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    .line 40
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 47
    move-result-object v0

    .line 48
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 50
    if-ne v0, v2, :cond_34

    .line 52
    move v1, v2

    .line 53
    :cond_34
    return v1
.end method

.method private parseWindowSize(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 1
    if-nez p2, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    sget-object v0, Lmiuix/appcompat/R$styleable;->Window:[I

    .line 6
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 9
    move-result-object p1

    .line 10
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowFixedWidthMinor:I

    .line 12
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1b

    .line 18
    new-instance v0, Landroid/util/TypedValue;

    .line 20
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 23
    iput-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 25
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 28
    :cond_1b
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowFixedHeightMajor:I

    .line 30
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2d

    .line 36
    new-instance v0, Landroid/util/TypedValue;

    .line 38
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 41
    iput-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 43
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 46
    :cond_2d
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowFixedWidthMajor:I

    .line 48
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_3f

    .line 54
    new-instance v0, Landroid/util/TypedValue;

    .line 56
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 59
    iput-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 61
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 64
    :cond_3f
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowFixedHeightMinor:I

    .line 66
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_51

    .line 72
    new-instance v0, Landroid/util/TypedValue;

    .line 74
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 77
    iput-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 79
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 82
    :cond_51
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowMaxWidthMinor:I

    .line 84
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_63

    .line 90
    new-instance v0, Landroid/util/TypedValue;

    .line 92
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 95
    iput-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxWidthMinor:Landroid/util/TypedValue;

    .line 97
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 100
    :cond_63
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowMaxWidthMajor:I

    .line 102
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_75

    .line 108
    new-instance v0, Landroid/util/TypedValue;

    .line 110
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 113
    iput-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxWidthMajor:Landroid/util/TypedValue;

    .line 115
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 118
    :cond_75
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowMaxHeightMajor:I

    .line 120
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_87

    .line 126
    new-instance v0, Landroid/util/TypedValue;

    .line 128
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 131
    iput-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxHeightMajor:Landroid/util/TypedValue;

    .line 133
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 136
    :cond_87
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowMaxHeightMinor:I

    .line 138
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_99

    .line 144
    new-instance v0, Landroid/util/TypedValue;

    .line 146
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 149
    iput-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxHeightMinor:Landroid/util/TypedValue;

    .line 151
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 154
    :cond_99
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 157
    return-void
.end method

.method private resolveDimension(Landroid/util/TypedValue;Z)I
    .registers 5

    .line 1
    if-eqz p1, :cond_2d

    .line 3
    iget v0, p1, Landroid/util/TypedValue;->type:I

    .line 5
    if-eqz v0, :cond_2d

    .line 7
    const/4 v1, 0x5

    .line 8
    if-ne v0, v1, :cond_19

    .line 10
    iget-object p2, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    .line 12
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p1, p2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    .line 23
    move-result p1

    .line 24
    :goto_17
    float-to-int p1, p1

    .line 25
    goto :goto_2e

    .line 26
    :cond_19
    const/4 v1, 0x6

    .line 27
    if-ne v0, v1, :cond_2d

    .line 29
    if-eqz p2, :cond_23

    .line 31
    iget-object p2, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mScreenSize:Landroid/graphics/Point;

    .line 33
    iget p2, p2, Landroid/graphics/Point;->x:I

    .line 35
    goto :goto_27

    .line 36
    :cond_23
    iget-object p2, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mScreenSize:Landroid/graphics/Point;

    .line 38
    iget p2, p2, Landroid/graphics/Point;->y:I

    .line 40
    :goto_27
    int-to-float p2, p2

    .line 41
    invoke-virtual {p1, p2, p2}, Landroid/util/TypedValue;->getFraction(FF)F

    .line 44
    move-result p1

    .line 45
    goto :goto_17

    .line 46
    :cond_2d
    const/4 p1, 0x0

    .line 47
    :goto_2e
    return p1
.end method

.method private useMinor()Z
    .registers 4

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->isPortrait()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    iget v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mScreenHeightDp:I

    .line 11
    const/16 v2, 0x1f4

    .line 13
    if-lt v0, v2, :cond_f

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 v1, 0x0

    .line 17
    :goto_10
    return v1
.end method


# virtual methods
.method public flushWindowSizeIfNeed(I)V
    .registers 4

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mScreenHeightDp:I

    .line 3
    if-eq v0, p1, :cond_56

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    .line 7
    sget v1, Lmiuix/appcompat/R$attr;->windowFixedWidthMinor:I

    .line 9
    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 15
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    .line 17
    sget v1, Lmiuix/appcompat/R$attr;->windowFixedHeightMajor:I

    .line 19
    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 25
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    .line 27
    sget v1, Lmiuix/appcompat/R$attr;->windowFixedWidthMajor:I

    .line 29
    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 35
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    .line 37
    sget v1, Lmiuix/appcompat/R$attr;->windowFixedHeightMinor:I

    .line 39
    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 45
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    .line 47
    sget v1, Lmiuix/appcompat/R$attr;->windowMaxWidthMinor:I

    .line 49
    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxWidthMinor:Landroid/util/TypedValue;

    .line 55
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    .line 57
    sget v1, Lmiuix/appcompat/R$attr;->windowMaxWidthMajor:I

    .line 59
    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxWidthMajor:Landroid/util/TypedValue;

    .line 65
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    .line 67
    sget v1, Lmiuix/appcompat/R$attr;->windowMaxHeightMinor:I

    .line 69
    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    .line 72
    move-result-object v0

    .line 73
    iput-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxHeightMinor:Landroid/util/TypedValue;

    .line 75
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    .line 77
    sget v1, Lmiuix/appcompat/R$attr;->windowMaxHeightMajor:I

    .line 79
    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    .line 82
    move-result-object v0

    .line 83
    iput-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxHeightMajor:Landroid/util/TypedValue;

    .line 85
    iput p1, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mScreenHeightDp:I

    .line 87
    :cond_56
    iget-object p1, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    .line 89
    invoke-static {p1}, Lmiuix/core/util/EnvStateManager;->isFreeFormMode(Landroid/content/Context;)Z

    .line 92
    move-result p1

    .line 93
    iput-boolean p1, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mIsFreeWindowMode:Z

    .line 95
    return-void
.end method

.method public getHeightMeasureSpecForDialog(I)I
    .registers 9

    .line 1
    iget-object v3, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 3
    iget-object v4, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 5
    iget-object v5, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxHeightMinor:Landroid/util/TypedValue;

    .line 7
    iget-object v6, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxHeightMajor:Landroid/util/TypedValue;

    .line 9
    const/4 v2, 0x0

    .line 10
    move-object v0, p0

    .line 11
    move v1, p1

    .line 12
    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->getMeasureSpec(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I

    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public getScreenHeightDp()I
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    .line 3
    iget-object v1, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mScreenSize:Landroid/graphics/Point;

    .line 5
    invoke-static {v0, v1}, Lmiuix/core/util/WindowUtils;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 8
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 17
    move-result-object v0

    .line 18
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 20
    iget-object v1, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mScreenSize:Landroid/graphics/Point;

    .line 22
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 24
    int-to-float v1, v1

    .line 25
    div-float/2addr v1, v0

    .line 26
    float-to-int v0, v1

    .line 27
    return v0
.end method

.method public getWidthMeasureSpecForDialog(I)I
    .registers 9

    .line 1
    iget-object v3, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 3
    iget-object v4, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 5
    iget-object v5, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxWidthMinor:Landroid/util/TypedValue;

    .line 7
    iget-object v6, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxWidthMajor:Landroid/util/TypedValue;

    .line 9
    const/4 v2, 0x1

    .line 10
    move-object v0, p0

    .line 11
    move v1, p1

    .line 12
    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->getMeasureSpec(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I

    .line 15
    move-result p1

    .line 16
    return p1
.end method
