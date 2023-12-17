.class public Lmiuix/androidbasewidget/widget/ProgressBar;
.super Landroid/widget/ProgressBar;
.source "ProgressBar.java"


# instance fields
.field private mIndeterminateDrawableOrignal:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/androidbasewidget/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    sget v0, Lmiuix/androidbasewidget/R$attr;->progressBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/androidbasewidget/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/androidbasewidget/widget/ProgressBar;->postConstruct(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public postConstruct(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10

    .line 1
    sget-object v0, Lmiuix/androidbasewidget/R$styleable;->ProgressBar:[I

    .line 3
    sget v1, Lmiuix/androidbasewidget/R$style;->Widget_ProgressBar_Horizontal_DayNight:I

    .line 5
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 8
    move-result-object p1

    .line 9
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/ProgressBar;->mIndeterminateDrawableOrignal:Landroid/graphics/drawable/Drawable;

    .line 11
    if-eqz p2, :cond_5e

    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    move-result-object p3

    .line 17
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 20
    move-result-object p3

    .line 21
    const-string v0, "android.graphics.drawable.AnimatedRotateDrawable"

    .line 23
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result p3

    .line 27
    if-eqz p3, :cond_5e

    .line 29
    sget p3, Lmiuix/androidbasewidget/R$styleable;->ProgressBar_indeterminateFramesCount:I

    .line 31
    const/16 v0, 0x30

    .line 33
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 36
    move-result p3

    .line 37
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    move-result-object v0

    .line 41
    const/4 v1, 0x1

    .line 42
    new-array v2, v1, [Ljava/lang/Class;

    .line 44
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 46
    const/4 v4, 0x0

    .line 47
    aput-object v3, v2, v4

    .line 49
    const-string v5, "setFramesCount"

    .line 51
    invoke-static {v0, v5, v2}, Lmiuix/reflect/Reflects;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 54
    move-result-object v2

    .line 55
    new-array v5, v1, [Ljava/lang/Object;

    .line 57
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object p3

    .line 61
    aput-object p3, v5, v4

    .line 63
    invoke-static {p2, v2, v5}, Lmiuix/reflect/Reflects;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget p3, Lmiuix/androidbasewidget/R$styleable;->ProgressBar_indeterminateFramesDuration:I

    .line 68
    const/16 v2, 0x19

    .line 70
    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 73
    move-result p3

    .line 74
    new-array v2, v1, [Ljava/lang/Class;

    .line 76
    aput-object v3, v2, v4

    .line 78
    const-string v3, "setFramesDuration"

    .line 80
    invoke-static {v0, v3, v2}, Lmiuix/reflect/Reflects;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 83
    move-result-object v0

    .line 84
    new-array v1, v1, [Ljava/lang/Object;

    .line 86
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    move-result-object p3

    .line 90
    aput-object p3, v1, v4

    .line 92
    invoke-static {p2, v0, v1}, Lmiuix/reflect/Reflects;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_5e
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    return-void
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/ProgressBar;->mIndeterminateDrawableOrignal:Landroid/graphics/drawable/Drawable;

    .line 6
    if-eq v0, p1, :cond_9

    .line 8
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/ProgressBar;->mIndeterminateDrawableOrignal:Landroid/graphics/drawable/Drawable;

    .line 10
    :cond_9
    return-void
.end method
