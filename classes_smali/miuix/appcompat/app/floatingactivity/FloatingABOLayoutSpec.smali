.class public Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;
.super Ljava/lang/Object;
.source "FloatingABOLayoutSpec.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FloatingABOLayoutSpec"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mFixedHeightMajor:Landroid/util/TypedValue;

.field private mFixedHeightMinor:Landroid/util/TypedValue;

.field private mFixedWidthMajor:Landroid/util/TypedValue;

.field private mFixedWidthMinor:Landroid/util/TypedValue;

.field private mFloatingTheme:Z

.field private mFloatingWindow:Z

.field private mIsInDialogMode:Z

.field private mMaxHeightMajor:Landroid/util/TypedValue;

.field private mMaxHeightMinor:Landroid/util/TypedValue;

.field private mMaxWidthMajor:Landroid/util/TypedValue;

.field private mMaxWidthMinor:Landroid/util/TypedValue;

.field private mPhysicalSize:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingTheme:Z

    .line 4
    iput-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingWindow:Z

    .line 5
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    .line 6
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mPhysicalSize:Landroid/graphics/Point;

    .line 7
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->updatePhysicalSize(Landroid/content/Context;)V

    .line 8
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->parseWindowSize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getFixedHeightMajor()Landroid/util/TypedValue;
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingTheme:Z

    .line 3
    if-eqz v0, :cond_b

    .line 5
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingWindow:Z

    .line 7
    if-eqz v0, :cond_b

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    return-object v0
.end method

.method private getFixedHeightMinor()Landroid/util/TypedValue;
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingTheme:Z

    .line 3
    if-eqz v0, :cond_b

    .line 5
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingWindow:Z

    .line 7
    if-eqz v0, :cond_b

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    return-object v0
.end method

.method private getFixedWidthMajor()Landroid/util/TypedValue;
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingTheme:Z

    .line 3
    if-eqz v0, :cond_b

    .line 5
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingWindow:Z

    .line 7
    if-eqz v0, :cond_b

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    return-object v0
.end method

.method private getFixedWidthMinor()Landroid/util/TypedValue;
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingTheme:Z

    .line 3
    if-eqz v0, :cond_b

    .line 5
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingWindow:Z

    .line 7
    if-eqz v0, :cond_b

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    return-object v0
.end method

.method private getMaxHeightMajor()Landroid/util/TypedValue;
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingTheme:Z

    .line 3
    if-eqz v0, :cond_b

    .line 5
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingWindow:Z

    .line 7
    if-eqz v0, :cond_b

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxHeightMajor:Landroid/util/TypedValue;

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    return-object v0
.end method

.method private getMaxHeightMinor()Landroid/util/TypedValue;
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingTheme:Z

    .line 3
    if-eqz v0, :cond_b

    .line 5
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingWindow:Z

    .line 7
    if-eqz v0, :cond_b

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxHeightMinor:Landroid/util/TypedValue;

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    return-object v0
.end method

.method private getMaxWidthMajor()Landroid/util/TypedValue;
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingTheme:Z

    .line 3
    if-eqz v0, :cond_b

    .line 5
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingWindow:Z

    .line 7
    if-eqz v0, :cond_b

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxWidthMajor:Landroid/util/TypedValue;

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    return-object v0
.end method

