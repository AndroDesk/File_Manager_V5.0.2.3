.class public final Lm0/j0;
.super Ljava/lang/Object;
.source "ViewConfigurationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm0/j0$a;,
        Lm0/j0$b;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x19

    .line 5
    if-ne v0, v1, :cond_1b

    .line 7
    :try_start_6
    const-class v0, Landroid/view/ViewConfiguration;

    .line 9
    const-string v1, "getScaledScrollFactor"

    .line 11
    const/4 v2, 0x0

    .line 12
    new-array v2, v2, [Ljava/lang/Class;

    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lm0/j0;->a:Ljava/lang/reflect/Method;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_14

    .line 20
    goto :goto_1b

    .line 21
    :catch_14
    const-string v0, "ViewConfigCompat"

    .line 23
    const-string v1, "Could not find method getScaledScrollFactor() on ViewConfiguration"

    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_1b
    :goto_1b
    return-void
.end method

.method public static a(Landroid/view/ViewConfiguration;Landroid/content/Context;)F
    .registers 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x19

    .line 5
    if-lt v0, v1, :cond_20

    .line 7
    sget-object v0, Lm0/j0;->a:Ljava/lang/reflect/Method;

    .line 9
    if-eqz v0, :cond_20

    .line 11
    const/4 v1, 0x0

    .line 12
    :try_start_b
    new-array v1, v1, [Ljava/lang/Object;

    .line 14
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Ljava/lang/Integer;

    .line 20
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 23
    move-result p0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_17} :catch_19

    .line 24
    int-to-float p0, p0

    .line 25
    return p0

    .line 26
    :catch_19
    const-string p0, "ViewConfigCompat"

    .line 28
    const-string v0, "Could not find method getScaledScrollFactor() on ViewConfiguration"

    .line 30
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_20
    new-instance p0, Landroid/util/TypedValue;

    .line 35
    invoke-direct {p0}, Landroid/util/TypedValue;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 41
    move-result-object v0

    .line 42
    const v1, 0x101004d

    .line 45
    const/4 v2, 0x1

    .line 46
    invoke-virtual {v0, v1, p0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_40

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p0, p1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    .line 63
    move-result p0

    .line 64
    return p0

    .line 65
    :cond_40
    const/4 p0, 0x0

    .line 66
    return p0
.end method

.method public static b(Landroid/view/ViewConfiguration;Landroid/content/Context;)Z
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1c

    .line 5
    if-lt v0, v1, :cond_b

    .line 7
    invoke-static {p0}, Lm0/j0$b;->b(Landroid/view/ViewConfiguration;)Z

    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object p0

    .line 16
    const-string p1, "config_showMenuShortcutsWhenKeyboardPresent"

    .line 18
    const-string v0, "bool"

    .line 20
    const-string v1, "android"

    .line 22
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_23

    .line 28
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_23

    .line 34
    const/4 p0, 0x1

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    const/4 p0, 0x0

    .line 37
    :goto_24
    return p0
.end method
