.class public Lcom/android/fileexplorer/responsive/ResponsiveStateUtil;
.super Ljava/lang/Object;
.source "ResponsiveStateUtil.java"


# static fields
.field private static final NO_RESPONSIVE_STATE:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, -0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/responsive/ResponsiveStateUtil;->NO_RESPONSIVE_STATE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFreeMode_16_9Layout(I)Z
    .registers 3

    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-gez p0, :cond_c

    invoke-static {}, Lcom/android/fileexplorer/responsive/ResponsiveStateManager;->getCurrentState()I

    move-result p0

    :cond_c
    const/16 v0, 0x2001

    if-ne p0, v0, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1
.end method

.method public static isFreeMode_3_4Layout(I)Z
    .registers 3

    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-gez p0, :cond_c

    invoke-static {}, Lcom/android/fileexplorer/responsive/ResponsiveStateManager;->getCurrentState()I

    move-result p0

    :cond_c
    const/16 v0, 0x2002

    if-ne p0, v0, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1
.end method

.method public static isFreeMode_4_3Layout(I)Z
    .registers 3

    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-gez p0, :cond_c

    invoke-static {}, Lcom/android/fileexplorer/responsive/ResponsiveStateManager;->getCurrentState()I

    move-result p0

    :cond_c
    const/16 v0, 0x2003

    if-ne p0, v0, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1
.end method

.method public static isFreeMode_Layout()Z
    .registers 2

    invoke-static {}, Lcom/android/fileexplorer/responsive/ResponsiveStateManager;->getCurrentState()I

    move-result v0

    const/16 v1, 0x2003

    if-eq v0, v1, :cond_17

    const/16 v1, 0x2001

    if-eq v0, v1, :cond_17

    const/16 v1, 0x2002

    if-eq v0, v1, :cond_17

    const/16 v1, 0x2004

    if-ne v0, v1, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method public static isFreeMode_OtherLayout(I)Z
    .registers 3

    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-gez p0, :cond_c

    invoke-static {}, Lcom/android/fileexplorer/responsive/ResponsiveStateManager;->getCurrentState()I

    move-result p0

    :cond_c
    const/16 v0, 0x2004

    if-ne p0, v0, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1
.end method

.method public static isFullLayout()Z
    .registers 2

    invoke-static {}, Lcom/android/fileexplorer/responsive/ResponsiveStateManager;->getCurrentState()I

    move-result v0

    const/16 v1, 0x1007

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static isLandFullLayout()Z
    .registers 2

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

    invoke-static {}, Lcom/android/fileexplorer/responsive/ResponsiveStateManager;->getCurrentState()I

    move-result p1

    :cond_6
    const/16 v0, 0x1007

    if-ne p1, v0, :cond_12

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

    invoke-static {}, Lcom/android/fileexplorer/responsive/ResponsiveStateManager;->getCurrentState()I

    move-result p1

    :cond_6
    const/16 v0, 0x1002

    if-ne p1, v0, :cond_12

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

    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-gez p0, :cond_c

    invoke-static {}, Lcom/android/fileexplorer/responsive/ResponsiveStateManager;->getCurrentState()I

    move-result p0

    :cond_c
    const/16 v0, 0x1001

    if-ne p0, v0, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1
.end method

.method public static isPortFullLayout(Landroid/content/Context;I)Z
    .registers 3

    if-gez p1, :cond_6

    invoke-static {}, Lcom/android/fileexplorer/responsive/ResponsiveStateManager;->getCurrentState()I

    move-result p1

    :cond_6
    const/16 v0, 0x1007

    if-ne p1, v0, :cond_12

    invoke-static {p0}, Lcom/android/fileexplorer/pad/PadFragmentUtil;->isLandscape(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static isPortHalfLayout()Z
    .registers 2

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

    invoke-static {}, Lcom/android/fileexplorer/responsive/ResponsiveStateManager;->getCurrentState()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/fileexplorer/responsive/ResponsiveStateUtil;->isPortHalfLayout(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public static isPortHalfLayout(Landroid/content/Context;I)Z
    .registers 4

    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-gez p1, :cond_c

    invoke-static {}, Lcom/android/fileexplorer/responsive/ResponsiveStateManager;->getCurrentState()I

    move-result p1

    :cond_c
    const/16 v0, 0x1002

    if-ne p1, v0, :cond_17

    invoke-static {p0}, Lcom/android/fileexplorer/pad/PadFragmentUtil;->isLandscape(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1
.end method

.method public static isShowNavLayout(I)Z
    .registers 2

    if-gez p0, :cond_6

    invoke-static {}, Lcom/android/fileexplorer/responsive/ResponsiveStateManager;->getCurrentState()I

    move-result p0

    :cond_6
    const/16 v0, 0x1007

    if-eq p0, v0, :cond_15

    const/16 v0, 0x1004

    if-eq p0, v0, :cond_15

    const/16 v0, 0x2003

    if-ne p0, v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method public static isSmallWindowMode(Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.content.res.Configuration"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    const-string v2, "windowConfiguration"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "android.app.WindowConfiguration"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getWindowingMode"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_37
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_37} :catch_50
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_37} :catch_4b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_37} :catch_46
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_37} :catch_41
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_37} :catch_3c

    const/4 v1, 0x5

    if-ne p0, v1, :cond_3b

    move v0, v2

    :cond_3b
    return v0

    :catch_3c
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_54

    :catch_41
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_54

    :catch_46
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_54

    :catch_4b
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_54

    :catch_50
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_54
    return v0
.end method

.method public static isTwoThirdLayout()Z
    .registers 1

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/fileexplorer/responsive/ResponsiveStateUtil;->isTwoThirdLayout(I)Z

    move-result v0

    return v0
.end method

.method public static isTwoThirdLayout(I)Z
    .registers 2

    if-gez p0, :cond_6

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

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.content.res.Configuration"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    const-string v2, "windowConfiguration"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "android.app.WindowConfiguration"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getWindowingMode"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_37
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_37} :catch_56
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_37} :catch_51
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_37} :catch_4c
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_37} :catch_47
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_37} :catch_42

    const/4 v1, 0x6

    if-eq p0, v1, :cond_40

    const/4 v1, 0x3

    if-eq p0, v1, :cond_40

    const/4 v1, 0x4

    if-ne p0, v1, :cond_41

    :cond_40
    move v0, v2

    :cond_41
    return v0

    :catch_42
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5a

    :catch_47
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5a

    :catch_4c
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5a

    :catch_51
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5a

    :catch_56
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5a
    return v0
.end method
