.class Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment$1;
.super Landroid/os/Handler;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment$1;->this$0:Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;

    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment$1;->this$0:Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iget-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment$1;->this$0:Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;

    .line 12
    invoke-static {p1}, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->access$006(Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;)I

    .line 15
    iget-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment$1;->this$0:Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;

    .line 17
    invoke-static {p1}, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->access$100(Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;)Lmiuix/appcompat/app/AlertDialog;

    .line 20
    move-result-object p1

    .line 21
    const/4 v0, -0x2

    .line 22
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 25
    move-result-object p1

    .line 26
    iget-object v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment$1;->this$0:Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;

    .line 28
    invoke-static {v0}, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->access$000(Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;)I

    .line 31
    move-result v0

    .line 32
    const v1, 0x7f110489

    .line 35
    if-nez v0, :cond_3a

    .line 37
    iget-object v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment$1;->this$0:Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;

    .line 39
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_80

    .line 45
    iget-object v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment$1;->this$0:Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;

    .line 47
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    const/4 v0, 0x1

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 58
    goto :goto_80

    .line 59
    :cond_3a
    iget-object v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment$1;->this$0:Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;

    .line 61
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_80

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    iget-object v2, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment$1;->this$0:Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;

    .line 74
    invoke-virtual {v2, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, "("

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment$1;->this$0:Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;

    .line 88
    invoke-static {v1}, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->access$000(Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;)I

    .line 91
    move-result v1

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    const-string v1, "s)"

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment$1;->this$0:Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;

    .line 109
    invoke-static {p1}, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->access$200(Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;)Landroid/os/Handler;

    .line 112
    move-result-object p1

    .line 113
    const/16 v0, 0x64

    .line 115
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 118
    iget-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment$1;->this$0:Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;

    .line 120
    invoke-static {p1}, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->access$200(Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;)Landroid/os/Handler;

    .line 123
    move-result-object p1

    .line 124
    const-wide/16 v1, 0x3e8

    .line 126
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 129
    :cond_80
    :goto_80
    return-void
.end method
