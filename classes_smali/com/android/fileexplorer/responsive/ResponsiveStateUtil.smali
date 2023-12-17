.class public Lcom/android/fileexplorer/responsive/ResponsiveStateUtil;
.super Ljava/lang/Object;
.source "ResponsiveStateUtil.java"


# static fields
.field private static final NO_RESPONSIVE_STATE:I = -0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFreeMode_16_9Layout(I)Z
    .registers 3

    .line 1
    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    if-gez p0, :cond_c

    .line 9
    invoke-static {}, Lcom/android/fileexplorer/responsive/ResponsiveStateManager;->getCurrentState()I

    .line 12
    move-result p0

    .line 13
    :cond_c
    const/16 v0, 0x2001

    .line 15
    if-ne p0, v0, :cond_11

    .line 17
    const/4 v1, 0x1

    .line 18
    :cond_11
    return v1
.end method

.method public static isFreeMode_3_4Layout(I)Z
    .registers 3

    .line 1
    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    if-gez p0, :cond_c

    .line 9
    invoke-static {}, Lcom/android/fileexplorer/responsive/ResponsiveStateManager;->getCurrentState()I

    .line 12
    move-result p0

    .line 13
    :cond_c
    const/16 v0, 0x2002

    .line 15
    if-ne p0, v0, :cond_11

    .line 17
    const/4 v1, 0x1

    .line 18
    :cond_11
    return v1
.end method

.method public static isFreeMode_4_3Layout(I)Z
    .registers 3

    .line 1
    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    if-gez p0, :cond_c

    .line 9
    invoke-static {}, Lcom/android/fileexplorer/responsive/ResponsiveStateManager;->getCurrentState()I

    .line 12
    move-result p0

    .line 13
    :cond_c
    const/16 v0, 0x2003

    .line 15
    if-ne p0, v0, :cond_11

    .line 17
    const/4 v1, 0x1

    .line 18
    :cond_11
    return v1
.end method

.method public static isFreeMode_Layout()Z
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/responsive/ResponsiveStateManager;->getCurrentState()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x2003

    .line 7
    if-eq v0, v1, :cond_17

    .line 9
    const/16 v1, 0x2001

    .line 11
    if-eq v0, v1, :cond_17

    .line 13
    const/16 v1, 0x2002

    .line 15
    if-eq v0, v1, :cond_17

    .line 17
    const/16 v1, 0x2004

    .line 19
    if-ne v0, v1, :cond_15

    .line 21
    goto :goto_17

    .line 22
    :cond_15
    const/4 v0, 0x0

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    :goto_17
    const/4 v0, 0x1

    .line 25
    :goto_18
    return v0
.end method

.method public static isFreeMode_OtherLayout(I)Z
    .registers 3

    .line 1
    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    if-gez p0, :cond_c

    .line 9
    invoke-static {}, Lcom/android/fileexplorer/responsive/ResponsiveStateManager;->getCurrentState()I

    .line 12
    move-result p0

    .line 13
    :cond_c
    const/16 v0, 0x2004

    .line 15
    if-ne p0, v0, :cond_11

    .line 17
    const/4 v1, 0x1

    .line 18
    :cond_11
    return v1
.end method

.method public static isFullLayout()Z
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/responsive/ResponsiveStateManager;->getCurrentState()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x1007

    .line 7
    if-ne v0, v1, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    return v0
.end method