.method private getMaxWidthMinor()Landroid/util/TypedValue;
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingTheme:Z

    .line 3
    if-eqz v0, :cond_b

    .line 5
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingWindow:Z

    .line 7
    if-eqz v0, :cond_b

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxWidthMinor:Landroid/util/TypedValue;

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    return-object v0
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
    if-ne v0, v1, :cond_33

    .line 9
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->isPortrait()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_f

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    move-object p3, p4

    .line 17
    :goto_10
    invoke-direct {p0, p3, p2}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->resolveDimension(Landroid/util/TypedValue;Z)I

    .line 20
    move-result p3

    .line 21
    if-lez p3, :cond_1d

    .line 23
    const/high16 p1, 0x40000000  # 2.0f

    .line 25
    invoke-static {p3, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 28
    move-result p1

    .line 29
    goto :goto_33

    .line 30
    :cond_1d
    if-eqz v0, :cond_20

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    move-object p5, p6

    .line 34
    :goto_21
    invoke-direct {p0, p5, p2}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->resolveDimension(Landroid/util/TypedValue;Z)I

    .line 37
    move-result p2

    .line 38
    if-lez p2, :cond_33

    .line 40
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 43
    move-result p1

    .line 44
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    .line 47
    move-result p1

    .line 48
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 51
    move-result p1

    .line 52
    :cond_33
    :goto_33
    return p1
.end method

.method private getThemeResourceId(Landroid/view/ContextThemeWrapper;)I
    .registers 5

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "getThemeResId"

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {v0, v1, v2}, Lmiuix/reflect/Reflects;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 11
    move-result-object v0

    .line 12
    invoke-static {p1, v0, v2}, Lmiuix/reflect/Reflects;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Ljava/lang/Integer;

    .line 18
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result p1
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_15} :catch_16

    .line 22
    goto :goto_1f

    .line 23
    :catch_16
    move-exception p1

    .line 24
    const-string v0, "FloatingABOLayoutSpec"

    .line 26
    const-string v1, "catch theme resource get exception"

    .line 28
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    const/4 p1, 0x0

    .line 32
    :goto_1f
    return p1
.end method

.method private isPortrait()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 14
    move-result-object v0

    .line 15
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 17
    const/4 v1, 0x1

    .line 18
    if-ne v0, v1, :cond_14

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    const/4 v1, 0x0

    .line 22
    :goto_15
    return v1
.end method

