.class Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand$1;
.super Ljava/lang/Thread;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;->doPerform()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;

.field public final synthetic val$_on:Z


# direct methods
.method public constructor <init>(Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;Ljava/lang/String;Z)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand$1;->this$0:Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;

    .line 3
    iput-boolean p3, p0, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand$1;->val$_on:Z

    .line 5
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand$1;->val$_on:Z

    .line 3
    if-eqz v0, :cond_e

    .line 5
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand$1;->this$0:Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;

    .line 7
    invoke-static {v0}, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;->access$200(Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;)Landroid/os/storage/StorageManager;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->StorageManager_enableUsbMassStorage(Landroid/os/storage/StorageManager;)V

    .line 14
    goto :goto_17

    .line 15
    :cond_e
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand$1;->this$0:Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;

    .line 17
    invoke-static {v0}, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;->access$200(Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;)Landroid/os/storage/StorageManager;

    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->StorageManager_disableUsbMassStorage(Landroid/os/storage/StorageManager;)V

    .line 24
    :goto_17
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand$1;->this$0:Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;

    .line 26
    iget-boolean v1, p0, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand$1;->val$_on:Z

    .line 28
    if-eqz v1, :cond_1f

    .line 30
    const/4 v1, 0x2

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    const/4 v1, 0x1

    .line 33
    :goto_20
    invoke-virtual {v0, v1}, Lcom/miui/maml/ActionCommand$StatefulActionCommand;->updateState(I)V

    .line 36
    return-void
.end method
