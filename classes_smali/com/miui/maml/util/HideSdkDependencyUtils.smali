.class public Lcom/miui/maml/util/HideSdkDependencyUtils;
.super Ljava/lang/Object;
.source "HideSdkDependencyUtils.java"


# static fields
.field private static final DEBUG_LAYOUT_PROPERTY:Ljava/lang/String; = "debug.layout"

.field private static final SURFACE_CONTROL:Ljava/lang/String; = "android.view.SurfaceControl"

.field private static final TAG:Ljava/lang/String; = "MAML_Reflect"

.field private static final TETHERING_WIFI:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Configuration_getThemeChanged(Landroid/content/res/Configuration;)I
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    const-class v1, Landroid/content/res/Configuration;

    .line 4
    const-string v2, "extraConfig"

    .line 6
    invoke-static {v1, p0, v2}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/content/res/MiuiConfiguration;

    .line 12
    if-nez p0, :cond_e

    .line 14
    goto :goto_10

    .line 15
    :cond_e
    iget v0, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_11

    .line 17
    :goto_10
    return v0

    .line 18
    :catch_11
    move-exception p0

    .line 19
    const-string v1, "MAML_Reflect"

    .line 21
    const-string v2, "Invoke | Configuration_getThemeChanged() occur EXCEPTION: "

    .line 23
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    return v0
.end method