.method public static isLandFullLayout()Z
    .registers 2

    .line 3
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/responsive/ResponsiveStateUtil;->isLandFullLayout(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static isLandFullLayout(Landroid/content/Context;I)Z
    .registers 3

    if-gez p1, :cond_6

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/responsive/ResponsiveStateManager;->getCurrentState()I

    move-result p1

    :cond_6
    const/16 v0, 0x1007

    if-ne p1, v0, :cond_12

    .line 2
    invoke-static {p0}, Lcom/android/fileexplorer/pad/PadFragmentUtil;->isLandscape(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static isLandHalfLayout()Z
    .registers 2

    .line 3
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/responsive/ResponsiveStateUtil;->isLandHalfLayout(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static isLandHalfLayout(Landroid/content/Context;I)Z
    .registers 3

    if-gez p1, :cond_6

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/responsive/ResponsiveStateManager;->getCurrentState()I

    move-result p1

    :cond_6
    const/16 v0, 0x1002

    if-ne p1, v0, :cond_12

    .line 2
    invoke-static {p0}, Lcom/android/fileexplorer/pad/PadFragmentUtil;->isLandscape(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static isOneThirdLayout(I)Z
    .registers 3

    .line 1
    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    if-gez p0, :cond_c

    .line 9
    invoke-static {}, Lcom/android/fileexplorer/responsive/ResponsiveStateManager;->getCurrentState()I

    .line 12
    move-result p0

    .line 13
    :cond_c
    const/16 v0, 0x1001

    .line 15
    if-ne p0, v0, :cond_11

    .line 17
    const/4 v1, 0x1

    .line 18
    :cond_11
    return v1
.end method

.method public static isPortFullLayout(Landroid/content/Context;I)Z
    .registers 3

    .line 1
    if-gez p1, :cond_6

    .line 3
    invoke-static {}, Lcom/android/fileexplorer/responsive/ResponsiveStateManager;->getCurrentState()I

    .line 6
    move-result p1

    .line 7
    :cond_6
    const/16 v0, 0x1007

    .line 9
    if-ne p1, v0, :cond_12

    .line 11
    invoke-static {p0}, Lcom/android/fileexplorer/pad/PadFragmentUtil;->isLandscape(Landroid/content/Context;)Z

    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_12

    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 p0, 0x0

    .line 20
    :goto_13
    return p0
.end method

.method public static isPortHalfLayout()Z
    .registers 2

    .line 5
    invoke-static {}, Lcom/android/fileexplorer/responsive/ResponsiveStateManager;->getCurrentState()I

    move-result v0

    const/16 v1, 0x1002

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static isPortHalfLayout(Landroid/content/Context;)Z
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/responsive/ResponsiveStateManager;->getCurrentState()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/fileexplorer/responsive/ResponsiveStateUtil;->isPortHalfLayout(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public static isPortHalfLayout(Landroid/content/Context;I)Z
    .registers 4

    .line 2
    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-gez p1, :cond_c

    .line 3
    invoke-static {}, Lcom/android/fileexplorer/responsive/ResponsiveStateManager;->getCurrentState()I

    move-result p1

    :cond_c
    const/16 v0, 0x1002

    if-ne p1, v0, :cond_17

    .line 4
    invoke-static {p0}, Lcom/android/fileexplorer/pad/PadFragmentUtil;->isLandscape(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1
.end method

.method public static isShowNavLayout(I)Z
    .registers 2

    .line 1
    if-gez p0, :cond_6

    .line 3
    invoke-static {}, Lcom/android/fileexplorer/responsive/ResponsiveStateManager;->getCurrentState()I

    .line 6
    move-result p0

    .line 7
    :cond_6
    const/16 v0, 0x1007

    .line 9
    if-eq p0, v0, :cond_15

    .line 11
    const/16 v0, 0x1004

    .line 13
    if-eq p0, v0, :cond_15

    .line 15
    const/16 v0, 0x2003

    .line 17
    if-ne p0, v0, :cond_13

    .line 19
    goto :goto_15

    .line 20
    :cond_13
    const/4 p0, 0x0

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    :goto_15
    const/4 p0, 0x1

    .line 23
    :goto_16
    return p0
.end method

.method public static isSmallWindowMode(Landroid/content/Context;)Z
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    const-string v1, "android.content.res.Configuration"

    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 15
    move-result-object p0

    .line 16
    const-string v2, "windowConfiguration"

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 26
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object p0

    .line 30
    const-string v1, "android.app.WindowConfiguration"

    .line 32
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 35
    move-result-object v1

    .line 36
    const-string v3, "getWindowingMode"

    .line 38
    new-array v4, v0, [Ljava/lang/Class;

    .line 40
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 43
    move-result-object v1

    .line 44
    new-array v3, v0, [Ljava/lang/Object;

    .line 46
    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Ljava/lang/Integer;

    .line 52
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 55
    move-result p0
    :try_end_37
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_37} :catch_50
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_37} :catch_4b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_37} :catch_46
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_37} :catch_41
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_37} :catch_3c

    .line 56
    const/4 v1, 0x5

    .line 57
    if-ne p0, v1, :cond_3b

    .line 59
    move v0, v2

    .line 60
    :cond_3b
    return v0

    .line 61
    :catch_3c
    move-exception p0

    .line 62
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    goto :goto_54

    .line 66
    :catch_41
    move-exception p0

    .line 67
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    goto :goto_54

    .line 71
    :catch_46
    move-exception p0

    .line 72
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    goto :goto_54

    .line 76
    :catch_4b
    move-exception p0

    .line 77
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    goto :goto_54

    .line 81
    :catch_50
    move-exception p0

    .line 82
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    :goto_54
    return v0
.end method

.method public static isTwoThirdLayout()Z
    .registers 1

    const/4 v0, -0x1

    .line 2
    invoke-static {v0}, Lcom/android/fileexplorer/responsive/ResponsiveStateUtil;->isTwoThirdLayout(I)Z

    move-result v0

    return v0
.end method

.method public static isTwoThirdLayout(I)Z
    .registers 2

    if-gez p0, :cond_6

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/responsive/ResponsiveStateManager;->getCurrentState()I

    move-result p0

    :cond_6
    const/16 v0, 0x1004

    if-ne p0, v0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static isWindowModeMultiWindow(Landroid/content/Context;)Z
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    const-string v1, "android.content.res.Configuration"

    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 15
    move-result-object p0

    .line 16
    const-string v2, "windowConfiguration"

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 26
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object p0

    .line 30
    const-string v1, "android.app.WindowConfiguration"

    .line 32
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 35
    move-result-object v1

    .line 36
    const-string v3, "getWindowingMode"

    .line 38
    new-array v4, v0, [Ljava/lang/Class;

    .line 40
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 43
    move-result-object v1

    .line 44
    new-array v3, v0, [Ljava/lang/Object;

    .line 46
    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Ljava/lang/Integer;

    .line 52
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 55
    move-result p0
    :try_end_37
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_37} :catch_56
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_37} :catch_51
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_37} :catch_4c
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_37} :catch_47
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_37} :catch_42

    .line 56
    const/4 v1, 0x6

    .line 57
    if-eq p0, v1, :cond_40

    .line 59
    const/4 v1, 0x3

    .line 60
    if-eq p0, v1, :cond_40

    .line 62
    const/4 v1, 0x4

    .line 63
    if-ne p0, v1, :cond_41

    .line 65
    :cond_40
    move v0, v2

    .line 66
    :cond_41
    return v0

    .line 67
    :catch_42
    move-exception p0

    .line 68
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    goto :goto_5a

    .line 72
    :catch_47
    move-exception p0

    .line 73
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    goto :goto_5a

    .line 77
    :catch_4c
    move-exception p0

    .line 78
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    goto :goto_5a

    .line 82
    :catch_51
    move-exception p0

    .line 83
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    goto :goto_5a

    .line 87
    :catch_56
    move-exception p0

    .line 88
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 91
    :goto_5a
    return v0
.end method
