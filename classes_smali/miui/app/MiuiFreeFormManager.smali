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

    new-instance v0, Lmiui/app/MiuiFreeFormManager$1;

    invoke-direct {v0}, Lmiui/app/MiuiFreeFormManager$1;-><init>()V

    sput-object v0, Lmiui/app/MiuiFreeFormManager;->IMiuiFreeFormManagerSingleton:Landroid/util/Singleton;

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

    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_19

    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormManager;->getAllFreeFormStackInfosOnDisplay(I)Ljava/util/List;

    move-result-object p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    const-string v0, " failed getAllFreeFormStackInfosOnDisplay displayId="

    const-string v1, "MiuiFreeFormManager"

    invoke-static {v0, p0, v1}, Lf0/e;->l(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_19
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "非MIUI13小窗版本,请用MIUI12适配方案进行适配"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

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

    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1f

    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormManager;->getAllPinedFreeFormStackInfosOnDisplay(I)Ljava/util/List;

    move-result-object p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    const-string v0, " failed getAllFreeFormStackInfosOnDisplay displayId="

    const-string v1, "MiuiFreeFormManager"

    invoke-static {v0, p0, v1}, Lf0/e;->l(Ljava/lang/String;ILjava/lang/String;)V

    :cond_19
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_1f
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "非MIUI13小窗版本,请用MIUI12适配方案进行适配"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getFreeFormStackInfoByActivity(Landroid/app/Activity;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    .registers 5

    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_45

    :try_start_7
    const-class v0, Landroid/app/Activity;

    const-string v1, "getActivityToken"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    if-eqz v0, :cond_2d

    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lmiui/app/IMiuiFreeFormManager;->getFreeFormStackInfoByActivity(Landroid/os/IBinder;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    move-result-object p0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_28} :catch_29

    return-object p0

    :catch_29
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " failed getFreeFormStackInfo view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MiuiFreeFormManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_45
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "非MIUI13小窗版本,请用MIUI12适配方案进行适配"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getFreeFormStackInfoByStackId(I)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    .registers 3

    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_19

    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormManager;->getFreeFormStackInfoByStackId(I)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    move-result-object p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    const-string v0, " failed getFreeFormStackInfoByStackId stackId="

    const-string v1, "MiuiFreeFormManager"

    invoke-static {v0, p0, v1}, Lf0/e;->l(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_19
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "非MIUI13小窗版本,请用MIUI12适配方案进行适配"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getFreeFormStackInfoByView(Landroid/view/View;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    .registers 6

    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4d

    const/4 v0, 0x0

    :try_start_8
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v2

    invoke-interface {v2, v1}, Lmiui/app/IMiuiFreeFormManager;->getFreeFormStackInfoByWindow(Landroid/os/IBinder;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    move-result-object p0

    return-object p0

    :cond_17
    const-class v1, Landroid/view/View;

    const-string v2, "getAttachedActivity"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_35

    invoke-static {v1}, Lmiui/app/MiuiFreeFormManager;->getFreeFormStackInfoByActivity(Landroid/app/Activity;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    move-result-object p0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_34} :catch_36

    return-object p0

    :cond_35
    return-object v0

    :catch_36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " failed getFreeFormStackInfo view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MiuiFreeFormManager"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_4d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "非MIUI13小窗版本,请用MIUI12适配方案进行适配"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getMaxMiuiFreeFormStackCountForFlashBack(Ljava/lang/String;Z)I
    .registers 3

    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    if-eqz v0, :cond_16

    :try_start_6
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lmiui/app/IMiuiFreeFormManager;->getMaxMiuiFreeFormStackCountForFlashBack(Ljava/lang/String;Z)I

    move-result p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_f

    return p0

    :catch_f
    const-string p0, "MiuiFreeFormManager"

    const-string p1, " failed getMaxMiuiFreeFormStackCountForFlashBack "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static getMiuiFreeformStackPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "freeform_package_name"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "非MIUI12小窗版本,请用MIUI13适配方案进行适配"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getMiuiFreeformStackShowState(Landroid/content/Context;)I
    .registers 3

    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x1

    const-string v1, "freeform_window_state"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_13
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "非MIUI12小窗版本,请用MIUI13适配方案进行适配"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getMiuiFreeformVersion()I
    .registers 1

    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    return v0

    :cond_8
    const/4 v0, 0x2

    return v0
.end method

.method private static getService()Lmiui/app/IMiuiFreeFormManager;
    .registers 1

    :try_start_0
    sget-object v0, Lmiui/app/MiuiFreeFormManager;->IMiuiFreeFormManagerSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/IMiuiFreeFormManager;
    :try_end_8
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public static hidePinFloatingWindow(I)V
    .registers 3

    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_19

    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormManager;->hidePinFloatingWindow(I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_11

    goto :goto_18

    :catch_11
    const-string v0, " failed hidePinFloatingWindow stackId="

    const-string v1, "MiuiFreeFormManager"

    invoke-static {v0, p0, v1}, Lf0/e;->l(Ljava/lang/String;ILjava/lang/String;)V

    :cond_18
    :goto_18
    return-void

    :cond_19
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "非MIUI13小窗版本,请用MIUI12适配方案进行适配"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isSupportPin()Z
    .registers 2

    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1b

    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-interface {v0}, Lmiui/app/IMiuiFreeFormManager;->isSupportPin()Z

    move-result v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_12

    return v0

    :catch_12
    const-string v0, "MiuiFreeFormManager"

    const-string v1, " failed isSuppoertPin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    const/4 v0, 0x0

    return v0

    :cond_1b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "非MIUI13小窗版本,请用MIUI12适配方案进行适配"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static registerFreeformCallback(Lmiui/app/IFreeformCallback;)V
    .registers 3

    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    if-eqz p0, :cond_15

    :try_start_9
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormManager;->registerFreeformCallback(Lmiui/app/IFreeformCallback;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_11

    goto :goto_15

    :catch_11
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_15
    :goto_15
    return-void

    :cond_16
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "非MIUI13小窗版本,请用MIUI12适配方案进行适配"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static unPinFloatingWindow(Landroid/graphics/Rect;IFFZ)Z
    .registers 13

    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_20

    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v2

    if-eqz v2, :cond_1e

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-interface/range {v2 .. v7}, Lmiui/app/IMiuiFreeFormManager;->unPinFloatingWindow(Landroid/graphics/Rect;IFFZ)Z

    move-result p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_16} :catch_17

    return p0

    :catch_17
    const-string p0, " failed getFreeFormStackInfoByStackId stackId="

    const-string p2, "MiuiFreeFormManager"

    invoke-static {p0, p1, p2}, Lf0/e;->l(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1e
    const/4 p0, 0x0

    return p0

    :cond_20
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "非MIUI13小窗版本,请用MIUI12适配方案进行适配"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static unregisterFreeformCallback(Lmiui/app/IFreeformCallback;)V
    .registers 3

    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    if-eqz p0, :cond_15

    :try_start_9
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormManager;->unregisterFreeformCallback(Lmiui/app/IFreeformCallback;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_11

    goto :goto_15

    :catch_11
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_15
    :goto_15
    return-void

    :cond_16
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "非MIUI13小窗版本,请用MIUI12适配方案进行适配"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static updatePinFloatingWindowPos(Landroid/graphics/Rect;I)V
    .registers 4

    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_19

    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-interface {v0, p0, p1}, Lmiui/app/IMiuiFreeFormManager;->updatePinFloatingWindowPos(Landroid/graphics/Rect;I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_11

    goto :goto_18

    :catch_11
    const-string p0, " failed getFreeFormStackInfoByStackId taskId="

    const-string v0, "MiuiFreeFormManager"

    invoke-static {p0, p1, v0}, Lf0/e;->l(Ljava/lang/String;ILjava/lang/String;)V

    :cond_18
    :goto_18
    return-void

    :cond_19
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "非MIUI13小窗版本,请用MIUI12适配方案进行适配"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
