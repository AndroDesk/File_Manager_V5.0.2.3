.class public Lmiuix/androidbasewidget/widget/StateEditText;
.super Lmiuix/androidbasewidget/widget/EditText;
.source "StateEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;
    }
.end annotation


# static fields
.field private static final WIDGET_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mExtraDrawables:[Landroid/graphics/drawable/Drawable;

.field private mLabel:Ljava/lang/String;

.field private mLabelLayout:Landroid/text/StaticLayout;

.field private mLabelLength:I

.field private mLabelMaxWidth:I

.field private mPressed:Z

.field private mWidgetManager:Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;

.field private mWidgetPadding:I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Class;

    .line 4
    const/4 v1, 0x0

    .line 5
    const-class v2, Landroid/content/Context;

    .line 7
    aput-object v2, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    const-class v2, Landroid/util/AttributeSet;

    .line 12
    aput-object v2, v0, v1

    .line 14
    sput-object v0, Lmiuix/androidbasewidget/widget/StateEditText;->WIDGET_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/androidbasewidget/widget/StateEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    sget v0, Lmiuix/androidbasewidget/R$attr;->miuixAppcompatStateEditTextStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/androidbasewidget/widget/StateEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lmiuix/androidbasewidget/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLayout:Landroid/text/StaticLayout;

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lmiuix/androidbasewidget/widget/StateEditText;->initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private createLabelLayout()V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 7
    move-result v2

    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 11
    move-result-object v3

    .line 12
    iget v4, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLength:I

    .line 14
    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLayout:Landroid/text/StaticLayout;

    .line 24
    return-void
.end method

.method private createWidgetManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;
    .registers 8

    .line 1
    const-string v0, "Could not instantiate the WidgetManager: "

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_6c

    .line 9
    :try_start_8
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 16
    move-result-object v1

    .line 17
    const-class v2, Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 22
    move-result-object v1

    .line 23
    sget-object v2, Lmiuix/androidbasewidget/widget/StateEditText;->WIDGET_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x2

    .line 30
    new-array v2, v2, [Ljava/lang/Object;

    .line 32
    const/4 v3, 0x0

    .line 33
    aput-object p1, v2, v3

    .line 35
    const/4 p1, 0x1

    .line 36
    aput-object p3, v2, p1

    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;
    :try_end_2e
    .catch Ljava/lang/InstantiationException; {:try_start_8 .. :try_end_2e} :catch_61
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_2e} :catch_56
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_2e} :catch_49
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_2e} :catch_3c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_2e} :catch_2f

    .line 47
    goto :goto_6d

    .line 48
    :catch_2f
    move-exception p1

    .line 49
    new-instance p3, Ljava/lang/IllegalStateException;

    .line 51
    const-string v0, "Error creating WidgetManager "

    .line 53
    invoke-static {v0, p2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    move-result-object p2

    .line 57
    invoke-direct {p3, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    throw p3

    .line 61
    :catch_3c
    move-exception p1

    .line 62
    new-instance p3, Ljava/lang/IllegalStateException;

    .line 64
    const-string v0, "Can\'t find WidgetManager: "

    .line 66
    invoke-static {v0, p2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object p2

    .line 70
    invoke-direct {p3, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    throw p3

    .line 74
    :catch_49
    move-exception p1

    .line 75
    new-instance p3, Ljava/lang/IllegalStateException;

    .line 77
    const-string v0, "Can\'t access non-public constructor "

    .line 79
    invoke-static {v0, p2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    move-result-object p2

    .line 83
    invoke-direct {p3, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    throw p3

    .line 87
    :catch_56
    move-exception p1

    .line 88
    new-instance p3, Ljava/lang/IllegalStateException;

    .line 90
    invoke-static {v0, p2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    move-result-object p2

    .line 94
    invoke-direct {p3, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    throw p3

    .line 98
    :catch_61
    move-exception p1

    .line 99
    new-instance p3, Ljava/lang/IllegalStateException;

    .line 101
    invoke-static {v0, p2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    move-result-object p2

    .line 105
    invoke-direct {p3, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    throw p3

    .line 109
    :cond_6c
    const/4 p1, 0x0

    .line 110
    :goto_6d
    return-object p1
.end method

.method private dispatchEndDrawableTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetManager:Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/StateEditText;->isWidgetResumedEvent(Landroid/view/MotionEvent;)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method private drawExtraWidget(Landroid/graphics/Canvas;)V
    .registers 15

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_77

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 16
    move-result v2

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 20
    move-result v3

    .line 21
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 24
    move-result-object v4

    .line 25
    const/4 v5, 0x2

    .line 26
    aget-object v4, v4, v5

    .line 28
    const/4 v6, 0x0

    .line 29
    if-nez v4, :cond_20

    .line 31
    move v4, v6

    .line 32
    goto :goto_27

    .line 33
    :cond_20
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 36
    move-result v4

    .line 37
    iget v7, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetPadding:I

    .line 39
    add-int/2addr v4, v7

    .line 40
    :goto_27
    div-int/2addr v1, v5

    .line 41
    move v5, v6

    .line 42
    :goto_29
    iget-object v7, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    .line 44
    array-length v8, v7

    .line 45
    if-ge v6, v8, :cond_77

    .line 47
    aget-object v7, v7, v6

    .line 49
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 52
    move-result v7

    .line 53
    iget-object v8, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    .line 55
    aget-object v8, v8, v6

    .line 57
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 60
    move-result v8

    .line 61
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 64
    move-result v9

    .line 65
    if-eqz v9, :cond_56

    .line 67
    iget-object v9, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    .line 69
    aget-object v9, v9, v6

    .line 71
    add-int v10, v2, v3

    .line 73
    add-int/2addr v10, v4

    .line 74
    add-int v11, v10, v5

    .line 76
    div-int/lit8 v8, v8, 0x2

    .line 78
    sub-int v12, v1, v8

    .line 80
    add-int/2addr v10, v7

    .line 81
    add-int/2addr v10, v5

    .line 82
    add-int/2addr v8, v1

    .line 83
    invoke-virtual {v9, v11, v12, v10, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 86
    goto :goto_6a

    .line 87
    :cond_56
    iget-object v9, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    .line 89
    aget-object v9, v9, v6

    .line 91
    add-int v10, v2, v0

    .line 93
    sub-int/2addr v10, v3

    .line 94
    sub-int/2addr v10, v4

    .line 95
    sub-int v11, v10, v7

    .line 97
    sub-int/2addr v11, v5

    .line 98
    div-int/lit8 v8, v8, 0x2

    .line 100
    sub-int v12, v1, v8

    .line 102
    sub-int/2addr v10, v5

    .line 103
    add-int/2addr v8, v1

    .line 104
    invoke-virtual {v9, v11, v12, v10, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 107
    :goto_6a
    iget v5, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetPadding:I

    .line 109
    add-int/2addr v5, v7

    .line 110
    iget-object v7, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    .line 112
    aget-object v7, v7, v6

    .line 114
    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 117
    add-int/lit8 v6, v6, 0x1

    .line 119
    goto :goto_29

    .line 120
    :cond_77
    return-void
.end method

.method private drawLabel(Landroid/graphics/Canvas;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_7d

    .line 9
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLayout:Landroid/text/StaticLayout;

    .line 11
    if-eqz v0, :cond_7d

    .line 13
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    .line 20
    move-result v0

    .line 21
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 28
    move-result v2

    .line 29
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 35
    move-result v1

    .line 36
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 39
    move-result-object v2

    .line 40
    const/4 v3, 0x0

    .line 41
    aget-object v2, v2, v3

    .line 43
    if-nez v2, :cond_2d

    .line 45
    goto :goto_34

    .line 46
    :cond_2d
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 49
    move-result v2

    .line 50
    iget v3, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetPadding:I

    .line 52
    add-int/2addr v3, v2

    .line 53
    :goto_34
    const/4 v2, 0x0

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 57
    move-result v4

    .line 58
    iget-object v5, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLayout:Landroid/text/StaticLayout;

    .line 60
    invoke-virtual {v5}, Landroid/text/Layout;->getHeight()I

    .line 63
    move-result v5

    .line 64
    sub-int/2addr v4, v5

    .line 65
    int-to-float v4, v4

    .line 66
    const/high16 v5, 0x40000000  # 2.0f

    .line 68
    div-float/2addr v4, v5

    .line 69
    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    .line 72
    move-result v2

    .line 73
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 76
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_64

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 85
    move-result v4

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 89
    move-result v5

    .line 90
    add-int/2addr v5, v4

    .line 91
    sub-int/2addr v5, v3

    .line 92
    iget v3, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLength:I

    .line 94
    sub-int/2addr v5, v3

    .line 95
    sub-int/2addr v5, v1

    .line 96
    int-to-float v1, v5

    .line 97
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 100
    goto :goto_6e

    .line 101
    :cond_64
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 104
    move-result v4

    .line 105
    add-int/2addr v4, v1

    .line 106
    add-int/2addr v4, v3

    .line 107
    int-to-float v1, v4

    .line 108
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 111
    :goto_6e
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLayout:Landroid/text/StaticLayout;

    .line 113
    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 116
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 119
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    :cond_7d
    return-void
.end method

.method private getLabelLength()I
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLength:I

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v1, 0x0

    .line 6
    goto :goto_8

    .line 7
    :cond_6
    iget v1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetPadding:I

    .line 9
    :goto_8
    add-int/2addr v0, v1

    .line 10
    return v0
.end method

.method private getWidgetLength()I
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_17

    .line 6
    array-length v2, v0

    .line 7
    move v3, v1

    .line 8
    :goto_7
    if-ge v1, v2, :cond_16

    .line 10
    aget-object v4, v0, v1

    .line 12
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 15
    move-result v4

    .line 16
    add-int/2addr v4, v3

    .line 17
    iget v3, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetPadding:I

    .line 19
    add-int/2addr v3, v4

    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 22
    goto :goto_7

    .line 23
    :cond_16
    move v1, v3

    .line 24
    :cond_17
    return v1
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_2e

    .line 4
    sget-object v1, Lmiuix/androidbasewidget/R$styleable;->miuixAppcompatStateEditText:[I

    .line 6
    sget v2, Lmiuix/androidbasewidget/R$style;->Widget_StateEditText_DayNight:I

    .line 8
    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 11
    move-result-object p3

    .line 12
    sget v1, Lmiuix/androidbasewidget/R$styleable;->miuixAppcompatStateEditText_miuixAppcompatWidgetManager:I

    .line 14
    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    sget v2, Lmiuix/androidbasewidget/R$styleable;->miuixAppcompatStateEditText_miuixAppcompatLabel:I

    .line 20
    invoke-virtual {p3, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    iput-object v2, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    .line 26
    sget v2, Lmiuix/androidbasewidget/R$styleable;->miuixAppcompatStateEditText_miuixAppcompatLabelMaxWidth:I

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-virtual {p3, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 32
    move-result v2

    .line 33
    iput v2, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelMaxWidth:I

    .line 35
    sget v2, Lmiuix/androidbasewidget/R$styleable;->miuixAppcompatStateEditText_miuixAppcompatWidgetPadding:I

    .line 37
    invoke-virtual {p3, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 40
    move-result v2

    .line 41
    iput v2, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetPadding:I

    .line 43
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 46
    goto :goto_2f

    .line 47
    :cond_2e
    move-object v1, v0

    .line 48
    :goto_2f
    invoke-direct {p0, p1, v1, p2}, Lmiuix/androidbasewidget/widget/StateEditText;->createWidgetManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;

    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p0, p1}, Lmiuix/androidbasewidget/widget/StateEditText;->setWidgetManager(Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;)V

    .line 55
    iput-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    .line 57
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetManager:Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;

    .line 59
    if-eqz p1, :cond_42

    .line 61
    invoke-virtual {p1}, Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;->getWidgetDrawables()[Landroid/graphics/drawable/Drawable;

    .line 64
    move-result-object p1

    .line 65
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    .line 67
    :cond_42
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    .line 69
    invoke-virtual {p0, p1}, Lmiuix/androidbasewidget/widget/StateEditText;->setLabel(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method private isWidgetResumedEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_35

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 9
    move-result v0

    .line 10
    move v2, v1

    .line 11
    :goto_a
    iget-object v3, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    .line 13
    array-length v4, v3

    .line 14
    if-ge v2, v4, :cond_35

    .line 16
    aget-object v3, v3, v2

    .line 18
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 25
    move-result v4

    .line 26
    iget v5, v3, Landroid/graphics/Rect;->right:I

    .line 28
    sub-int/2addr v5, v0

    .line 29
    int-to-float v5, v5

    .line 30
    cmpg-float v4, v4, v5

    .line 32
    if-gez v4, :cond_32

    .line 34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 37
    move-result v4

    .line 38
    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 40
    sub-int/2addr v3, v0

    .line 41
    int-to-float v3, v3

    .line 42
    cmpl-float v3, v4, v3

    .line 44
    if-lez v3, :cond_32

    .line 46
    invoke-direct {p0, p1, v2}, Lmiuix/androidbasewidget/widget/StateEditText;->onWidgetTouchEvent(Landroid/view/MotionEvent;I)Z

    .line 49
    move-result p1

    .line 50
    return p1

    .line 51
    :cond_32
    add-int/lit8 v2, v2, 0x1

    .line 53
    goto :goto_a

    .line 54
    :cond_35
    iput-boolean v1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mPressed:Z

    .line 56
    return v1
.end method

.method private onWidgetTouchEvent(Landroid/view/MotionEvent;I)Z
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p1, :cond_23

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eq p1, v0, :cond_15

    .line 11
    const/4 p2, 0x3

    .line 12
    if-eq p1, p2, :cond_e

    .line 14
    goto :goto_25

    .line 15
    :cond_e
    iget-boolean p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mPressed:Z

    .line 17
    if-eqz p1, :cond_25

    .line 19
    iput-boolean v1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mPressed:Z

    .line 21
    goto :goto_25

    .line 22
    :cond_15
    iget-boolean p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mPressed:Z

    .line 24
    if-eqz p1, :cond_25

    .line 26
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetManager:Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;

    .line 28
    if-eqz p1, :cond_25

    .line 30
    invoke-virtual {p1, p2}, Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;->onWidgetClick(I)V

    .line 33
    iput-boolean v1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mPressed:Z

    .line 35
    return v0

    .line 36
    :cond_23
    iput-boolean v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mPressed:Z

    .line 38
    :cond_25
    :goto_25
    iget-boolean p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mPressed:Z

    .line 40
    return p1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/StateEditText;->dispatchEndDrawableTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_f

    .line 7
    invoke-super {p0, p1}, Lmiuix/androidbasewidget/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_d

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    const/4 p1, 0x0

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    :goto_f
    const/4 p1, 0x1

    .line 17
    :goto_10
    return p1
.end method

.method public getCompoundPaddingLeft()I
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 4
    move-result v0

    .line 5
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_f

    .line 11
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getWidgetLength()I

    .line 14
    move-result v1

    .line 15
    goto :goto_13

    .line 16
    :cond_f
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getLabelLength()I

    .line 19
    move-result v1

    .line 20
    :goto_13
    add-int/2addr v0, v1

    .line 21
    return v0
.end method

.method public getCompoundPaddingRight()I
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    .line 4
    move-result v0

    .line 5
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_f

    .line 11
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getLabelLength()I

    .line 14
    move-result v1

    .line 15
    goto :goto_13

    .line 16
    :cond_f
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getWidgetLength()I

    .line 19
    move-result v1

    .line 20
    :goto_13
    add-int/2addr v0, v1

    .line 21
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/StateEditText;->drawExtraWidget(Landroid/graphics/Canvas;)V

    .line 7
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/StateEditText;->drawLabel(Landroid/graphics/Canvas;)V

    .line 10
    return-void
.end method

.method public onMeasure(II)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lmiuix/androidbasewidget/widget/EditText;->onMeasure(II)V

    .line 4
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_45

    .line 12
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLayout:Landroid/text/StaticLayout;

    .line 14
    if-eqz p1, :cond_45

    .line 16
    iget p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelMaxWidth:I

    .line 18
    if-nez p1, :cond_28

    .line 20
    iget p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLength:I

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 25
    move-result p2

    .line 26
    div-int/lit8 p2, p2, 0x2

    .line 28
    if-le p1, p2, :cond_28

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 33
    move-result p1

    .line 34
    div-int/lit8 p1, p1, 0x2

    .line 36
    iput p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLength:I

    .line 38
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->createLabelLayout()V

    .line 41
    :cond_28
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLayout:Landroid/text/StaticLayout;

    .line 43
    invoke-virtual {p1}, Landroid/text/Layout;->getHeight()I

    .line 46
    move-result p1

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 50
    move-result p2

    .line 51
    add-int/2addr p2, p1

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 55
    move-result p1

    .line 56
    add-int/2addr p1, p2

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 60
    move-result p2

    .line 61
    if-le p1, p2, :cond_45

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 66
    move-result p2

    .line 67
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 70
    :cond_45
    return-void
.end method

.method public setInputType(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    .line 4
    move-result-object v0

    .line 5
    invoke-super {p0, p1}, Landroid/widget/TextView;->setInputType(I)V

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 11
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    .line 3
    iget v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelMaxWidth:I

    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_22

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_e

    .line 14
    goto :goto_1f

    .line 15
    :cond_e
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 18
    move-result-object p1

    .line 19
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    .line 21
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 24
    move-result p1

    .line 25
    float-to-int p1, p1

    .line 26
    iget v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelMaxWidth:I

    .line 28
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 31
    move-result v1

    .line 32
    :goto_1f
    iput v1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLength:I

    .line 34
    goto :goto_36

    .line 35
    :cond_22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_29

    .line 41
    goto :goto_34

    .line 42
    :cond_29
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 45
    move-result-object p1

    .line 46
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    .line 48
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 51
    move-result p1

    .line 52
    float-to-int v1, p1

    .line 53
    :goto_34
    iput v1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLength:I

    .line 55
    :goto_36
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_41

    .line 63
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->createLabelLayout()V

    .line 66
    :cond_41
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 69
    return-void
.end method

.method public setWidgetManager(Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetManager:Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {v0}, Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;->onDetached()V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    .line 11
    :cond_a
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetManager:Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;

    .line 13
    if-eqz p1, :cond_19

    .line 15
    invoke-virtual {p1}, Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;->getWidgetDrawables()[Landroid/graphics/drawable/Drawable;

    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    .line 21
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetManager:Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;

    .line 23
    invoke-virtual {p1, p0}, Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;->onAttached(Lmiuix/androidbasewidget/widget/StateEditText;)V

    .line 26
    :cond_19
    return-void
.end method
