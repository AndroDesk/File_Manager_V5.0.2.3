.class public final Landroidx/appcompat/widget/h1;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# static fields
.field public static a:Ljava/lang/reflect/Method;

.field public static final b:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/16 v3, 0x1b

    .line 7
    if-lt v0, v3, :cond_a

    .line 9
    move v0, v2

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    move v0, v1

    .line 12
    :goto_b
    sput-boolean v0, Landroidx/appcompat/widget/h1;->b:Z

    .line 14
    :try_start_d
    const-class v0, Landroid/view/View;

    .line 16
    const-string v3, "computeFitSystemWindows"

    .line 18
    const/4 v4, 0x2

    .line 19
    new-array v4, v4, [Ljava/lang/Class;

    .line 21
    const-class v5, Landroid/graphics/Rect;

    .line 23
    aput-object v5, v4, v1

    .line 25
    const-class v1, Landroid/graphics/Rect;

    .line 27
    aput-object v1, v4, v2

    .line 29
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Landroidx/appcompat/widget/h1;->a:Ljava/lang/reflect/Method;

    .line 35
    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_35

    .line 41
    sget-object v0, Landroidx/appcompat/widget/h1;->a:Ljava/lang/reflect/Method;

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_2d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_2d} :catch_2e

    .line 46
    goto :goto_35

    .line 47
    :catch_2e
    const-string v0, "ViewUtils"

    .line 49
    const-string v1, "Could not find method computeFitSystemWindows. Oh well."

    .line 51
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_35
    :goto_35
    return-void
.end method

.method public static a(Landroid/view/View;)Z
    .registers 2

    .line 1
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-static {p0}, Lm0/g0$e;->d(Landroid/view/View;)I

    .line 6
    move-result p0

    .line 7
    const/4 v0, 0x1

    .line 8
    if-ne p0, v0, :cond_a

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    return v0
.end method
