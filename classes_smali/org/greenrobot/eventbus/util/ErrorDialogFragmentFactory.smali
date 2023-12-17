.class public abstract Lorg/greenrobot/eventbus/util/ErrorDialogFragmentFactory;
.super Ljava/lang/Object;
.source "ErrorDialogFragmentFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/greenrobot/eventbus/util/ErrorDialogFragmentFactory$Honeycomb;,
        Lorg/greenrobot/eventbus/util/ErrorDialogFragmentFactory$Support;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final config:Lorg/greenrobot/eventbus/util/ErrorDialogConfig;


# direct methods
.method public constructor <init>(Lorg/greenrobot/eventbus/util/ErrorDialogConfig;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/greenrobot/eventbus/util/ErrorDialogFragmentFactory;->config:Lorg/greenrobot/eventbus/util/ErrorDialogConfig;

    .line 6
    return-void
.end method


# virtual methods
.method public abstract createErrorFragment(Lorg/greenrobot/eventbus/util/ThrowableFailureEvent;Landroid/os/Bundle;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/eventbus/util/ThrowableFailureEvent;",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation
.end method

.method public getMessageFor(Lorg/greenrobot/eventbus/util/ThrowableFailureEvent;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object p2, p0, Lorg/greenrobot/eventbus/util/ErrorDialogFragmentFactory;->config:Lorg/greenrobot/eventbus/util/ErrorDialogConfig;

    .line 3
    iget-object p1, p1, Lorg/greenrobot/eventbus/util/ThrowableFailureEvent;->throwable:Ljava/lang/Throwable;

    .line 5
    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/util/ErrorDialogConfig;->getMessageIdForThrowable(Ljava/lang/Throwable;)I

    .line 8
    move-result p1

    .line 9
    iget-object p2, p0, Lorg/greenrobot/eventbus/util/ErrorDialogFragmentFactory;->config:Lorg/greenrobot/eventbus/util/ErrorDialogConfig;

    .line 11
    iget-object p2, p2, Lorg/greenrobot/eventbus/util/ErrorDialogConfig;->resources:Landroid/content/res/Resources;

    .line 13
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public getTitleFor(Lorg/greenrobot/eventbus/util/ThrowableFailureEvent;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object p1, p0, Lorg/greenrobot/eventbus/util/ErrorDialogFragmentFactory;->config:Lorg/greenrobot/eventbus/util/ErrorDialogConfig;

    .line 3
    iget-object p2, p1, Lorg/greenrobot/eventbus/util/ErrorDialogConfig;->resources:Landroid/content/res/Resources;

    .line 5
    iget p1, p1, Lorg/greenrobot/eventbus/util/ErrorDialogConfig;->defaultTitleId:I

    .line 7
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public prepareErrorFragment(Lorg/greenrobot/eventbus/util/ThrowableFailureEvent;ZLandroid/os/Bundle;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/eventbus/util/ThrowableFailureEvent;",
            "Z",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/greenrobot/eventbus/util/ThrowableFailureEvent;->isSuppressErrorUi()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_8
    if-eqz p3, :cond_11

    .line 11
    invoke-virtual {p3}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    .line 14
    move-result-object p3

    .line 15
    check-cast p3, Landroid/os/Bundle;

    .line 17
    goto :goto_16

    .line 18
    :cond_11
    new-instance p3, Landroid/os/Bundle;

    .line 20
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 23
    :goto_16
    const-string v0, "de.greenrobot.eventbus.errordialog.title"

    .line 25
    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_25

    .line 31
    invoke-virtual {p0, p1, p3}, Lorg/greenrobot/eventbus/util/ErrorDialogFragmentFactory;->getTitleFor(Lorg/greenrobot/eventbus/util/ThrowableFailureEvent;Landroid/os/Bundle;)Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p3, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_25
    const-string v0, "de.greenrobot.eventbus.errordialog.message"

    .line 40
    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_34

    .line 46
    invoke-virtual {p0, p1, p3}, Lorg/greenrobot/eventbus/util/ErrorDialogFragmentFactory;->getMessageFor(Lorg/greenrobot/eventbus/util/ThrowableFailureEvent;Landroid/os/Bundle;)Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {p3, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_34
    const-string v0, "de.greenrobot.eventbus.errordialog.finish_after_dialog"

    .line 55
    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_3f

    .line 61
    invoke-virtual {p3, v0, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 64
    :cond_3f
    const-string p2, "de.greenrobot.eventbus.errordialog.event_type_on_close"

    .line 66
    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_50

    .line 72
    iget-object v0, p0, Lorg/greenrobot/eventbus/util/ErrorDialogFragmentFactory;->config:Lorg/greenrobot/eventbus/util/ErrorDialogConfig;

    .line 74
    iget-object v0, v0, Lorg/greenrobot/eventbus/util/ErrorDialogConfig;->defaultEventTypeOnDialogClosed:Ljava/lang/Class;

    .line 76
    if-eqz v0, :cond_50

    .line 78
    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 81
    :cond_50
    const-string p2, "de.greenrobot.eventbus.errordialog.icon_id"

    .line 83
    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_61

    .line 89
    iget-object v0, p0, Lorg/greenrobot/eventbus/util/ErrorDialogFragmentFactory;->config:Lorg/greenrobot/eventbus/util/ErrorDialogConfig;

    .line 91
    iget v0, v0, Lorg/greenrobot/eventbus/util/ErrorDialogConfig;->defaultDialogIconId:I

    .line 93
    if-eqz v0, :cond_61

    .line 95
    invoke-virtual {p3, p2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 98
    :cond_61
    invoke-virtual {p0, p1, p3}, Lorg/greenrobot/eventbus/util/ErrorDialogFragmentFactory;->createErrorFragment(Lorg/greenrobot/eventbus/util/ThrowableFailureEvent;Landroid/os/Bundle;)Ljava/lang/Object;

    .line 101
    move-result-object p1

    .line 102
    return-object p1
.end method
