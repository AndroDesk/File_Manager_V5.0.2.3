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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment$1;->this$0:Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget-object p1, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment$1;->this$0:Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_88

    iget-object p1, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment$1;->this$0:Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->access$000(Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    if-nez p1, :cond_11

    goto :goto_88

    :cond_11
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment$1;->this$0:Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->access$106(Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;)I

    iget-object p1, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment$1;->this$0:Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->access$000(Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment$1;->this$0:Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->access$100(Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;)I

    move-result v0

    const v1, 0x7f1103fc

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment$1;->this$0:Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_88

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment$1;->this$0:Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_88

    :cond_42
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment$1;->this$0:Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_88

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment$1;->this$0:Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;

    invoke-virtual {v2, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment$1;->this$0:Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;

    invoke-static {v1}, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->access$100(Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment$1;->this$0:Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->access$200(Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment$1;->this$0:Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->access$200(Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_88
    :goto_88
    return-void
.end method
