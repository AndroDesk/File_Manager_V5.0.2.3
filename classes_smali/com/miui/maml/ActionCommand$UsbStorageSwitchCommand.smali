.class Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;
.super Lcom/miui/maml/ActionCommand$NotificationReceiver;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsbStorageSwitchCommand"
.end annotation


# instance fields
.field private mConnected:Z

.field private mOnOffHelper:Lcom/miui/maml/ActionCommand$OnOffCommandHelper;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;)V
    .registers 5

    .line 1
    const-string v0, "usb_mode"

    .line 3
    const-string v1, "android.hardware.usb.action.USB_STATE"

    .line 5
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/maml/ActionCommand$NotificationReceiver;-><init>(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance p1, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;

    .line 10
    invoke-direct {p1, p2}, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;-><init>(Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;->mOnOffHelper:Lcom/miui/maml/ActionCommand$OnOffCommandHelper;

    .line 15
    return-void
.end method

.method public static synthetic access$200(Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;)Landroid/os/storage/StorageManager;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 3
    return-object p0
.end method


# virtual methods
.method public doPerform()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-static {v0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->StorageManager_isUsbMassStorageEnabled(Landroid/os/storage/StorageManager;)Z

    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;->mOnOffHelper:Lcom/miui/maml/ActionCommand$OnOffCommandHelper;

    .line 12
    iget-boolean v2, v1, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;->mIsToggle:Z

    .line 14
    if-eqz v2, :cond_12

    .line 16
    xor-int/lit8 v0, v0, 0x1

    .line 18
    goto :goto_18

    .line 19
    :cond_12
    iget-boolean v1, v1, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    .line 21
    if-ne v1, v0, :cond_17

    .line 23
    return-void

    .line 24
    :cond_17
    move v0, v1

    .line 25
    :goto_18
    const/4 v1, 0x3

    .line 26
    invoke-virtual {p0, v1}, Lcom/miui/maml/ActionCommand$StatefulActionCommand;->updateState(I)V

    .line 29
    new-instance v1, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand$1;

    .line 31
    const-string v2, "StorageSwitchThread"

    .line 33
    invoke-direct {v1, p0, v2, v0}, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand$1;-><init>(Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;Ljava/lang/String;Z)V

    .line 36
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 39
    return-void
.end method

.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .registers 6

    .line 1
    if-eqz p2, :cond_e

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "connected"

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 13
    iput-boolean v0, p0, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;->mConnected:Z

    .line 15
    :cond_e
    invoke-super {p0, p1, p2, p3}, Lcom/miui/maml/ActionCommand$NotificationReceiver;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    .line 18
    return-void
.end method

.method public update()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 3
    if-nez v0, :cond_1c

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "storage"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/os/storage/StorageManager;

    .line 17
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 19
    if-nez v0, :cond_1c

    .line 21
    const-string v0, "ActionCommand"

    .line 23
    const-string v1, "Failed to get StorageManager"

    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void

    .line 29
    :cond_1c
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 31
    invoke-static {v0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->StorageManager_isUsbMassStorageEnabled(Landroid/os/storage/StorageManager;)Z

    .line 34
    move-result v0

    .line 35
    iget-boolean v1, p0, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;->mConnected:Z

    .line 37
    if-eqz v1, :cond_2c

    .line 39
    if-eqz v0, :cond_2a

    .line 41
    const/4 v0, 0x2

    .line 42
    goto :goto_2d

    .line 43
    :cond_2a
    const/4 v0, 0x1

    .line 44
    goto :goto_2d

    .line 45
    :cond_2c
    const/4 v0, 0x0

    .line 46
    :goto_2d
    invoke-virtual {p0, v0}, Lcom/miui/maml/ActionCommand$StatefulActionCommand;->updateState(I)V

    .line 49
    return-void
.end method
