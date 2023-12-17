.class public final Landroidx/appcompat/widget/t0;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# static fields
.field public static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:[I

.field public static final c:[I

.field public static final d:[I

.field public static final e:[I

.field public static final f:[I

.field public static final g:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 6
    sput-object v0, Landroidx/appcompat/widget/t0;->a:Ljava/lang/ThreadLocal;

    .line 8
    const/4 v0, 0x1

    .line 9
    new-array v1, v0, [I

    .line 11
    const v2, -0x101009e

    .line 14
    const/4 v3, 0x0

    .line 15
    aput v2, v1, v3

    .line 17
    sput-object v1, Landroidx/appcompat/widget/t0;->b:[I

    .line 19
    new-array v1, v0, [I

    .line 21
    const v2, 0x101009c

    .line 24
    aput v2, v1, v3

    .line 26
    sput-object v1, Landroidx/appcompat/widget/t0;->c:[I

    .line 28
    new-array v1, v0, [I

    .line 30
    const v2, 0x10100a7

    .line 33
    aput v2, v1, v3

    .line 35
    sput-object v1, Landroidx/appcompat/widget/t0;->d:[I

    .line 37
    new-array v1, v0, [I

    .line 39
    const v2, 0x10100a0

    .line 42
    aput v2, v1, v3

    .line 44
    sput-object v1, Landroidx/appcompat/widget/t0;->e:[I

    .line 46
    new-array v1, v3, [I

    .line 48
    sput-object v1, Landroidx/appcompat/widget/t0;->f:[I

    .line 50
    new-array v0, v0, [I

    .line 52
    sput-object v0, Landroidx/appcompat/widget/t0;->g:[I

    .line 54
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;)V
    .registers 5

    .line 1
    sget-object v0, Lh/j;->AppCompatTheme:[I

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 6
    move-result-object p0

    .line 7
    :try_start_6
    sget v0, Lh/j;->AppCompatTheme_windowActionBar:I

    .line 9
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_2d

    .line 15
    const-string v0, "ThemeUtils"

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    const-string v2, "View "

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    const-string p1, " is an AppCompat widget that can only be used with a Theme.AppCompat theme (or descendant)."

    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_6 .. :try_end_2d} :catchall_31

    .line 46
    :cond_2d
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    return-void

    .line 50
    :catchall_31
    move-exception p1

    .line 51
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    throw p1
.end method

.method public static b(Landroid/content/Context;I)I
    .registers 6

    .line 1
    invoke-static {p0, p1}, Landroidx/appcompat/widget/t0;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_17

    .line 7
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_17

    .line 13
    sget-object p0, Landroidx/appcompat/widget/t0;->b:[I

    .line 15
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 18
    move-result p1

    .line 19
    invoke-virtual {v0, p0, p1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_17
    sget-object v0, Landroidx/appcompat/widget/t0;->a:Ljava/lang/ThreadLocal;

    .line 26
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/util/TypedValue;

    .line 32
    if-nez v1, :cond_29

    .line 34
    new-instance v1, Landroid/util/TypedValue;

    .line 36
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 42
    :cond_29
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 45
    move-result-object v0

    .line 46
    const v2, 0x1010033

    .line 49
    const/4 v3, 0x1

    .line 50
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 53
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    .line 56
    move-result v0

    .line 57
    invoke-static {p0, p1}, Landroidx/appcompat/widget/t0;->c(Landroid/content/Context;I)I

    .line 60
    move-result p0

    .line 61
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    .line 64
    move-result p1

    .line 65
    int-to-float p1, p1

    .line 66
    mul-float/2addr p1, v0

    .line 67
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 70
    move-result p1

    .line 71
    invoke-static {p0, p1}, Lf0/d;->c(II)I

    .line 74
    move-result p0

    .line 75
    return p0
.end method

.method public static c(Landroid/content/Context;I)I
    .registers 4

    .line 1
    sget-object v0, Landroidx/appcompat/widget/t0;->g:[I

    .line 3
    const/4 v1, 0x0

    .line 4
    aput p1, v0, v1

    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 10
    move-result-object p0

    .line 11
    :try_start_a
    invoke-virtual {p0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 14
    move-result p1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_12

    .line 15
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 18
    return p1

    .line 19
    :catchall_12
    move-exception p1

    .line 20
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 23
    throw p1
.end method

.method public static d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 4

    .line 1
    sget-object v0, Landroidx/appcompat/widget/t0;->g:[I

    .line 3
    const/4 v1, 0x0

    .line 4
    aput p1, v0, v1

    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 10
    move-result-object p1

    .line 11
    :try_start_a
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1f

    .line 17
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1f

    .line 23
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 26
    move-result-object p0

    .line 27
    if-eqz p0, :cond_1f

    .line 29
    goto :goto_23

    .line 30
    :catchall_1d
    move-exception p0

    .line 31
    goto :goto_27

    .line 32
    :cond_1f
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 35
    move-result-object p0
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_1d

    .line 36
    :goto_23
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    return-object p0

    .line 40
    :goto_27
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    throw p0
.end method
