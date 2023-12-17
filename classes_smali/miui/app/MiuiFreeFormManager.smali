.class public Lmiui/app/MiuiFreeFormManager;
.super Ljava/lang/Object;
.source "MiuiFreeFormManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    }
.end annotation


# static fields
.field public static final ACTION_FREEFORM_END_RESIZE:I = 0x7

.field public static final ACTION_FREEFORM_PINED:I = 0x9

.field public static final ACTION_FREEFORM_PINED_TO_MINIFREEFORM_PINED:I = 0xf

.field public static final ACTION_FREEFORM_START_RESIZE:I = 0x6

.field public static final ACTION_FREEFORM_TO_FULLSCREEN:I = 0x3

.field public static final ACTION_FREEFORM_TO_MINIFREEFORM:I = 0x2

.field public static final ACTION_FREEFORM_UNPINED:I = 0xb

.field public static final ACTION_FREEFORM_UPDATE_CAPTION_VISIBILITY:I = 0x8

.field public static final ACTION_FULLSCREEN_TO_FREEFORM:I = 0x0

.field public static final ACTION_FULLSCREEN_TO_MINIFREEFORM:I = 0x1

.field public static final ACTION_MINIFREEFORM_PINED:I = 0xa

.field public static final ACTION_MINIFREEFORM_PINED_TO_FREEFORM_PINED:I = 0xe

.field public static final ACTION_MINIFREEFORM_TO_FREEFORM:I = 0x4

.field public static final ACTION_MINIFREEFORM_TO_FULLSCREEN:I = 0x5

.field public static final ACTION_MINI_FREEFORM_UNPINED:I = 0xc

.field public static final ACTION_REMOVE_FLOATING_PIN_WINDOW:I = 0xd

.field public static final BACKGROUND_PIN:I = 0x2

.field public static final FOREGROUND_PIN:I = 0x1

.field public static final GESTURE_WINDOWING_MODE_FREEFORM:I = 0x0

.field public static final GESTURE_WINDOWING_MODE_SMALL_FREEFORM:I = 0x1

.field public static final GESTURE_WINDOWING_MODE_UNDEFINED:I = -0x1

.field private static final IMiuiFreeFormManagerSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lmiui/app/IMiuiFreeFormManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MiuiFreeFormManager"