.method public static Context_getUserId(Landroid/content/Context;)I
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    const-class v1, Landroid/content/Context;

    .line 4
    const-string v2, "getUserId"

    .line 6
    new-array v3, v0, [Ljava/lang/Class;

    .line 8
    new-array v4, v0, [Ljava/lang/Object;

    .line 10
    invoke-static {v1, p0, v2, v3, v4}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljava/lang/Integer;

    .line 16
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 19
    move-result p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_14

    .line 20
    return p0

    .line 21
    :catch_14
    move-exception p0

    .line 22
    const-string v1, "MAML_Reflect"

    .line 24
    const-string v2, "Invoke | Context_getUserId() occur EXCEPTION: "

    .line 26
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    return v0
.end method

.method public static Context_startActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 12

    .line 1
    :try_start_0
    const-class v0, Landroid/content/Context;

    .line 3
    const-string v1, "startActivityAsUser"

    .line 5
    const/4 v2, 0x3

    .line 6
    new-array v3, v2, [Ljava/lang/Class;

    .line 8
    const-class v4, Landroid/content/Intent;

    .line 10
    const/4 v5, 0x0

    .line 11
    aput-object v4, v3, v5

    .line 13
    const-class v4, Landroid/os/Bundle;

    .line 15
    const/4 v6, 0x1

    .line 16
    aput-object v4, v3, v6

    .line 18
    const-class v4, Landroid/os/UserHandle;

    .line 20
    const/4 v7, 0x2

    .line 21
    aput-object v4, v3, v7

    .line 23
    new-array v2, v2, [Ljava/lang/Object;

    .line 25
    aput-object p1, v2, v5

    .line 27
    aput-object p2, v2, v6

    .line 29
    aput-object p3, v2, v7

    .line 31
    invoke-static {v0, p0, v1, v3, v2}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    .line 34
    goto :goto_2a

    .line 35
    :catch_22
    move-exception p0

    .line 36
    const-string p1, "MAML_Reflect"

    .line 38
    const-string p2, "Invoke | Context_startActivityAsUser() occur EXCEPTION: "

    .line 40
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    :goto_2a
    return-void
.end method

.method public static Context_startServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .registers 10

    .line 1
    :try_start_0
    const-class v0, Landroid/content/Context;

    .line 3
    const-string v1, "startServiceAsUser"

    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v3, v2, [Ljava/lang/Class;

    .line 8
    const-class v4, Landroid/content/Intent;

    .line 10
    const/4 v5, 0x0

    .line 11
    aput-object v4, v3, v5

    .line 13
    const-class v4, Landroid/os/UserHandle;

    .line 15
    const/4 v6, 0x1

    .line 16
    aput-object v4, v3, v6

    .line 18
    new-array v2, v2, [Ljava/lang/Object;

    .line 20
    aput-object p1, v2, v5

    .line 22
    aput-object p2, v2, v6

    .line 24
    invoke-static {v0, p0, v1, v3, v2}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Landroid/content/ComponentName;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 30
    return-object p0

    .line 31
    :catch_1e
    move-exception p0

    .line 32
    const-string p1, "MAML_Reflect"

    .line 34
    const-string p2, "Invoke | Context_startServiceAsUser() occur EXCEPTION: "

    .line 36
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    const/4 p0, 0x0

    .line 40
    return-object p0
.end method

.method public static MemoryFile_getFileDescriptor(Landroid/os/MemoryFile;)Ljava/io/FileDescriptor;
    .registers 5

    .line 1
    :try_start_0
    const-class v0, Ljava/io/FileDescriptor;

    .line 3
    const-string v1, "getFileDescriptor"

    .line 5
    const/4 v2, 0x0

    .line 6
    new-array v3, v2, [Ljava/lang/Class;

    .line 8
    new-array v2, v2, [Ljava/lang/Object;

    .line 10
    invoke-static {v0, p0, v1, v3, v2}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljava/io/FileDescriptor;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 16
    return-object p0

    .line 17
    :catch_10
    move-exception p0

    .line 18
    const-string v0, "MAML_Reflect"

    .line 20
    const-string v1, "Invoke | MemoryFile_getFileDescriptor() occur EXCEPTION: "

    .line 22
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    const/4 p0, 0x0

    .line 26
    return-object p0
.end method

.method public static MotionEvent_isTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    const-class v1, Landroid/view/MotionEvent;

    .line 4
    const-string v2, "isTouchEvent"

    .line 6
    new-array v3, v0, [Ljava/lang/Class;

    .line 8
    new-array v4, v0, [Ljava/lang/Object;

    .line 10
    invoke-static {v1, p0, v2, v3, v4}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljava/lang/Boolean;

    .line 16
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    move-result p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_14

    .line 20
    return p0

    .line 21
    :catch_14
    move-exception p0

    .line 22
    const-string v1, "MAML_Reflect"

    .line 24
    const-string v2, "Invoke | MotionEvent_isTouchEvent() occur EXCEPTION: "

    .line 26
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    return v0
.end method

.method public static PreloadedAppPolicy_installPreloadedDataApp(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;)Z
    .registers 14

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    const-string v1, "miui.content.pm.PreloadedAppPolicy"

    .line 4
    invoke-static {v1}, Lcom/miui/maml/util/ReflectionHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 7
    move-result-object v1

    .line 8
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    const/16 v3, 0x1c

    .line 12
    if-lt v2, v3, :cond_44

    .line 14
    const/4 v2, 0x0

    .line 15
    const-string v3, "installPreloadedDataApp"

    .line 17
    const/4 v4, 0x4

    .line 18
    new-array v5, v4, [Ljava/lang/Class;

    .line 20
    const-class v6, Landroid/content/Context;

    .line 22
    aput-object v6, v5, v0

    .line 24
    const-class v6, Ljava/lang/String;

    .line 26
    const/4 v7, 0x1

    .line 27
    aput-object v6, v5, v7

    .line 29
    const-class v6, Landroid/content/pm/IPackageInstallObserver2;

    .line 31
    const/4 v8, 0x2

    .line 32
    aput-object v6, v5, v8

    .line 34
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 36
    const/4 v9, 0x3

    .line 37
    aput-object v6, v5, v9

    .line 39
    new-array v4, v4, [Ljava/lang/Object;

    .line 41
    aput-object p0, v4, v0

    .line 43
    aput-object p1, v4, v7

    .line 45
    new-instance p1, Lcom/miui/maml/util/HideSdkDependencyUtils$1;

    .line 47
    invoke-direct {p1, p0, p2, p3}, Lcom/miui/maml/util/HideSdkDependencyUtils$1;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 50
    aput-object p1, v4, v8

    .line 52
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object p0

    .line 56
    aput-object p0, v4, v9

    .line 58
    invoke-static {v1, v2, v3, v5, v4}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    move-result-object p0

    .line 62
    check-cast p0, Ljava/lang/Boolean;

    .line 64
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 67
    move-result p0
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_43} :catch_45

    .line 68
    return p0

    .line 69
    :cond_44
    return v0

    .line 70
    :catch_45
    move-exception p0

    .line 71
    const-string p1, "MAML_Reflect"

    .line 73
    const-string p2, "Invoke | PreloadedAppPolicy_installPreloadedDataApp() occur EXCEPTION: "

    .line 75
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    return v0
.end method

.method public static SettingsSecure_UI_NIGHT_MODE()Ljava/lang/String;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    const-class v1, Landroid/provider/Settings$Secure;

    .line 4
    const-string v2, "UI_NIGHT_MODE"

    .line 6
    invoke-static {v1, v0, v2}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_c

    .line 12
    return-object v1

    .line 13
    :catch_c
    move-exception v1

    .line 14
    const-string v2, "MAML_Reflect"

    .line 16
    const-string v3, "Invoke | SettingsSecure_UI_NIGHT_MODE() occur EXCEPTION: "

    .line 18
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    return-object v0
.end method

.method public static StorageManager_disableUsbMassStorage(Landroid/os/storage/StorageManager;)V
    .registers 5

    .line 1
    :try_start_0
    const-class v0, Landroid/os/storage/StorageManager;

    .line 3
    const-string v1, "disableUsbMassStorage"

    .line 5
    const/4 v2, 0x0

    .line 6
    new-array v3, v2, [Ljava/lang/Class;

    .line 8
    new-array v2, v2, [Ljava/lang/Object;

    .line 10
    invoke-static {v0, p0, v1, v3, v2}, Lcom/miui/maml/util/ReflectionHelper;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 13
    goto :goto_15

    .line 14
    :catch_d
    move-exception p0

    .line 15
    const-string v0, "MAML_Reflect"

    .line 17
    const-string v1, "Invoke | StorageManager_disableUsbMassStorage() occur EXCEPTION: "

    .line 19
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    :goto_15
    return-void
.end method

.method public static StorageManager_enableUsbMassStorage(Landroid/os/storage/StorageManager;)V
    .registers 5

    .line 1
    :try_start_0
    const-class v0, Landroid/os/storage/StorageManager;

    .line 3
    const-string v1, "enableUsbMassStorage"

    .line 5
    const/4 v2, 0x0

    .line 6
    new-array v3, v2, [Ljava/lang/Class;

    .line 8
    new-array v2, v2, [Ljava/lang/Object;

    .line 10
    invoke-static {v0, p0, v1, v3, v2}, Lcom/miui/maml/util/ReflectionHelper;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 13
    goto :goto_15

    .line 14
    :catch_d
    move-exception p0

    .line 15
    const-string v0, "MAML_Reflect"

    .line 17
    const-string v1, "Invoke | StorageManager_enableUsbMassStorage() occur EXCEPTION: "

    .line 19
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    :goto_15
    return-void
.end method

.method public static StorageManager_isUsbMassStorageEnabled(Landroid/os/storage/StorageManager;)Z
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    const-class v1, Landroid/os/storage/StorageManager;

    .line 4
    const-string v2, "isUsbMassStorageEnabled"

    .line 6
    new-array v3, v0, [Ljava/lang/Class;

    .line 8
    new-array v4, v0, [Ljava/lang/Object;

    .line 10
    invoke-static {v1, p0, v2, v3, v4}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljava/lang/Boolean;

    .line 16
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    move-result p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_14

    .line 20
    return p0

    .line 21
    :catch_14
    move-exception p0

    .line 22
    const-string v1, "MAML_Reflect"

    .line 24
    const-string v2, "Invoke | StorageManager_isUsbMassStorageEnabled() occur EXCEPTION: "

    .line 26
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    return v0
.end method

.method public static SurfaceControl_closeTransaction()V
    .registers 5

    .line 1
    :try_start_0
    const-string v0, "android.view.SurfaceControl"

    .line 3
    invoke-static {v0}, Lcom/miui/maml/util/ReflectionHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "closeTransaction"

    .line 10
    const/4 v3, 0x0

    .line 11
    new-array v4, v3, [Ljava/lang/Class;

    .line 13
    new-array v3, v3, [Ljava/lang/Object;

    .line 15
    invoke-static {v0, v1, v2, v4, v3}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 18
    goto :goto_1a

    .line 19
    :catch_12
    move-exception v0

    .line 20
    const-string v1, "MAML_Reflect"

    .line 22
    const-string v2, "Invoke | SurfaceControl_closeTransaction() occur EXCEPTION: "

    .line 24
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    :goto_1a
    return-void
.end method

.method public static SurfaceControl_getInstance()Landroid/view/SurfaceControl;
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1d

    .line 5
    if-ne v0, v1, :cond_1c

    .line 7
    :try_start_6
    const-class v0, Landroid/view/SurfaceControl;

    .line 9
    const/4 v1, 0x0

    .line 10
    new-array v2, v1, [Ljava/lang/Class;

    .line 12
    new-array v1, v1, [Ljava/lang/Object;

    .line 14
    invoke-static {v0, v2, v1}, Lcom/miui/maml/util/ReflectionHelper;->getConstructorInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/view/SurfaceControl;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_14

    .line 20
    return-object v0

    .line 21
    :catch_14
    move-exception v0

    .line 22
    const-string v1, "MAML_Reflect"

    .line 24
    const-string v2, "Invoke | SurfaceControl_getInstance() occur EXCEPTION: "

    .line 26
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    :cond_1c
    const/4 v0, 0x0

    .line 30
    return-object v0
.end method

.method public static SurfaceControl_getInstance_with_engine(Landroid/service/wallpaper/WallpaperService$Engine;)Landroid/view/SurfaceControl;
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1d

    .line 5
    if-ne v0, v1, :cond_1f

    .line 7
    :try_start_6
    const-class v0, Landroid/view/SurfaceControl;

    .line 9
    const/4 v1, 0x0

    .line 10
    new-array v2, v1, [Ljava/lang/Class;

    .line 12
    new-array v1, v1, [Ljava/lang/Object;

    .line 14
    invoke-static {v0, v2, v1}, Lcom/miui/maml/util/ReflectionHelper;->getConstructorInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/view/SurfaceControl;

    .line 20
    invoke-static {p0, v0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->initSurfaceControl(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/SurfaceControl;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_16} :catch_17

    .line 23
    return-object v0

    .line 24
    :catch_17
    move-exception p0

    .line 25
    const-string v0, "MAML_Reflect"

    .line 27
    const-string v1, "Invoke | SurfaceControl_getInstance() occur EXCEPTION: "

    .line 29
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    :cond_1f
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method public static SurfaceControl_getInstance_with_params(Landroid/view/Surface;Landroid/view/SurfaceControl;Ljava/lang/String;III)Landroid/view/SurfaceControl;
    .registers 22

    .line 1
    const-class v0, Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_3
    const-string v2, "android.view.SurfaceSession"

    .line 6
    invoke-static {v2}, Lcom/miui/maml/util/ReflectionHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 9
    move-result-object v2

    .line 10
    const-string v3, "android.view.SurfaceControl"

    .line 12
    invoke-static {v3}, Lcom/miui/maml/util/ReflectionHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 15
    move-result-object v3

    .line 16
    const-string v4, "HIDDEN"

    .line 18
    invoke-static {v3, v1, v4}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Ljava/lang/Integer;

    .line 24
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 27
    move-result v4

    .line 28
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 30
    const/16 v6, 0x1d

    .line 32
    const/4 v7, 0x7

    .line 33
    const/16 v8, 0x8

    .line 35
    const/4 v9, 0x5

    .line 36
    const/4 v10, 0x4

    .line 37
    const/4 v11, 0x6

    .line 38
    const/4 v12, 0x3

    .line 39
    const/4 v13, 0x2

    .line 40
    const/4 v14, 0x1

    .line 41
    const/4 v15, 0x0

    .line 42
    if-ne v5, v6, :cond_72

    .line 44
    new-array v5, v15, [Ljava/lang/Class;

    .line 46
    new-array v6, v15, [Ljava/lang/Object;

    .line 48
    invoke-static {v2, v5, v6}, Lcom/miui/maml/util/ReflectionHelper;->getConstructorInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object v5

    .line 52
    new-array v6, v8, [Ljava/lang/Class;

    .line 54
    aput-object v2, v6, v15

    .line 56
    aput-object v0, v6, v14

    .line 58
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 60
    aput-object v0, v6, v13

    .line 62
    aput-object v0, v6, v12

    .line 64
    aput-object v0, v6, v10

    .line 66
    aput-object v0, v6, v9

    .line 68
    aput-object v3, v6, v11

    .line 70
    const-class v0, Landroid/util/SparseIntArray;

    .line 72
    aput-object v0, v6, v7

    .line 74
    new-array v0, v8, [Ljava/lang/Object;

    .line 76
    aput-object v5, v0, v15

    .line 78
    aput-object p2, v0, v14

    .line 80
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    move-result-object v2

    .line 84
    aput-object v2, v0, v13

    .line 86
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    move-result-object v2

    .line 90
    aput-object v2, v0, v12

    .line 92
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    move-result-object v2

    .line 96
    aput-object v2, v0, v10

    .line 98
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    move-result-object v2

    .line 102
    aput-object v2, v0, v9

    .line 104
    aput-object p1, v0, v11

    .line 106
    aput-object v1, v0, v7

    .line 108
    invoke-static {v3, v6, v0}, Lcom/miui/maml/util/ReflectionHelper;->getConstructorInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Landroid/view/SurfaceControl;

    .line 114
    return-object v0

    .line 115
    :cond_72
    const/16 v6, 0x1c

    .line 117
    if-ne v5, v6, :cond_d0

    .line 119
    new-array v5, v14, [Ljava/lang/Class;

    .line 121
    const-class v6, Landroid/view/Surface;

    .line 123
    aput-object v6, v5, v15

    .line 125
    new-array v6, v14, [Ljava/lang/Object;

    .line 127
    aput-object p0, v6, v15

    .line 129
    invoke-static {v2, v5, v6}, Lcom/miui/maml/util/ReflectionHelper;->getConstructorInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    move-result-object v5

    .line 133
    const/16 v6, 0x9

    .line 135
    new-array v1, v6, [Ljava/lang/Class;

    .line 137
    aput-object v2, v1, v15

    .line 139
    aput-object v0, v1, v14

    .line 141
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 143
    aput-object v0, v1, v13

    .line 145
    aput-object v0, v1, v12

    .line 147
    aput-object v0, v1, v10

    .line 149
    aput-object v0, v1, v9

    .line 151
    aput-object v3, v1, v11

    .line 153
    aput-object v0, v1, v7

    .line 155
    aput-object v0, v1, v8

    .line 157
    new-array v0, v6, [Ljava/lang/Object;

    .line 159
    aput-object v5, v0, v15

    .line 161
    aput-object p2, v0, v14

    .line 163
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    move-result-object v2

    .line 167
    aput-object v2, v0, v13

    .line 169
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    move-result-object v2

    .line 173
    aput-object v2, v0, v12

    .line 175
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    move-result-object v2

    .line 179
    aput-object v2, v0, v10

    .line 181
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    move-result-object v2

    .line 185
    aput-object v2, v0, v9

    .line 187
    aput-object p1, v0, v11

    .line 189
    const/4 v2, -0x1

    .line 190
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    move-result-object v4

    .line 194
    aput-object v4, v0, v7

    .line 196
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 199
    move-result-object v2

    .line 200
    aput-object v2, v0, v8

    .line 202
    invoke-static {v3, v1, v0}, Lcom/miui/maml/util/ReflectionHelper;->getConstructorInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    move-result-object v0

    .line 206
    check-cast v0, Landroid/view/SurfaceControl;

    .line 208
    return-object v0

    .line 209
    :cond_d0
    const/16 v1, 0x1a

    .line 211
    if-eq v5, v1, :cond_d8

    .line 213
    const/16 v1, 0x1b

    .line 215
    if-ne v5, v1, :cond_123

    .line 217
    :cond_d8
    new-array v1, v14, [Ljava/lang/Class;

    .line 219
    const-class v5, Landroid/view/Surface;

    .line 221
    aput-object v5, v1, v15

    .line 223
    new-array v5, v14, [Ljava/lang/Object;

    .line 225
    aput-object p0, v5, v15

    .line 227
    invoke-static {v2, v1, v5}, Lcom/miui/maml/util/ReflectionHelper;->getConstructorInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    move-result-object v1

    .line 231
    new-array v5, v11, [Ljava/lang/Class;

    .line 233
    aput-object v2, v5, v15

    .line 235
    aput-object v0, v5, v14

    .line 237
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 239
    aput-object v0, v5, v13

    .line 241
    aput-object v0, v5, v12

    .line 243
    aput-object v0, v5, v10

    .line 245
    aput-object v0, v5, v9

    .line 247
    new-array v0, v11, [Ljava/lang/Object;

    .line 249
    aput-object v1, v0, v15

    .line 251
    aput-object p2, v0, v14

    .line 253
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 256
    move-result-object v1

    .line 257
    aput-object v1, v0, v13

    .line 259
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 262
    move-result-object v1

    .line 263
    aput-object v1, v0, v12

    .line 265
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 268
    move-result-object v1

    .line 269
    aput-object v1, v0, v10

    .line 271
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 274
    move-result-object v1

    .line 275
    aput-object v1, v0, v9

    .line 277
    invoke-static {v3, v5, v0}, Lcom/miui/maml/util/ReflectionHelper;->getConstructorInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    move-result-object v0

    .line 281
    check-cast v0, Landroid/view/SurfaceControl;
    :try_end_11a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_11a} :catch_11b

    .line 283
    return-object v0

    .line 284
    :catch_11b
    move-exception v0

    .line 285
    const-string v1, "MAML_Reflect"

    .line 287
    const-string v2, "Invoke | SurfaceControl_getInstance_with_params() occur EXCEPTION: "

    .line 289
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    :cond_123
    const/4 v1, 0x0

    .line 293
    return-object v1
.end method

.method public static SurfaceControl_hide(Landroid/view/SurfaceControl;)V
    .registers 5

    .line 1
    :try_start_0
    const-string v0, "android.view.SurfaceControl"

    .line 3
    invoke-static {v0}, Lcom/miui/maml/util/ReflectionHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "hide"

    .line 9
    const/4 v2, 0x0

    .line 10
    new-array v3, v2, [Ljava/lang/Class;

    .line 12
    new-array v2, v2, [Ljava/lang/Object;

    .line 14
    invoke-static {v0, p0, v1, v3, v2}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 17
    goto :goto_19

    .line 18
    :catch_11
    move-exception p0

    .line 19
    const-string v0, "MAML_Reflect"

    .line 21
    const-string v1, "Invoke | SurfaceControl_hide() occur EXCEPTION: "

    .line 23
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    :goto_19
    return-void
.end method

.method public static SurfaceControl_openTransaction()V
    .registers 5

    .line 1
    :try_start_0
    const-string v0, "android.view.SurfaceControl"

    .line 3
    invoke-static {v0}, Lcom/miui/maml/util/ReflectionHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "openTransaction"

    .line 10
    const/4 v3, 0x0

    .line 11
    new-array v4, v3, [Ljava/lang/Class;

    .line 13
    new-array v3, v3, [Ljava/lang/Object;

    .line 15
    invoke-static {v0, v1, v2, v4, v3}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 18
    goto :goto_1a

    .line 19
    :catch_12
    move-exception v0

    .line 20
    const-string v1, "MAML_Reflect"

    .line 22
    const-string v2, "Invoke | SurfaceControl_openTransaction() occur EXCEPTION: "

    .line 24
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    :goto_1a
    return-void
.end method

.method public static SurfaceControl_setBufferSize(Landroid/view/SurfaceControl;II)V
    .registers 10

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1d

    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x2

    .line 8
    if-ne v0, v1, :cond_27

    .line 10
    const-class v0, Landroid/view/SurfaceControl;

    .line 12
    const-string v1, "setBufferSize"

    .line 14
    new-array v5, v4, [Ljava/lang/Class;

    .line 16
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 18
    aput-object v6, v5, v3

    .line 20
    aput-object v6, v5, v2

    .line 22
    new-array v4, v4, [Ljava/lang/Object;

    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object p1

    .line 28
    aput-object p1, v4, v3

    .line 30
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object p1

    .line 34
    aput-object p1, v4, v2

    .line 36
    invoke-static {v0, p0, v1, v5, v4}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    goto :goto_59

    .line 40
    :cond_27
    const/16 v1, 0x1a

    .line 42
    if-lt v0, v1, :cond_59

    .line 44
    const/16 v1, 0x1c

    .line 46
    if-gt v0, v1, :cond_59

    .line 48
    const-string v0, "android.view.SurfaceControl"

    .line 50
    invoke-static {v0}, Lcom/miui/maml/util/ReflectionHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 53
    move-result-object v0

    .line 54
    const-string v1, "setSize"

    .line 56
    new-array v5, v4, [Ljava/lang/Class;

    .line 58
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 60
    aput-object v6, v5, v3

    .line 62
    aput-object v6, v5, v2

    .line 64
    new-array v4, v4, [Ljava/lang/Object;

    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object p1

    .line 70
    aput-object p1, v4, v3

    .line 72
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    move-result-object p1

    .line 76
    aput-object p1, v4, v2

    .line 78
    invoke-static {v0, p0, v1, v5, v4}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_50} :catch_51

    .line 81
    goto :goto_59

    .line 82
    :catch_51
    move-exception p0

    .line 83
    const-string p1, "MAML_Reflect"

    .line 85
    const-string p2, "Invoke | SurfaceControl_setBufferSize() occur EXCEPTION: "

    .line 87
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    :cond_59
    :goto_59
    return-void
.end method

.method public static SurfaceControl_setLayer(Landroid/view/SurfaceControl;I)V
    .registers 8

    .line 1
    :try_start_0
    const-string v0, "android.view.SurfaceControl"

    .line 3
    invoke-static {v0}, Lcom/miui/maml/util/ReflectionHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "setLayer"

    .line 9
    const/4 v2, 0x1

    .line 10
    new-array v3, v2, [Ljava/lang/Class;

    .line 12
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 14
    const/4 v5, 0x0

    .line 15
    aput-object v4, v3, v5

    .line 17
    new-array v2, v2, [Ljava/lang/Object;

    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object p1

    .line 23
    aput-object p1, v2, v5

    .line 25
    invoke-static {v0, p0, v1, v3, v2}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 28
    goto :goto_24

    .line 29
    :catch_1c
    move-exception p0

    .line 30
    const-string p1, "MAML_Reflect"

    .line 32
    const-string v0, "Invoke | SurfaceControl_setLayer() occur EXCEPTION: "

    .line 34
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    :goto_24
    return-void
.end method

.method public static SurfaceControl_setPosition(Landroid/view/SurfaceControl;FF)V
    .registers 10

    .line 1
    :try_start_0
    const-string v0, "android.view.SurfaceControl"

    .line 3
    invoke-static {v0}, Lcom/miui/maml/util/ReflectionHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "setPosition"

    .line 9
    const/4 v2, 0x2

    .line 10
    new-array v3, v2, [Ljava/lang/Class;

    .line 12
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 14
    const/4 v5, 0x0

    .line 15
    aput-object v4, v3, v5

    .line 17
    const/4 v6, 0x1

    .line 18
    aput-object v4, v3, v6

    .line 20
    new-array v2, v2, [Ljava/lang/Object;

    .line 22
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 25
    move-result-object p1

    .line 26
    aput-object p1, v2, v5

    .line 28
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 31
    move-result-object p1

    .line 32
    aput-object p1, v2, v6

    .line 34
    invoke-static {v0, p0, v1, v3, v2}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    .line 37
    goto :goto_2d

    .line 38
    :catch_25
    move-exception p0

    .line 39
    const-string p1, "MAML_Reflect"

    .line 41
    const-string p2, "Invoke | SurfaceControl_setPosition() occur EXCEPTION: "

    .line 43
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    :goto_2d
    return-void
.end method

.method public static SurfaceControl_show(Landroid/view/SurfaceControl;)V
    .registers 5

    .line 1
    :try_start_0
    const-string v0, "android.view.SurfaceControl"

    .line 3
    invoke-static {v0}, Lcom/miui/maml/util/ReflectionHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "show"

    .line 9
    const/4 v2, 0x0

    .line 10
    new-array v3, v2, [Ljava/lang/Class;

    .line 12
    new-array v2, v2, [Ljava/lang/Object;

    .line 14
    invoke-static {v0, p0, v1, v3, v2}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 17
    goto :goto_19

    .line 18
    :catch_11
    move-exception p0

    .line 19
    const-string v0, "MAML_Reflect"

    .line 21
    const-string v1, "Invoke | SurfaceControl_show() occur EXCEPTION: "

    .line 23
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    :goto_19
    return-void
.end method

.method public static Surface_copyFrom(Landroid/view/Surface;Landroid/view/SurfaceControl;)V
    .registers 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1a

    .line 5
    if-lt v0, v1, :cond_2a

    .line 7
    const/16 v1, 0x1d

    .line 9
    if-gt v0, v1, :cond_2a

    .line 11
    :try_start_a
    const-string v0, "android.view.SurfaceControl"

    .line 13
    invoke-static {v0}, Lcom/miui/maml/util/ReflectionHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 16
    move-result-object v0

    .line 17
    const-class v1, Landroid/view/Surface;

    .line 19
    const-string v2, "copyFrom"

    .line 21
    const/4 v3, 0x1

    .line 22
    new-array v4, v3, [Ljava/lang/Class;

    .line 24
    const/4 v5, 0x0

    .line 25
    aput-object v0, v4, v5

    .line 27
    new-array v0, v3, [Ljava/lang/Object;

    .line 29
    aput-object p1, v0, v5

    .line 31
    invoke-static {v1, p0, v2, v4, v0}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_21} :catch_22

    .line 34
    goto :goto_2a

    .line 35
    :catch_22
    move-exception p0

    .line 36
    const-string p1, "MAML_Reflect"

    .line 38
    const-string v0, "Invoke | Surface_copyFrom() occur EXCEPTION: "

    .line 40
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    :cond_2a
    :goto_2a
    return-void
.end method

.method public static Surface_getInstance()Landroid/view/Surface;
    .registers 3

    .line 1
    :try_start_0
    const-class v0, Landroid/view/Surface;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Class;

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    invoke-static {v0, v2, v1}, Lcom/miui/maml/util/ReflectionHelper;->getConstructorInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/view/Surface;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 14
    return-object v0

    .line 15
    :catch_e
    move-exception v0

    .line 16
    const-string v1, "MAML_Reflect"

    .line 18
    const-string v2, "Invoke | Surface_getInstance() occur EXCEPTION: "

    .line 20
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    const/4 v0, 0x0

    .line 24
    return-object v0
.end method

.method public static SystemSettingsSystem_DARKEN_WALLPAPER_UNDER_DARK_MODE()Ljava/lang/String;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    const-class v1, Landroid/provider/SystemSettings$System;

    .line 4
    const-string v2, "DARKEN_WALLPAPER_UNDER_DARK_MODE"

    .line 6
    invoke-static {v1, v0, v2}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_c

    .line 12
    return-object v1

    .line 13
    :catch_c
    move-exception v1

    .line 14
    const-string v2, "MAML_Reflect"

    .line 16
    const-string v3, "Invoke | SystemSettingsSystem_DARKEN_WALLPAPER_UNDER_DARK_MODE() occur EXCEPTION: "

    .line 18
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    return-object v0
.end method

.method public static TypefaceUtils_replaceTypeface(Landroid/content/Context;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .registers 10

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    const-string v1, "miui.util.TypefaceUtils"

    .line 4
    invoke-static {v1}, Lcom/miui/maml/util/ReflectionHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 7
    move-result-object v1

    .line 8
    const-string v2, "replaceTypeface"

    .line 10
    const/4 v3, 0x2

    .line 11
    new-array v4, v3, [Ljava/lang/Class;

    .line 13
    const-class v5, Landroid/content/Context;

    .line 15
    const/4 v6, 0x0

    .line 16
    aput-object v5, v4, v6

    .line 18
    const-class v5, Landroid/graphics/Typeface;

    .line 20
    const/4 v7, 0x1

    .line 21
    aput-object v5, v4, v7

    .line 23
    new-array v3, v3, [Ljava/lang/Object;

    .line 25
    aput-object p0, v3, v6

    .line 27
    aput-object p1, v3, v7

    .line 29
    invoke-static {v1, v0, v2, v4, v3}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Landroid/graphics/Typeface;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_23

    .line 35
    return-object p0

    .line 36
    :catch_23
    move-exception p0

    .line 37
    const-string p1, "MAML_Reflect"

    .line 39
    const-string v1, "Invoke | TypefaceUtils_replaceTypeface() occur EXCEPTION: "

    .line 41
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    return-object v0
.end method

.method public static UserHandle_CURRENT()Landroid/os/UserHandle;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    const-class v1, Landroid/os/UserHandle;

    .line 4
    const-string v2, "CURRENT"

    .line 6
    invoke-static {v1, v0, v2}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Landroid/os/UserHandle;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_c

    .line 12
    return-object v1

    .line 13
    :catch_c
    move-exception v1

    .line 14
    const-string v2, "MAML_Reflect"

    .line 16
    const-string v3, "Invoke | UserHandle_CURRENT() occur EXCEPTION: "

    .line 18
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    return-object v0
.end method

.method public static UserHandle_getIdentifier(Landroid/os/UserHandle;)I
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    const-class v1, Landroid/os/UserHandle;

    .line 4
    const-string v2, "getIdentifier"

    .line 6
    new-array v3, v0, [Ljava/lang/Class;

    .line 8
    new-array v4, v0, [Ljava/lang/Object;

    .line 10
    invoke-static {v1, p0, v2, v3, v4}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljava/lang/Integer;

    .line 16
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 19
    move-result p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_14

    .line 20
    return p0

    .line 21
    :catch_14
    move-exception p0

    .line 22
    const-string v1, "MAML_Reflect"

    .line 24
    const-string v2, "Invoke | UserHandle_getIdentifier() occur EXCEPTION: "

    .line 26
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    return v0
.end method

.method public static UserHandle_getInstance_with_int(I)Landroid/os/UserHandle;
    .registers 6

    .line 1
    :try_start_0
    const-class v0, Landroid/os/UserHandle;

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v2, v1, [Ljava/lang/Class;

    .line 6
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 8
    const/4 v4, 0x0

    .line 9
    aput-object v3, v2, v4

    .line 11
    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object p0

    .line 17
    aput-object p0, v1, v4

    .line 19
    invoke-static {v0, v2, v1}, Lcom/miui/maml/util/ReflectionHelper;->getConstructorInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Landroid/os/UserHandle;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    .line 25
    return-object p0

    .line 26
    :catch_19
    move-exception p0

    .line 27
    const-string v0, "MAML_Reflect"

    .line 29
    const-string v1, "Invoke | UserHandle_getInstance_with_int() occur EXCEPTION: "

    .line 31
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    const/4 p0, 0x0

    .line 35
    return-object p0
.end method

.method public static WifiManager_isWifiApEnabled(Landroid/net/wifi/WifiManager;)Z
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    const-class v1, Landroid/net/wifi/WifiManager;

    .line 4
    const-string v2, "isWifiApEnabled"

    .line 6
    new-array v3, v0, [Ljava/lang/Class;

    .line 8
    new-array v4, v0, [Ljava/lang/Object;

    .line 10
    invoke-static {v1, p0, v2, v3, v4}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljava/lang/Boolean;

    .line 16
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    move-result p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_14

    .line 20
    return p0

    .line 21
    :catch_14
    move-exception p0

    .line 22
    const-string v1, "MAML_Reflect"

    .line 24
    const-string v2, "Invoke | WifiManager_isWifiApEnabled() occur EXCEPTION: "

    .line 26
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    return v0
.end method

.method public static WindowManager_LayoutParams_setLayoutParamsBlurRatio(Landroid/view/WindowManager$LayoutParams;F)V
    .registers 4

    .line 1
    :try_start_0
    const-class v0, Landroid/view/WindowManager$LayoutParams;

    .line 3
    const-string v1, "blurRatio"

    .line 5
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 8
    move-result-object p1

    .line 9
    invoke-static {v0, p0, v1, p1}, Lcom/miui/maml/util/ReflectionHelper;->setFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 12
    goto :goto_14

    .line 13
    :catch_c
    move-exception p0

    .line 14
    const-string p1, "MAML_Reflect"

    .line 16
    const-string v0, "Invoke | WindowManager_LayoutParams_setLayoutParamsBlurRatio() occur EXCEPTION: "

    .line 18
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    :goto_14
    return-void
.end method

.method private static initSurfaceControl(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/SurfaceControl;)V
    .registers 41

    .line 1
    move-object/from16 v0, p0

    .line 3
    :try_start_2
    const-string v1, "android.view.IWindowSession"

    .line 5
    invoke-static {v1}, Lcom/miui/maml/util/ReflectionHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    move-result-object v1

    .line 9
    const-string v2, "android.view.IWindow"

    .line 11
    invoke-static {v2}, Lcom/miui/maml/util/ReflectionHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 14
    move-result-object v2

    .line 15
    const-string v3, "com.android.internal.view.BaseIWindow"

    .line 17
    invoke-static {v3}, Lcom/miui/maml/util/ReflectionHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 20
    move-result-object v3

    .line 21
    const-string v4, "android.view.DisplayCutout$ParcelableWrapper"

    .line 23
    invoke-static {v4}, Lcom/miui/maml/util/ReflectionHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 26
    move-result-object v4

    .line 27
    const-string v5, "android.view.InsetsState"

    .line 29
    invoke-static {v5}, Lcom/miui/maml/util/ReflectionHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 32
    move-result-object v5

    .line 33
    const-string v6, "android.util.MergedConfiguration"

    .line 35
    invoke-static {v6}, Lcom/miui/maml/util/ReflectionHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 38
    move-result-object v6

    .line 39
    const-class v7, Landroid/service/wallpaper/WallpaperService$Engine;

    .line 41
    const-string v8, "mSession"

    .line 43
    invoke-static {v7, v0, v8}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    move-result-object v7

    .line 47
    const-class v8, Landroid/service/wallpaper/WallpaperService$Engine;

    .line 49
    const-string v9, "mWindow"

    .line 51
    invoke-static {v8, v0, v9}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    move-result-object v8

    .line 55
    const-class v9, Landroid/service/wallpaper/WallpaperService$Engine;

    .line 57
    const-string v10, "mDisplayCutout"

    .line 59
    invoke-static {v9, v0, v10}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    move-result-object v9

    .line 63
    const-class v10, Landroid/service/wallpaper/WallpaperService$Engine;

    .line 65
    const-string v11, "mInsetsState"

    .line 67
    invoke-static {v10, v0, v11}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    move-result-object v10

    .line 71
    const-class v11, Landroid/service/wallpaper/WallpaperService$Engine;

    .line 73
    const-string v12, "mMergedConfiguration"

    .line 75
    invoke-static {v11, v0, v12}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    move-result-object v11

    .line 79
    const-class v12, Landroid/service/wallpaper/WallpaperService$Engine;

    .line 81
    const-string v13, "mLayout"

    .line 83
    invoke-static {v12, v0, v13}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    move-result-object v12

    .line 87
    check-cast v12, Landroid/view/WindowManager$LayoutParams;

    .line 89
    const-string v13, "mSeq"

    .line 91
    invoke-static {v3, v8, v13}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    move-result-object v3

    .line 95
    check-cast v3, Ljava/lang/Integer;

    .line 97
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 100
    move-result v3

    .line 101
    const-class v13, Landroid/service/wallpaper/WallpaperService$Engine;

    .line 103
    const-string v14, "mWidth"

    .line 105
    invoke-static {v13, v0, v14}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 108
    move-result-object v13

    .line 109
    check-cast v13, Ljava/lang/Integer;

    .line 111
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 114
    move-result v13

    .line 115
    const-class v14, Landroid/service/wallpaper/WallpaperService$Engine;

    .line 117
    const-string v15, "mHeight"

    .line 119
    invoke-static {v14, v0, v15}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    move-result-object v14

    .line 123
    check-cast v14, Ljava/lang/Integer;

    .line 125
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 128
    move-result v14

    .line 129
    const-class v15, Landroid/service/wallpaper/WallpaperService$Engine;

    .line 131
    move-object/from16 v16, v1

    .line 133
    const-string v1, "mVisibleInsets"

    .line 135
    invoke-static {v15, v0, v1}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 138
    move-result-object v1

    .line 139
    check-cast v1, Landroid/graphics/Rect;

    .line 141
    const-class v15, Landroid/service/wallpaper/WallpaperService$Engine;

    .line 143
    move-object/from16 v17, v10

    .line 145
    const-string v10, "mWinFrame"

    .line 147
    invoke-static {v15, v0, v10}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 150
    move-result-object v10

    .line 151
    check-cast v10, Landroid/graphics/Rect;

    .line 153
    const-class v15, Landroid/service/wallpaper/WallpaperService$Engine;

    .line 155
    move-object/from16 v18, v11

    .line 157
    const-string v11, "mOverscanInsets"

    .line 159
    invoke-static {v15, v0, v11}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 162
    move-result-object v11

    .line 163
    check-cast v11, Landroid/graphics/Rect;

    .line 165
    const-class v15, Landroid/service/wallpaper/WallpaperService$Engine;

    .line 167
    move-object/from16 v19, v9

    .line 169
    const-string v9, "mContentInsets"

    .line 171
    invoke-static {v15, v0, v9}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 174
    move-result-object v9

    .line 175
    check-cast v9, Landroid/graphics/Rect;

    .line 177
    const-class v15, Landroid/service/wallpaper/WallpaperService$Engine;

    .line 179
    move-object/from16 v20, v1

    .line 181
    const-string v1, "mStableInsets"

    .line 183
    invoke-static {v15, v0, v1}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 186
    move-result-object v1

    .line 187
    check-cast v1, Landroid/graphics/Rect;

    .line 189
    const-class v15, Landroid/service/wallpaper/WallpaperService$Engine;

    .line 191
    move-object/from16 v21, v1

    .line 193
    const-string v1, "mOutsets"

    .line 195
    invoke-static {v15, v0, v1}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 198
    move-result-object v1

    .line 199
    check-cast v1, Landroid/graphics/Rect;

    .line 201
    const-class v15, Landroid/service/wallpaper/WallpaperService$Engine;

    .line 203
    move-object/from16 v22, v1

    .line 205
    const-string v1, "mBackdropFrame"

    .line 207
    invoke-static {v15, v0, v1}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 210
    move-result-object v0

    .line 211
    check-cast v0, Landroid/graphics/Rect;

    .line 213
    if-eqz v7, :cond_18d

    .line 215
    const/16 v1, 0x13

    .line 217
    new-array v15, v1, [Ljava/lang/Class;

    .line 219
    const/16 v23, 0x0

    .line 221
    aput-object v2, v15, v23

    .line 223
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 225
    const/16 v24, 0x1

    .line 227
    aput-object v2, v15, v24

    .line 229
    const-class v25, Landroid/view/WindowManager$LayoutParams;

    .line 231
    const/16 v26, 0x2

    .line 233
    aput-object v25, v15, v26

    .line 235
    const/16 v25, 0x3

    .line 237
    aput-object v2, v15, v25

    .line 239
    const/16 v27, 0x4

    .line 241
    aput-object v2, v15, v27

    .line 243
    const/16 v28, 0x5

    .line 245
    aput-object v2, v15, v28

    .line 247
    const/16 v29, 0x6

    .line 249
    aput-object v2, v15, v29

    .line 251
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 253
    const/16 v30, 0x7

    .line 255
    aput-object v2, v15, v30

    .line 257
    const-class v2, Landroid/graphics/Rect;

    .line 259
    const/16 v31, 0x8

    .line 261
    aput-object v2, v15, v31

    .line 263
    const-class v2, Landroid/graphics/Rect;

    .line 265
    const/16 v32, 0x9

    .line 267
    aput-object v2, v15, v32

    .line 269
    const-class v2, Landroid/graphics/Rect;

    .line 271
    const/16 v33, 0xa

    .line 273
    aput-object v2, v15, v33

    .line 275
    const-class v2, Landroid/graphics/Rect;

    .line 277
    const/16 v34, 0xb

    .line 279
    aput-object v2, v15, v34

    .line 281
    const-class v2, Landroid/graphics/Rect;

    .line 283
    const/16 v35, 0xc

    .line 285
    aput-object v2, v15, v35

    .line 287
    const-class v2, Landroid/graphics/Rect;

    .line 289
    const/16 v36, 0xd

    .line 291
    aput-object v2, v15, v36

    .line 293
    const-class v2, Landroid/graphics/Rect;

    .line 295
    const/16 v37, 0xe

    .line 297
    aput-object v2, v15, v37

    .line 299
    const/16 v2, 0xf

    .line 301
    aput-object v4, v15, v2

    .line 303
    const/16 v4, 0x10

    .line 305
    aput-object v6, v15, v4

    .line 307
    const-class v6, Landroid/view/SurfaceControl;

    .line 309
    const/16 v38, 0x11

    .line 311
    aput-object v6, v15, v38

    .line 313
    const/16 v6, 0x12

    .line 315
    aput-object v5, v15, v6

    .line 317
    new-array v1, v1, [Ljava/lang/Object;

    .line 319
    aput-object v8, v1, v23

    .line 321
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 324
    move-result-object v3

    .line 325
    aput-object v3, v1, v24

    .line 327
    aput-object v12, v1, v26

    .line 329
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 332
    move-result-object v3

    .line 333
    aput-object v3, v1, v25

    .line 335
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 338
    move-result-object v3

    .line 339
    aput-object v3, v1, v27

    .line 341
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 344
    move-result-object v3

    .line 345
    aput-object v3, v1, v28

    .line 347
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 350
    move-result-object v3

    .line 351
    aput-object v3, v1, v29

    .line 353
    const/4 v3, -0x1

    .line 354
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 357
    move-result-object v3

    .line 358
    aput-object v3, v1, v30

    .line 360
    aput-object v10, v1, v31

    .line 362
    aput-object v11, v1, v32

    .line 364
    aput-object v9, v1, v33

    .line 366
    aput-object v20, v1, v34

    .line 368
    aput-object v21, v1, v35

    .line 370
    aput-object v22, v1, v36

    .line 372
    aput-object v0, v1, v37

    .line 374
    aput-object v19, v1, v2

    .line 376
    aput-object v18, v1, v4

    .line 378
    aput-object p1, v1, v38

    .line 380
    aput-object v17, v1, v6

    .line 382
    const-string v0, "relayout"

    .line 384
    move-object/from16 v2, v16

    .line 386
    invoke-static {v2, v7, v0, v15, v1}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_184
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_184} :catch_185

    .line 389
    goto :goto_18d

    .line 390
    :catch_185
    move-exception v0

    .line 391
    const-string v1, "MAML_Reflect"

    .line 393
    const-string v2, "Invoke | initSurfaceControl() occur EXCEPTION: "

    .line 395
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 398
    :cond_18d
    :goto_18d
    return-void
.end method

.method public static isShowDebugLayout()Z
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    const/16 v2, 0x1d

    .line 6
    if-lt v1, v2, :cond_27

    .line 8
    const-string v1, "android.sysprop.DisplayProperties"

    .line 10
    invoke-static {v1}, Lcom/miui/maml/util/ReflectionHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    const-string v3, "debug_layout"

    .line 17
    new-array v4, v0, [Ljava/lang/Class;

    .line 19
    new-array v5, v0, [Ljava/lang/Object;

    .line 21
    invoke-static {v1, v2, v3, v4, v5}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ljava/util/Optional;

    .line 27
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 29
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Ljava/lang/Boolean;

    .line 35
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    move-result v0

    .line 39
    return v0

    .line 40
    :cond_27
    const-string v1, "debug.layout"

    .line 42
    invoke-static {v1, v0}, Lcom/miui/maml/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 45
    move-result v0
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2d} :catch_2e

    .line 46
    return v0

    .line 47
    :catch_2e
    move-exception v1

    .line 48
    const-string v2, "MAML_Reflect"

    .line 50
    const-string v3, "Invoke | isShowDebugLayout() occur EXCEPTION: "

    .line 52
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    return v0
.end method

.method public static setWifiApEnabled(Landroid/content/Context;Z)V
    .registers 11

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1c

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x1

    .line 8
    const/4 v5, 0x0

    .line 9
    if-lt v0, v1, :cond_53

    .line 11
    const-string v0, "connectivity"

    .line 13
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 19
    const-string v0, "android.net.ConnectivityManager$OnStartTetheringCallback"

    .line 21
    invoke-static {v0}, Lcom/miui/maml/util/ReflectionHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 24
    move-result-object v0

    .line 25
    if-eqz p1, :cond_3d

    .line 27
    const-class p1, Landroid/net/ConnectivityManager;

    .line 29
    const-string v1, "startTethering"

    .line 31
    const/4 v6, 0x3

    .line 32
    new-array v7, v6, [Ljava/lang/Class;

    .line 34
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 36
    aput-object v8, v7, v5

    .line 38
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 40
    aput-object v8, v7, v4

    .line 42
    aput-object v0, v7, v3

    .line 44
    new-array v0, v6, [Ljava/lang/Object;

    .line 46
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v6

    .line 50
    aput-object v6, v0, v5

    .line 52
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 54
    aput-object v5, v0, v4

    .line 56
    aput-object v2, v0, v3

    .line 58
    invoke-static {p1, p0, v1, v7, v0}, Lcom/miui/maml/util/ReflectionHelper;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 61
    goto :goto_7f

    .line 62
    :cond_3d
    const-class p1, Landroid/net/ConnectivityManager;

    .line 64
    const-string v0, "stopTethering"

    .line 66
    new-array v1, v4, [Ljava/lang/Class;

    .line 68
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 70
    aput-object v2, v1, v5

    .line 72
    new-array v2, v4, [Ljava/lang/Object;

    .line 74
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    move-result-object v3

    .line 78
    aput-object v3, v2, v5

    .line 80
    invoke-static {p1, p0, v0, v1, v2}, Lcom/miui/maml/util/ReflectionHelper;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 83
    goto :goto_7f

    .line 84
    :cond_53
    const-string v0, "wifi"

    .line 86
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    move-result-object p0

    .line 90
    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 92
    const-class v0, Landroid/net/wifi/WifiManager;

    .line 94
    const-string v1, "setWifiApEnabled"

    .line 96
    new-array v6, v3, [Ljava/lang/Class;

    .line 98
    const-class v7, Landroid/net/wifi/WifiConfiguration;

    .line 100
    aput-object v7, v6, v5

    .line 102
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 104
    aput-object v7, v6, v4

    .line 106
    new-array v3, v3, [Ljava/lang/Object;

    .line 108
    aput-object v2, v3, v5

    .line 110
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 113
    move-result-object p1

    .line 114
    aput-object p1, v3, v4

    .line 116
    invoke-static {v0, p0, v1, v6, v3}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_76} :catch_77

    .line 119
    goto :goto_7f

    .line 120
    :catch_77
    move-exception p0

    .line 121
    const-string p1, "MAML_Reflect"

    .line 123
    const-string v0, "Invoke | setWifiApEnabled() occur EXCEPTION: "

    .line 125
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    :goto_7f
    return-void
.end method