.method private parseWindowSize(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

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
    move-result-object p2

    .line 10
    sget v0, Lmiuix/appcompat/R$styleable;->Window_windowFixedWidthMinor:I

    .line 12
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1b

    .line 18
    new-instance v1, Landroid/util/TypedValue;

    .line 20
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 23
    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 25
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 28
    :cond_1b
    sget v0, Lmiuix/appcompat/R$styleable;->Window_windowFixedHeightMajor:I

    .line 30
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_2d

    .line 36
    new-instance v1, Landroid/util/TypedValue;

    .line 38
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 41
    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 43
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 46
    :cond_2d
    sget v0, Lmiuix/appcompat/R$styleable;->Window_windowFixedWidthMajor:I

    .line 48
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_3f

    .line 54
    new-instance v1, Landroid/util/TypedValue;

    .line 56
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 59
    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 61
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 64
    :cond_3f
    sget v0, Lmiuix/appcompat/R$styleable;->Window_windowFixedHeightMinor:I

    .line 66
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_51

    .line 72
    new-instance v1, Landroid/util/TypedValue;

    .line 74
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 77
    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 79
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 82
    :cond_51
    sget v0, Lmiuix/appcompat/R$styleable;->Window_windowMaxWidthMinor:I

    .line 84
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_63

    .line 90
    new-instance v1, Landroid/util/TypedValue;

    .line 92
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 95
    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxWidthMinor:Landroid/util/TypedValue;

    .line 97
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 100
    :cond_63
    sget v0, Lmiuix/appcompat/R$styleable;->Window_windowMaxWidthMajor:I

    .line 102
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_75

    .line 108
    new-instance v1, Landroid/util/TypedValue;

    .line 110
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 113
    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxWidthMajor:Landroid/util/TypedValue;

    .line 115
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 118
    :cond_75
    sget v0, Lmiuix/appcompat/R$styleable;->Window_windowMaxHeightMajor:I

    .line 120
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_87

    .line 126
    new-instance v1, Landroid/util/TypedValue;

    .line 128
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 131
    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxHeightMajor:Landroid/util/TypedValue;

    .line 133
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 136
    :cond_87
    sget v0, Lmiuix/appcompat/R$styleable;->Window_windowMaxHeightMinor:I

    .line 138
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_99

    .line 144
    new-instance v1, Landroid/util/TypedValue;

    .line 146
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 149
    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxHeightMinor:Landroid/util/TypedValue;

    .line 151
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 154
    :cond_99
    sget v0, Lmiuix/appcompat/R$styleable;->Window_isMiuixFloatingTheme:I

    .line 156
    const/4 v1, 0x0

    .line 157
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 160
    move-result v0

    .line 161
    iput-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingTheme:Z

    .line 163
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->isFloatingWindow(Landroid/content/Context;)Z

    .line 166
    move-result p1

    .line 167
    iput-boolean p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingWindow:Z

    .line 169
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 172
    return-void
.end method

.method private resolveDimension(Landroid/util/TypedValue;Z)I
    .registers 5

    .line 1
    if-eqz p1, :cond_25

    .line 3
    iget v0, p1, Landroid/util/TypedValue;->type:I

    .line 5
    if-eqz v0, :cond_25

    .line 7
    const/4 v1, 0x5

    .line 8
    if-ne v0, v1, :cond_11

    .line 10
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 12
    invoke-virtual {p1, p2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    .line 15
    move-result p1

    .line 16
    :goto_f
    float-to-int p1, p1

    .line 17
    goto :goto_26

    .line 18
    :cond_11
    const/4 v1, 0x6

    .line 19
    if-ne v0, v1, :cond_25

    .line 21
    if-eqz p2, :cond_1b

    .line 23
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mPhysicalSize:Landroid/graphics/Point;

    .line 25
    iget p2, p2, Landroid/graphics/Point;->x:I

    .line 27
    goto :goto_1f

    .line 28
    :cond_1b
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mPhysicalSize:Landroid/graphics/Point;

    .line 30
    iget p2, p2, Landroid/graphics/Point;->y:I

    .line 32
    :goto_1f
    int-to-float p2, p2

    .line 33
    invoke-virtual {p1, p2, p2}, Landroid/util/TypedValue;->getFraction(FF)F

    .line 36
    move-result p1

    .line 37
    goto :goto_f

    .line 38
    :cond_25
    const/4 p1, 0x0

    .line 39
    :goto_26
    return p1
.end method


# virtual methods
.method public getHeightMeasureSpec(I)I
    .registers 9

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getFixedHeightMinor()Landroid/util/TypedValue;

    .line 4
    move-result-object v3

    .line 5
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getFixedHeightMajor()Landroid/util/TypedValue;

    .line 8
    move-result-object v4

    .line 9
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getMaxHeightMinor()Landroid/util/TypedValue;

    .line 12
    move-result-object v5

    .line 13
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getMaxHeightMajor()Landroid/util/TypedValue;

    .line 16
    move-result-object v6

    .line 17
    const/4 v2, 0x0

    .line 18
    move-object v0, p0

    .line 19
    move v1, p1

    .line 20
    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getMeasureSpec(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I

    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method public getHeightMeasureSpecForDialog(I)I
    .registers 9

    .line 1
    iget-object v3, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 3
    iget-object v4, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 5
    iget-object v5, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxHeightMinor:Landroid/util/TypedValue;

    .line 7
    iget-object v6, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxHeightMajor:Landroid/util/TypedValue;

    .line 9
    const/4 v2, 0x0

    .line 10
    move-object v0, p0

    .line 11
    move v1, p1

    .line 12
    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getMeasureSpec(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I

    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public getWidthMeasureSpec(I)I
    .registers 9

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getFixedWidthMinor()Landroid/util/TypedValue;

    .line 4
    move-result-object v3

    .line 5
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getFixedWidthMajor()Landroid/util/TypedValue;

    .line 8
    move-result-object v4

    .line 9
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getMaxWidthMinor()Landroid/util/TypedValue;

    .line 12
    move-result-object v5

    .line 13
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getMaxWidthMajor()Landroid/util/TypedValue;

    .line 16
    move-result-object v6

    .line 17
    const/4 v2, 0x1

    .line 18
    move-object v0, p0

    .line 19
    move v1, p1

    .line 20
    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getMeasureSpec(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I

    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method public getWidthMeasureSpecForDialog(I)I
    .registers 9

    .line 1
    iget-object v3, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 3
    iget-object v4, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 5
    iget-object v5, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxWidthMinor:Landroid/util/TypedValue;

    .line 7
    iget-object v6, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxWidthMajor:Landroid/util/TypedValue;

    .line 9
    const/4 v2, 0x1

    .line 10
    move-object v0, p0

    .line 11
    move v1, p1

    .line 12
    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getMeasureSpec(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I

    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public onConfigurationChanged()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    .line 3
    iget-boolean v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mIsInDialogMode:Z

    .line 5
    if-eqz v1, :cond_1e

    .line 7
    instance-of v1, v0, Landroid/view/ContextThemeWrapper;

    .line 9
    if-eqz v1, :cond_1e

    .line 11
    move-object v1, v0

    .line 12
    check-cast v1, Landroid/view/ContextThemeWrapper;

    .line 14
    invoke-direct {p0, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getThemeResourceId(Landroid/view/ContextThemeWrapper;)I

    .line 17
    move-result v1

    .line 18
    if-lez v1, :cond_1e

    .line 20
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 22
    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    .line 24
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 27
    move-result-object v2

    .line 28
    invoke-direct {v0, v2, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 31
    :cond_1e
    sget v1, Lmiuix/appcompat/R$attr;->windowFixedWidthMinor:I

    .line 33
    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    .line 36
    move-result-object v1

    .line 37
    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 39
    sget v1, Lmiuix/appcompat/R$attr;->windowFixedHeightMajor:I

    .line 41
    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    .line 44
    move-result-object v1

    .line 45
    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 47
    sget v1, Lmiuix/appcompat/R$attr;->windowFixedWidthMajor:I

    .line 49
    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    .line 52
    move-result-object v1

    .line 53
    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 55
    sget v1, Lmiuix/appcompat/R$attr;->windowFixedHeightMinor:I

    .line 57
    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    .line 60
    move-result-object v1

    .line 61
    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 63
    sget v1, Lmiuix/appcompat/R$attr;->windowMaxWidthMinor:I

    .line 65
    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    .line 68
    move-result-object v1

    .line 69
    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxWidthMinor:Landroid/util/TypedValue;

    .line 71
    sget v1, Lmiuix/appcompat/R$attr;->windowMaxWidthMajor:I

    .line 73
    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    .line 76
    move-result-object v1

    .line 77
    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxWidthMajor:Landroid/util/TypedValue;

    .line 79
    sget v1, Lmiuix/appcompat/R$attr;->windowMaxHeightMinor:I

    .line 81
    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    .line 84
    move-result-object v1

    .line 85
    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxHeightMinor:Landroid/util/TypedValue;

    .line 87
    sget v1, Lmiuix/appcompat/R$attr;->windowMaxHeightMajor:I

    .line 89
    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    .line 92
    move-result-object v1

    .line 93
    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxHeightMajor:Landroid/util/TypedValue;

    .line 95
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->updatePhysicalSize(Landroid/content/Context;)V

    .line 98
    return-void
.end method

.method public onFloatingModeChanged(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingTheme:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput-boolean p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingWindow:Z

    .line 8
    return-void
.end method

.method public setIsInDialogMode(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mIsInDialogMode:Z

    .line 3
    return-void
.end method

.method public updatePhysicalSize(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 11
    invoke-static {p1}, Lmiuix/core/util/WindowUtils;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mPhysicalSize:Landroid/graphics/Point;

    .line 17
    return-void
.end method
