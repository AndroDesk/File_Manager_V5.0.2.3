.class public Lorg/greenrobot/eventbus/util/ErrorDialogManager;
.super Ljava/lang/Object;
.source "ErrorDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/greenrobot/eventbus/util/ErrorDialogManager$HoneycombManagerFragment;,
        Lorg/greenrobot/eventbus/util/ErrorDialogManager$SupportManagerFragment;
    }
.end annotation


# static fields
.field public static final KEY_EVENT_TYPE_ON_CLOSE:Ljava/lang/String; = "de.greenrobot.eventbus.errordialog.event_type_on_close"

.field public static final KEY_FINISH_AFTER_DIALOG:Ljava/lang/String; = "de.greenrobot.eventbus.errordialog.finish_after_dialog"

.field public static final KEY_ICON_ID:Ljava/lang/String; = "de.greenrobot.eventbus.errordialog.icon_id"

.field public static final KEY_MESSAGE:Ljava/lang/String; = "de.greenrobot.eventbus.errordialog.message"

.field public static final KEY_TITLE:Ljava/lang/String; = "de.greenrobot.eventbus.errordialog.title"

.field public static final TAG_ERROR_DIALOG:Ljava/lang/String; = "de.greenrobot.eventbus.error_dialog"

.field public static final TAG_ERROR_DIALOG_MANAGER:Ljava/lang/String; = "de.greenrobot.eventbus.error_dialog_manager"

.field public static factory:Lorg/greenrobot/eventbus/util/ErrorDialogFragmentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/eventbus/util/ErrorDialogFragmentFactory<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Ljava/lang/Object;Lorg/greenrobot/eventbus/util/ThrowableFailureEvent;)Z
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lorg/greenrobot/eventbus/util/ErrorDialogManager;->isInExecutionScope(Ljava/lang/Object;Lorg/greenrobot/eventbus/util/ThrowableFailureEvent;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static attachTo(Landroid/app/Activity;)V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lorg/greenrobot/eventbus/util/ErrorDialogManager;->attachTo(Landroid/app/Activity;ZLandroid/os/Bundle;)V

    return-void
.end method

.method public static attachTo(Landroid/app/Activity;Ljava/lang/Object;ZLandroid/os/Bundle;)V
    .registers 5

    .line 5
    sget-object v0, Lorg/greenrobot/eventbus/util/ErrorDialogManager;->factory:Lorg/greenrobot/eventbus/util/ErrorDialogFragmentFactory;

    if-eqz v0, :cond_12

    .line 6
    invoke-static {p0}, Lorg/greenrobot/eventbus/util/ErrorDialogManager;->isSupportActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 7
    invoke-static {p0, p1, p2, p3}, Lorg/greenrobot/eventbus/util/ErrorDialogManager$SupportManagerFragment;->attachTo(Landroid/app/Activity;Ljava/lang/Object;ZLandroid/os/Bundle;)V

    goto :goto_11

    .line 8
    :cond_e
    invoke-static {p0, p1, p2, p3}, Lorg/greenrobot/eventbus/util/ErrorDialogManager$HoneycombManagerFragment;->attachTo(Landroid/app/Activity;Ljava/lang/Object;ZLandroid/os/Bundle;)V

    :goto_11
    return-void

    .line 9
    :cond_12
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "You must set the static factory field to configure error dialogs for your app."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static attachTo(Landroid/app/Activity;Z)V
    .registers 3

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lorg/greenrobot/eventbus/util/ErrorDialogManager;->attachTo(Landroid/app/Activity;ZLandroid/os/Bundle;)V

    return-void
.end method

.method public static attachTo(Landroid/app/Activity;ZLandroid/os/Bundle;)V
    .registers 4

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 4
    invoke-static {p0, v0, p1, p2}, Lorg/greenrobot/eventbus/util/ErrorDialogManager;->attachTo(Landroid/app/Activity;Ljava/lang/Object;ZLandroid/os/Bundle;)V

    return-void
.end method

.method public static checkLogException(Lorg/greenrobot/eventbus/util/ThrowableFailureEvent;)V
    .registers 3

    .line 1
    sget-object v0, Lorg/greenrobot/eventbus/util/ErrorDialogManager;->factory:Lorg/greenrobot/eventbus/util/ErrorDialogFragmentFactory;

    .line 3
    iget-object v0, v0, Lorg/greenrobot/eventbus/util/ErrorDialogFragmentFactory;->config:Lorg/greenrobot/eventbus/util/ErrorDialogConfig;

    .line 5
    iget-boolean v1, v0, Lorg/greenrobot/eventbus/util/ErrorDialogConfig;->logExceptions:Z

    .line 7
    if-eqz v1, :cond_15

    .line 9
    iget-object v0, v0, Lorg/greenrobot/eventbus/util/ErrorDialogConfig;->tagForLoggingExceptions:Ljava/lang/String;

    .line 11
    if-nez v0, :cond_e

    .line 13
    sget-object v0, Lorg/greenrobot/eventbus/EventBus;->TAG:Ljava/lang/String;

    .line 15
    :cond_e
    iget-object p0, p0, Lorg/greenrobot/eventbus/util/ThrowableFailureEvent;->throwable:Ljava/lang/Throwable;

    .line 17
    const-string v1, "Error dialog manager received exception"

    .line 19
    invoke-static {v0, v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    :cond_15
    return-void
.end method

.method private static isInExecutionScope(Ljava/lang/Object;Lorg/greenrobot/eventbus/util/ThrowableFailureEvent;)Z
    .registers 2

    .line 1
    if-eqz p1, :cond_10

    .line 3
    invoke-virtual {p1}, Lorg/greenrobot/eventbus/util/ThrowableFailureEvent;->getExecutionScope()Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_10

    .line 9
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_10

    .line 15
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :cond_10
    const/4 p0, 0x1

    .line 18
    return p0
.end method

.method private static isSupportActivity(Landroid/app/Activity;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_4f

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    const-string v2, "android.support.v4.app.FragmentActivity"

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_18

    .line 23
    const/4 p0, 0x1

    .line 24
    goto :goto_4e

    .line 25
    :cond_18
    const-string v2, "com.actionbarsherlock.app"

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_45

    .line 33
    const-string v2, ".SherlockActivity"

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_39

    .line 41
    const-string v2, ".SherlockListActivity"

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_39

    .line 49
    const-string v2, ".SherlockPreferenceActivity"

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_39

    .line 57
    goto :goto_45

    .line 58
    :cond_39
    new-instance p0, Ljava/lang/RuntimeException;

    .line 60
    const-string v0, "Please use SherlockFragmentActivity. Illegal activity: "

    .line 62
    invoke-static {v0, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 69
    throw p0

    .line 70
    :cond_45
    :goto_45
    const-string v2, "android.app.Activity"

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_4

    .line 78
    const/4 p0, 0x0

    .line 79
    :goto_4e
    return p0

    .line 80
    :cond_4f
    new-instance v0, Ljava/lang/RuntimeException;

    .line 82
    const-string v1, "Illegal activity type: "

    .line 84
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object p0

    .line 99
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 102
    throw v0
.end method
