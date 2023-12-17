.class Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment$1;
.super Landroid/os/Handler;
.source "ExtendServiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment$1;->this$0:Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;

    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment$1;->this$0:Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_88

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment$1;->this$0:Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;

    .line 11
    invoke-static {p1}, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->access$000(Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;)Lmiuix/appcompat/app/AlertDialog;

    .line 14
    move-result-object p1

    .line 15
    if-nez p1, :cond_11

    .line 17
    goto :goto_88

    .line 18
    :cond_11
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment$1;->this$0:Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;

    .line 20
    invoke-static {p1}, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->access$106(Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;)I

    .line 23
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment$1;->this$0:Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;

    .line 25
    invoke-static {p1}, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->access$000(Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;)Lmiuix/appcompat/app/AlertDialog;

    .line 28
    move-result-object p1

    .line 29
    const/4 v0, -0x2

    .line 30
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 33
    move-result-object p1

    .line 34
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment$1;->this$0:Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;

    .line 36
    invoke-static {v0}, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->access$100(Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;)I

    .line 39
    move-result v0

    .line 40
    const v1, 0x7f1103fc

    .line 43
    if-nez v0, :cond_42

    .line 45
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment$1;->this$0:Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;

    .line 47
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_88

    .line 53
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment$1;->this$0:Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;

    .line 55
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    const/4 v0, 0x1

    .line 63
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 66
    goto :goto_88

    .line 67
    :cond_42
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment$1;->this$0:Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;

    .line 69
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_88

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    .line 77
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    iget-object v2, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment$1;->this$0:Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;

    .line 82
    invoke-virtual {v2, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string v1, "("

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-object v1, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment$1;->this$0:Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;

    .line 96
    invoke-static {v1}, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->access$100(Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;)I

    .line 99
    move-result v1

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, "s)"

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment$1;->this$0:Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;

    .line 117
    invoke-static {p1}, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->access$200(Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;)Landroid/os/Handler;

    .line 120
    move-result-object p1

    .line 121
    const/16 v0, 0x64

    .line 123
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 126
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment$1;->this$0:Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;

    .line 128
    invoke-static {p1}, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->access$200(Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;)Landroid/os/Handler;

    .line 131
    move-result-object p1

    .line 132
    const-wide/16 v1, 0x3e8

    .line 134
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 137
    :cond_88
    :goto_88
    return-void
.end method