.field public static final UNPIN:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lmiui/app/MiuiFreeFormManager$1;

    .line 3
    invoke-direct {v0}, Lmiui/app/MiuiFreeFormManager$1;-><init>()V

    .line 6
    sput-object v0, Lmiui/app/MiuiFreeFormManager;->IMiuiFreeFormManagerSingleton:Landroid/util/Singleton;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static actionToString(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_36

    const/4 p0, 0x0

    return-object p0

    :pswitch_5  #0xf
    const-string p0, "ACTION_FREEFORM_PINED_TO_MINIFREEFORM_PINED"

    return-object p0

    :pswitch_8  #0xe
    const-string p0, "ACTION_MINIFREEFORM_PINED_TO_FREEFORM_PINED"

    return-object p0

    :pswitch_b  #0xd
    const-string p0, "ACTION_REMOVE_FLOATING_PIN_WINDOW"

    return-object p0

    :pswitch_e  #0xc
    const-string p0, "ACTION_MINI_FREEFORM_UNPINED"

    return-object p0

    :pswitch_11  #0xb
    const-string p0, "ACTION_FREEFORM_UNPINED"

    return-object p0

    :pswitch_14  #0xa
    const-string p0, "ACTION_MINIFREEFORM_PINED"

    return-object p0

    :pswitch_17  #0x9
    const-string p0, "ACTION_FREEFORM_PINED"

    return-object p0

    :pswitch_1a  #0x8
    const-string p0, "ACTION_FREEFORM_UPDATE_CAPTION_VISIBILITY"

    return-object p0

    :pswitch_1d  #0x7
    const-string p0, "ACTION_FREEFORM_END_RESIZE"

    return-object p0

    :pswitch_20  #0x6
    const-string p0, "ACTION_FREEFORM_START_RESIZE"

    return-object p0

    :pswitch_23  #0x5
    const-string p0, "ACTION_MINIFREEFORM_TO_FULLSCREEN"

    return-object p0

    :pswitch_26  #0x4
    const-string p0, "ACTION_MINIFREEFORM_TO_FREEFORM"

    return-object p0

    :pswitch_29  #0x3
    const-string p0, "ACTION_FREEFORM_TO_FULLSCREEN"

    return-object p0

    :pswitch_2c  #0x2
    const-string p0, "ACTION_FREEFORM_TO_MINIFREEFORM"

    return-object p0

    :pswitch_2f  #0x1
    const-string p0, "ACTION_FULLSCREEN_TO_MINIFREEFORM"

    return-object p0

    :pswitch_32  #0x0
    const-string p0, "ACTION_FULLSCREEN_TO_FREEFORM"

    return-object p0

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_32  #00000000
        :pswitch_2f  #00000001
        :pswitch_2c  #00000002
        :pswitch_29  #00000003
        :pswitch_26  #00000004
        :pswitch_23  #00000005
        :pswitch_20  #00000006
        :pswitch_1d  #00000007
        :pswitch_1a  #00000008
        :pswitch_17  #00000009
        :pswitch_14  #0000000a
        :pswitch_11  #0000000b
        :pswitch_e  #0000000c
        :pswitch_b  #0000000d
        :pswitch_8  #0000000e
        :pswitch_5  #0000000f
    .end packed-switch
.end method

.method public static getAllFreeFormStackInfosOnDisplay(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_19

    .line 8
    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormManager;->getAllFreeFormStackInfosOnDisplay(I)Ljava/util/List;

    .line 15
    move-result-object p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_10

    .line 16
    return-object p0

    .line 17
    :catch_10
    const-string v0, " failed getAllFreeFormStackInfosOnDisplay displayId="

    .line 19
    const-string v1, "MiuiFreeFormManager"

    .line 21
    invoke-static {v0, p0, v1}, Lf0/e;->l(Ljava/lang/String;ILjava/lang/String;)V

    .line 24
    const/4 p0, 0x0

    .line 25
    return-object p0

    .line 26
    :cond_19
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 28
    const-string v0, "非MIUI13小窗版本,请用MIUI12适配方案进行适配"

    .line 30
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p0
.end method

.method public static getAllPinedFreeFormStackInfosOnDisplay(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_1f

    .line 8
    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_19

    .line 14
    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormManager;->getAllPinedFreeFormStackInfosOnDisplay(I)Ljava/util/List;

    .line 17
    move-result-object p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_12

    .line 18
    return-object p0

    .line 19
    :catch_12
    const-string v0, " failed getAllFreeFormStackInfosOnDisplay displayId="

    .line 21
    const-string v1, "MiuiFreeFormManager"

    .line 23
    invoke-static {v0, p0, v1}, Lf0/e;->l(Ljava/lang/String;ILjava/lang/String;)V

    .line 26
    :cond_19
    new-instance p0, Ljava/util/ArrayList;

    .line 28
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    return-object p0

    .line 32
    :cond_1f
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 34
    const-string v0, "非MIUI13小窗版本,请用MIUI12适配方案进行适配"

    .line 36
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 39
    throw p0
.end method

.method public static getFreeFormStackInfoByActivity(Landroid/app/Activity;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    .registers 5

    .line 1
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_45

    .line 8
    :try_start_7
    const-class v0, Landroid/app/Activity;

    .line 10
    const-string v1, "getActivityToken"

    .line 12
    const/4 v2, 0x0

    .line 13
    new-array v3, v2, [Ljava/lang/Class;

    .line 15
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 23
    new-array v1, v2, [Ljava/lang/Object;

    .line 25
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/os/IBinder;

    .line 31
    if-eqz v0, :cond_2d

    .line 33
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    .line 36
    move-result-object v1

    .line 37
    invoke-interface {v1, v0}, Lmiui/app/IMiuiFreeFormManager;->getFreeFormStackInfoByActivity(Landroid/os/IBinder;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 40
    move-result-object p0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_28} :catch_29

    .line 41
    return-object p0

    .line 42
    :catch_29
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    const-string v1, " failed getFreeFormStackInfo view="

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 63
    const-string v0, "MiuiFreeFormManager"

    .line 65
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 p0, 0x0

    .line 69
    return-object p0

    .line 70
    :cond_45
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 72
    const-string v0, "非MIUI13小窗版本,请用MIUI12适配方案进行适配"

    .line 74
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 77
    throw p0
.end method

.method public static getFreeFormStackInfoByStackId(I)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    .registers 3

    .line 1
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_19

    .line 8
    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormManager;->getFreeFormStackInfoByStackId(I)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 15
    move-result-object p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_10

    .line 16
    return-object p0

    .line 17
    :catch_10
    const-string v0, " failed getFreeFormStackInfoByStackId stackId="

    .line 19
    const-string v1, "MiuiFreeFormManager"

    .line 21
    invoke-static {v0, p0, v1}, Lf0/e;->l(Ljava/lang/String;ILjava/lang/String;)V

    .line 24
    const/4 p0, 0x0

    .line 25
    return-object p0

    .line 26
    :cond_19
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 28
    const-string v0, "非MIUI13小窗版本,请用MIUI12适配方案进行适配"

    .line 30
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p0
.end method

.method public static getFreeFormStackInfoByView(Landroid/view/View;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    .registers 6

    .line 1
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_4d

    .line 8
    const/4 v0, 0x0

    .line 9
    :try_start_8
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_17

    .line 15
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    .line 18
    move-result-object v2

    .line 19
    invoke-interface {v2, v1}, Lmiui/app/IMiuiFreeFormManager;->getFreeFormStackInfoByWindow(Landroid/os/IBinder;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_17
    const-class v1, Landroid/view/View;

    .line 26
    const-string v2, "getAttachedActivity"

    .line 28
    const/4 v3, 0x0

    .line 29
    new-array v4, v3, [Ljava/lang/Class;

    .line 31
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 34
    move-result-object v1

    .line 35
    const/4 v2, 0x1

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 39
    new-array v2, v3, [Ljava/lang/Object;

    .line 41
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Landroid/app/Activity;

    .line 47
    if-eqz v1, :cond_35

    .line 49
    invoke-static {v1}, Lmiui/app/MiuiFreeFormManager;->getFreeFormStackInfoByActivity(Landroid/app/Activity;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 52
    move-result-object p0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_34} :catch_36

    .line 53
    return-object p0

    .line 54
    :cond_35
    return-object v0

    .line 55
    :catch_36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    const-string v2, " failed getFreeFormStackInfo view="

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 72
    const-string v1, "MiuiFreeFormManager"

    .line 74
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-object v0

    .line 78
    :cond_4d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 80
    const-string v0, "非MIUI13小窗版本,请用MIUI12适配方案进行适配"

    .line 82
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 85
    throw p0
.end method

.method public static getMaxMiuiFreeFormStackCountForFlashBack(Ljava/lang/String;Z)I
    .registers 3

    .line 1
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_16

    .line 7
    :try_start_6
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0, p0, p1}, Lmiui/app/IMiuiFreeFormManager;->getMaxMiuiFreeFormStackCountForFlashBack(Ljava/lang/String;Z)I

    .line 14
    move-result p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_f

    .line 15
    return p0

    .line 16
    :catch_f
    const-string p0, "MiuiFreeFormManager"

    .line 18
    const-string p1, " failed getMaxMiuiFreeFormStackCountForFlashBack "

    .line 20
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_16
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public static getMiuiFreeformStackPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_12

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    move-result-object p0

    .line 12
    const-string v0, "freeform_package_name"

    .line 14
    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_12
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 21
    const-string v0, "非MIUI12小窗版本,请用MIUI13适配方案进行适配"

    .line 23
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 26
    throw p0
.end method

.method public static getMiuiFreeformStackShowState(Landroid/content/Context;)I
    .registers 3

    .line 1
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_13

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    move-result-object p0

    .line 12
    const/4 v0, -0x1

    .line 13
    const-string v1, "freeform_window_state"

    .line 15
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_13
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 22
    const-string v0, "非MIUI12小窗版本,请用MIUI13适配方案进行适配"

    .line 24
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p0
.end method

.method public static getMiuiFreeformVersion()I
    .registers 1

    .line 1
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 v0, 0x3

    .line 8
    return v0

    .line 9
    :cond_8
    const/4 v0, 0x2

    .line 10
    return v0
.end method

.method private static getService()Lmiui/app/IMiuiFreeFormManager;
    .registers 1

    .line 1
    :try_start_0
    sget-object v0, Lmiui/app/MiuiFreeFormManager;->IMiuiFreeFormManagerSingleton:Landroid/util/Singleton;

    .line 3
    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiui/app/IMiuiFreeFormManager;
    :try_end_8
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_8} :catch_9

    .line 9
    return-object v0

    .line 10
    :catch_9
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public static hidePinFloatingWindow(I)V
    .registers 3

    .line 1
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_19

    .line 8
    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_18

    .line 14
    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormManager;->hidePinFloatingWindow(I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_11

    .line 17
    goto :goto_18

    .line 18
    :catch_11
    const-string v0, " failed hidePinFloatingWindow stackId="

    .line 20
    const-string v1, "MiuiFreeFormManager"

    .line 22
    invoke-static {v0, p0, v1}, Lf0/e;->l(Ljava/lang/String;ILjava/lang/String;)V

    .line 25
    :cond_18
    :goto_18
    return-void

    .line 26
    :cond_19
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 28
    const-string v0, "非MIUI13小窗版本,请用MIUI12适配方案进行适配"

    .line 30
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p0
.end method

.method public static isSupportPin()Z
    .registers 2

    .line 1
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_1b

    .line 8
    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_19

    .line 14
    invoke-interface {v0}, Lmiui/app/IMiuiFreeFormManager;->isSupportPin()Z

    .line 17
    move-result v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_12

    .line 18
    return v0

    .line 19
    :catch_12
    const-string v0, "MiuiFreeFormManager"

    .line 21
    const-string v1, " failed isSuppoertPin"

    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_19
    const/4 v0, 0x0

    .line 27
    return v0

    .line 28
    :cond_1b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 30
    const-string v1, "非MIUI13小窗版本,请用MIUI12适配方案进行适配"

    .line 32
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 35
    throw v0
.end method

.method public static registerFreeformCallback(Lmiui/app/IFreeformCallback;)V
    .registers 3

    .line 1
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_16

    .line 8
    if-eqz p0, :cond_15

    .line 10
    :try_start_9
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormManager;->registerFreeformCallback(Lmiui/app/IFreeformCallback;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_11

    .line 17
    goto :goto_15

    .line 18
    :catch_11
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    :cond_15
    :goto_15
    return-void

    .line 23
    :cond_16
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 25
    const-string v0, "非MIUI13小窗版本,请用MIUI12适配方案进行适配"

    .line 27
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p0
.end method

.method public static unPinFloatingWindow(Landroid/graphics/Rect;IFFZ)Z
    .registers 13

    .line 1
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_20

    .line 8
    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    .line 11
    move-result-object v2

    .line 12
    if-eqz v2, :cond_1e

    .line 14
    move-object v3, p0

    .line 15
    move v4, p1

    .line 16
    move v5, p2

    .line 17
    move v6, p3

    .line 18
    move v7, p4

    .line 19
    invoke-interface/range {v2 .. v7}, Lmiui/app/IMiuiFreeFormManager;->unPinFloatingWindow(Landroid/graphics/Rect;IFFZ)Z

    .line 22
    move-result p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_16} :catch_17

    .line 23
    return p0

    .line 24
    :catch_17
    const-string p0, " failed getFreeFormStackInfoByStackId stackId="

    .line 26
    const-string p2, "MiuiFreeFormManager"

    .line 28
    invoke-static {p0, p1, p2}, Lf0/e;->l(Ljava/lang/String;ILjava/lang/String;)V

    .line 31
    :cond_1e
    const/4 p0, 0x0

    .line 32
    return p0

    .line 33
    :cond_20
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 35
    const-string p1, "非MIUI13小窗版本,请用MIUI12适配方案进行适配"

    .line 37
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 40
    throw p0
.end method

.method public static unregisterFreeformCallback(Lmiui/app/IFreeformCallback;)V
    .registers 3

    .line 1
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_16

    .line 8
    if-eqz p0, :cond_15

    .line 10
    :try_start_9
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormManager;->unregisterFreeformCallback(Lmiui/app/IFreeformCallback;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_11

    .line 17
    goto :goto_15

    .line 18
    :catch_11
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    :cond_15
    :goto_15
    return-void

    .line 23
    :cond_16
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 25
    const-string v0, "非MIUI13小窗版本,请用MIUI12适配方案进行适配"

    .line 27
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p0
.end method

.method public static updatePinFloatingWindowPos(Landroid/graphics/Rect;I)V
    .registers 4

    .line 1
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_19

    .line 8
    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_18

    .line 14
    invoke-interface {v0, p0, p1}, Lmiui/app/IMiuiFreeFormManager;->updatePinFloatingWindowPos(Landroid/graphics/Rect;I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_11

    .line 17
    goto :goto_18

    .line 18
    :catch_11
    const-string p0, " failed getFreeFormStackInfoByStackId taskId="

    .line 20
    const-string v0, "MiuiFreeFormManager"

    .line 22
    invoke-static {p0, p1, v0}, Lf0/e;->l(Ljava/lang/String;ILjava/lang/String;)V

    .line 25
    :cond_18
    :goto_18
    return-void

    .line 26
    :cond_19
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 28
    const-string p1, "非MIUI13小窗版本,请用MIUI12适配方案进行适配"

    .line 30
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p0
.end method
