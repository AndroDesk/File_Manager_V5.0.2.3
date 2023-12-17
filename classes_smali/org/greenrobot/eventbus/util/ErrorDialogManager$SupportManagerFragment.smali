.class public Lorg/greenrobot/eventbus/util/ErrorDialogManager$SupportManagerFragment;
.super Landroid/support/v4/app/Fragment;
.source "ErrorDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/greenrobot/eventbus/util/ErrorDialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SupportManagerFragment"
.end annotation


# instance fields
.field public argumentsForErrorDialog:Landroid/os/Bundle;

.field private eventBus:Lorg/greenrobot/eventbus/EventBus;

.field private executionScope:Ljava/lang/Object;

.field public finishAfterDialog:Z

.field private skipRegisterOnNextResume:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 4
    return-void
.end method

.method public static attachTo(Landroid/app/Activity;Ljava/lang/Object;ZLandroid/os/Bundle;)V
    .registers 7

    .line 1
    check-cast p0, Landroid/support/v4/app/FragmentActivity;

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    .line 6
    move-result-object p0

    .line 7
    const-string v0, "de.greenrobot.eventbus.error_dialog_manager"

    .line 9
    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lorg/greenrobot/eventbus/util/ErrorDialogManager$SupportManagerFragment;

    .line 15
    if-nez v1, :cond_23

    .line 17
    new-instance v1, Lorg/greenrobot/eventbus/util/ErrorDialogManager$SupportManagerFragment;

    .line 19
    invoke-direct {v1}, Lorg/greenrobot/eventbus/util/ErrorDialogManager$SupportManagerFragment;-><init>()V

    .line 22
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 33
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 36
    :cond_23
    iput-boolean p2, v1, Lorg/greenrobot/eventbus/util/ErrorDialogManager$SupportManagerFragment;->finishAfterDialog:Z

    .line 38
    iput-object p3, v1, Lorg/greenrobot/eventbus/util/ErrorDialogManager$SupportManagerFragment;->argumentsForErrorDialog:Landroid/os/Bundle;

    .line 40
    iput-object p1, v1, Lorg/greenrobot/eventbus/util/ErrorDialogManager$SupportManagerFragment;->executionScope:Ljava/lang/Object;

    .line 42
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    sget-object p1, Lorg/greenrobot/eventbus/util/ErrorDialogManager;->factory:Lorg/greenrobot/eventbus/util/ErrorDialogFragmentFactory;

    .line 6
    iget-object p1, p1, Lorg/greenrobot/eventbus/util/ErrorDialogFragmentFactory;->config:Lorg/greenrobot/eventbus/util/ErrorDialogConfig;

    .line 8
    invoke-virtual {p1}, Lorg/greenrobot/eventbus/util/ErrorDialogConfig;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lorg/greenrobot/eventbus/util/ErrorDialogManager$SupportManagerFragment;->eventBus:Lorg/greenrobot/eventbus/EventBus;

    .line 14
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 17
    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lorg/greenrobot/eventbus/util/ErrorDialogManager$SupportManagerFragment;->skipRegisterOnNextResume:Z

    .line 20
    return-void
.end method

.method public onEventMainThread(Lorg/greenrobot/eventbus/util/ThrowableFailureEvent;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lorg/greenrobot/eventbus/util/ErrorDialogManager$SupportManagerFragment;->executionScope:Ljava/lang/Object;

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
    invoke-virtual {p0}, Lorg/greenrobot/eventbus/util/ErrorDialogManager$SupportManagerFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 20
    const-string v1, "de.greenrobot.eventbus.error_dialog"

    .line 22
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroid/support/v4/app/DialogFragment;

    .line 28
    if-eqz v2, :cond_20

    .line 30
    invoke-virtual {v2}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 33
    :cond_20
    sget-object v2, Lorg/greenrobot/eventbus/util/ErrorDialogManager;->factory:Lorg/greenrobot/eventbus/util/ErrorDialogFragmentFactory;

    .line 35
    iget-boolean v3, p0, Lorg/greenrobot/eventbus/util/ErrorDialogManager$SupportManagerFragment;->finishAfterDialog:Z

    .line 37
    iget-object v4, p0, Lorg/greenrobot/eventbus/util/ErrorDialogManager$SupportManagerFragment;->argumentsForErrorDialog:Landroid/os/Bundle;

    .line 39
    invoke-virtual {v2, p1, v3, v4}, Lorg/greenrobot/eventbus/util/ErrorDialogFragmentFactory;->prepareErrorFragment(Lorg/greenrobot/eventbus/util/ThrowableFailureEvent;ZLandroid/os/Bundle;)Ljava/lang/Object;

    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Landroid/support/v4/app/DialogFragment;

    .line 45
    if-eqz p1, :cond_31

    .line 47
    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 50
    :cond_31
    return-void
.end method

.method public onPause()V
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/eventbus/util/ErrorDialogManager$SupportManagerFragment;->eventBus:Lorg/greenrobot/eventbus/EventBus;

    .line 3
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 6
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 9
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 4
    iget-boolean v0, p0, Lorg/greenrobot/eventbus/util/ErrorDialogManager$SupportManagerFragment;->skipRegisterOnNextResume:Z

    .line 6
    if-eqz v0, :cond_b

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lorg/greenrobot/eventbus/util/ErrorDialogManager$SupportManagerFragment;->skipRegisterOnNextResume:Z

    .line 11
    goto :goto_18

    .line 12
    :cond_b
    sget-object v0, Lorg/greenrobot/eventbus/util/ErrorDialogManager;->factory:Lorg/greenrobot/eventbus/util/ErrorDialogFragmentFactory;

    .line 14
    iget-object v0, v0, Lorg/greenrobot/eventbus/util/ErrorDialogFragmentFactory;->config:Lorg/greenrobot/eventbus/util/ErrorDialogConfig;

    .line 16
    invoke-virtual {v0}, Lorg/greenrobot/eventbus/util/ErrorDialogConfig;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lorg/greenrobot/eventbus/util/ErrorDialogManager$SupportManagerFragment;->eventBus:Lorg/greenrobot/eventbus/EventBus;

    .line 22
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 25
    :goto_18
    return-void
.end method
