.class public Lorg/greenrobot/eventbus/util/ErrorDialogManager$HoneycombManagerFragment;
.super Landroid/app/Fragment;
.source "ErrorDialogManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/greenrobot/eventbus/util/ErrorDialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HoneycombManagerFragment"
.end annotation


# instance fields
.field public argumentsForErrorDialog:Landroid/os/Bundle;

.field private eventBus:Lorg/greenrobot/eventbus/EventBus;

.field private executionScope:Ljava/lang/Object;

.field public finishAfterDialog:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 4
    return-void
.end method

.method public static attachTo(Landroid/app/Activity;Ljava/lang/Object;ZLandroid/os/Bundle;)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "de.greenrobot.eventbus.error_dialog_manager"

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lorg/greenrobot/eventbus/util/ErrorDialogManager$HoneycombManagerFragment;

    .line 13
    if-nez v1, :cond_21

    .line 15
    new-instance v1, Lorg/greenrobot/eventbus/util/ErrorDialogManager$HoneycombManagerFragment;

    .line 17
    invoke-direct {v1}, Lorg/greenrobot/eventbus/util/ErrorDialogManager$HoneycombManagerFragment;-><init>()V

    .line 20
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2, v1, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 31
    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 34
    :cond_21
    iput-boolean p2, v1, Lorg/greenrobot/eventbus/util/ErrorDialogManager$HoneycombManagerFragment;->finishAfterDialog:Z

    .line 36
    iput-object p3, v1, Lorg/greenrobot/eventbus/util/ErrorDialogManager$HoneycombManagerFragment;->argumentsForErrorDialog:Landroid/os/Bundle;

    .line 38
    iput-object p1, v1, Lorg/greenrobot/eventbus/util/ErrorDialogManager$HoneycombManagerFragment;->executionScope:Ljava/lang/Object;

    .line 40
    return-void
.end method


# virtual methods
.method public onEventMainThread(Lorg/greenrobot/eventbus/util/ThrowableFailureEvent;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lorg/greenrobot/eventbus/util/ErrorDialogManager$HoneycombManagerFragment;->executionScope:Ljava/lang/Object;

    .line 3
    invoke-static {v0, p1}, Lorg/greenrobot/eventbus/util/ErrorDialogManager;->access$000(Ljava/lang/Object;Lorg/greenrobot/eventbus/util/ThrowableFailureEvent;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    invoke-static {p1}, Lorg/greenrobot/eventbus/util/ErrorDialogManager;->checkLogException(Lorg/greenrobot/eventbus/util/ThrowableFailureEvent;)V

    .line 13
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 20
    const-string v1, "de.greenrobot.eventbus.error_dialog"

    .line 22
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroid/app/DialogFragment;

    .line 28
    if-eqz v2, :cond_20

    .line 30
    invoke-virtual {v2}, Landroid/app/DialogFragment;->dismiss()V

    .line 33
    :cond_20
    sget-object v2, Lorg/greenrobot/eventbus/util/ErrorDialogManager;->factory:Lorg/greenrobot/eventbus/util/ErrorDialogFragmentFactory;

    .line 35
    iget-boolean v3, p0, Lorg/greenrobot/eventbus/util/ErrorDialogManager$HoneycombManagerFragment;->finishAfterDialog:Z

    .line 37
    iget-object v4, p0, Lorg/greenrobot/eventbus/util/ErrorDialogManager$HoneycombManagerFragment;->argumentsForErrorDialog:Landroid/os/Bundle;

    .line 39
    invoke-virtual {v2, p1, v3, v4}, Lorg/greenrobot/eventbus/util/ErrorDialogFragmentFactory;->prepareErrorFragment(Lorg/greenrobot/eventbus/util/ThrowableFailureEvent;ZLandroid/os/Bundle;)Ljava/lang/Object;

    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Landroid/app/DialogFragment;

    .line 45
    if-eqz p1, :cond_31

    .line 47
    invoke-virtual {p1, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 50
    :cond_31
    return-void
.end method

.method public onPause()V
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/eventbus/util/ErrorDialogManager$HoneycombManagerFragment;->eventBus:Lorg/greenrobot/eventbus/EventBus;

    .line 3
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 6
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 9
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 4
    sget-object v0, Lorg/greenrobot/eventbus/util/ErrorDialogManager;->factory:Lorg/greenrobot/eventbus/util/ErrorDialogFragmentFactory;

    .line 6
    iget-object v0, v0, Lorg/greenrobot/eventbus/util/ErrorDialogFragmentFactory;->config:Lorg/greenrobot/eventbus/util/ErrorDialogConfig;

    .line 8
    invoke-virtual {v0}, Lorg/greenrobot/eventbus/util/ErrorDialogConfig;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lorg/greenrobot/eventbus/util/ErrorDialogManager$HoneycombManagerFragment;->eventBus:Lorg/greenrobot/eventbus/EventBus;

    .line 14
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 17
    return-void
.end method
