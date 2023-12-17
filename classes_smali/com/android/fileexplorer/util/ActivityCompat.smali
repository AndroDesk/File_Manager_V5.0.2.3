.class public Lcom/android/fileexplorer/util/ActivityCompat;
.super Ljava/lang/Object;
.source "ActivityCompat.java"


# static fields
.field public static final GESTURE_WINDOWING_MODE_FREEFORM:I = 0x0

.field public static final GESTURE_WINDOWING_MODE_SMALL_FREEFORM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ActivityCompat"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs invokeSafely(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    const-string v0, "ActivityCompat"

    .line 3
    :try_start_2
    invoke-static {p0, p1, p2}, Lcom/android/fileexplorer/util/ReflectUtils;->getDeclaredMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_57

    .line 9
    invoke-virtual {p1}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 12
    move-result p2

    .line 13
    if-nez p2, :cond_12

    .line 15
    const/4 p2, 0x1

    .line 16
    invoke-virtual {p1, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 19
    :cond_12
    invoke-virtual {p1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object p0
    :try_end_16
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_16} :catch_4b
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_16} :catch_3e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_16} :catch_31
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_16} :catch_24
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_17

    .line 23
    return-object p0

    .line 24
    :catch_17
    move-exception p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    goto :goto_57

    .line 37
    :catch_24
    move-exception p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    goto :goto_57

    .line 50
    :catch_31
    move-exception p0

    .line 51
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 58
    move-result-object p0

    .line 59
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    goto :goto_57

    .line 63
    :catch_3e
    move-exception p0

    .line 64
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 72
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    goto :goto_57

    .line 76
    :catch_4b
    move-exception p0

    .line 77
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 84
    move-result-object p0

    .line 85
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_57
    :goto_57
    const/4 p0, 0x0

    .line 89
    return-object p0
.end method

.method public static isCurrentInFreeFormWindow()Z
    .registers 4

    .line 1
    const-string v0, "ActivityCompat"

    .line 3
    :try_start_2
    invoke-static {}, Lcom/android/fileexplorer/util/ActivityCompat;->isMiuiFreeFormManagerClassExist()Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_31

    .line 9
    const/4 v1, -0x1

    .line 10
    invoke-static {v1}, Lmiui/app/MiuiFreeFormManager;->getAllFreeFormStackInfosOnDisplay(I)Ljava/util/List;

    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_30

    .line 17
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_17

    .line 23
    goto :goto_30

    .line 24
    :cond_17
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 30
    iget-object v1, v1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->packageName:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 47
    move-result v0

    .line 48
    return v0

    .line 49
    :cond_30
    :goto_30
    return v2

    .line 50
    :cond_31
    invoke-static {}, Lcom/android/fileexplorer/util/ActivityCompat;->isInFreeFormWindowByMIUI12()Z

    .line 53
    move-result v0
    :try_end_35
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_35} :catch_50
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_35} :catch_36

    .line 54
    return v0

    .line 55
    :catch_36
    move-exception v1

    .line 56
    const-string v2, "isInFreeFormWindow exception:"

    .line 58
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 73
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {}, Lcom/android/fileexplorer/util/ActivityCompat;->isInFreeFormWindowByMIUI12()Z

    .line 79
    move-result v0

    .line 80
    return v0

    .line 81
    :catch_50
    move-exception v1

    .line 82
    const-string v2, "isInFreeFormWindow error:"

    .line 84
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v1

    .line 99
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {}, Lcom/android/fileexplorer/util/ActivityCompat;->isInFreeFormWindowByMIUI12()Z

    .line 105
    move-result v0

    .line 106
    return v0
.end method

.method public static isInFreeFormWindow()Z
    .registers 3

    .line 1
    const-string v0, "ActivityCompat"

    .line 3
    :try_start_2
    invoke-static {}, Lcom/android/fileexplorer/util/ActivityCompat;->isMiuiFreeFormManagerClassExist()Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_1f

    .line 9
    const/4 v1, -0x1

    .line 10
    invoke-static {v1}, Lmiui/app/MiuiFreeFormManager;->getAllFreeFormStackInfosOnDisplay(I)Ljava/util/List;

    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_18

    .line 16
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_16

    .line 22
    goto :goto_18

    .line 23
    :cond_16
    const/4 v0, 0x1

    .line 24
    return v0

    .line 25
    :cond_18
    :goto_18
    const-string v1, "miuiFreeFormStackInfo size isEmpty:"

    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const/4 v0, 0x0

    .line 31
    return v0

    .line 32
    :cond_1f
    invoke-static {}, Lcom/android/fileexplorer/util/ActivityCompat;->isInFreeFormWindowByMIUI12()Z

    .line 35
    move-result v0
    :try_end_23
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_23} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_23} :catch_24

    .line 36
    return v0

    .line 37
    :catch_24
    move-exception v1

    .line 38
    const-string v2, "isInFreeFormWindow exception:"

    .line 40
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-static {}, Lcom/android/fileexplorer/util/ActivityCompat;->isInFreeFormWindowByMIUI12()Z

    .line 61
    move-result v0

    .line 62
    return v0

    .line 63
    :catch_3e
    move-exception v1

    .line 64
    const-string v2, "isInFreeFormWindow error:"

    .line 66
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v1

    .line 81
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {}, Lcom/android/fileexplorer/util/ActivityCompat;->isInFreeFormWindowByMIUI12()Z

    .line 87
    move-result v0

    .line 88
    return v0
.end method

.method private static isInFreeFormWindowByMIUI12()Z
    .registers 4

    .line 1
    const-string v0, "ActivityCompat"

    .line 3
    :try_start_2
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    move-result-object v1

    .line 15
    const-string v2, "freeform_window_state"

    .line 17
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 20
    move-result v1

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    const-string v3, "freeform_window_state :"

    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 38
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_28} :catch_2e

    .line 41
    const/4 v0, 0x1

    .line 42
    if-eqz v1, :cond_2d

    .line 44
    if-ne v1, v0, :cond_4a

    .line 46
    :cond_2d
    return v0

    .line 47
    :catch_2e
    move-exception v1

    .line 48
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    const-string v3, "isInFreeFormWindowByMIUI12"

    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_4a
    const/4 v0, 0x0

    .line 76
    return v0
.end method

.method public static isInMultiWindowMode()Z
    .registers 1

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/FileExplorerActivityManager;->getTopActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_8
    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private static isMiuiFreeFormManagerClassExist()Z
    .registers 2

    .line 1
    :try_start_0
    sget v0, Lmiui/app/MiuiFreeFormManager;->ACTION_FULLSCREEN_TO_FREEFORM:I
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_2} :catch_4

    .line 3
    const/4 v0, 0x1

    .line 4
    return v0

    .line 5
    :catch_4
    move-exception v0

    .line 6
    const-string v1, "isMiuiFreeFormManagerClassExist error:"

    .line 8
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    const-string v1, "ActivityCompat"

    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const/4 v0, 0x0

    .line 33
    return v0
.end method
