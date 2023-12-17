.class Lcom/android/cloud/fragment/CloudDriveFragment$4;
.super Ljava/lang/Object;
.source "CloudDriveFragment.java"

# interfaces
.implements Landroidx/activity/result/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cloud/fragment/CloudDriveFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/activity/result/a<",
        "Landroidx/activity/result/ActivityResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/cloud/fragment/CloudDriveFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/cloud/fragment/CloudDriveFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/cloud/fragment/CloudDriveFragment$4;->this$0:Lcom/android/cloud/fragment/CloudDriveFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(Landroidx/activity/result/ActivityResult;)V
    .registers 4

    iget-object p1, p0, Lcom/android/cloud/fragment/CloudDriveFragment$4;->this$0:Lcom/android/cloud/fragment/CloudDriveFragment;

    iget-object p1, p1, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    if-eqz p1, :cond_50

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_50

    iget-object p1, p0, Lcom/android/cloud/fragment/CloudDriveFragment$4;->this$0:Lcom/android/cloud/fragment/CloudDriveFragment;

    iget-object p1, p1, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_1f

    goto :goto_50

    :cond_1f
    iget-object p1, p0, Lcom/android/cloud/fragment/CloudDriveFragment$4;->this$0:Lcom/android/cloud/fragment/CloudDriveFragment;

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/micloud/midrive/utils/CheckAccountHelper;->tryUpdateAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p1, Lcom/android/cloud/fragment/BaseCloudFragment;->mAccount:Landroid/accounts/Account;

    iget-object p1, p0, Lcom/android/cloud/fragment/CloudDriveFragment$4;->this$0:Lcom/android/cloud/fragment/CloudDriveFragment;

    iget-object p1, p1, Lcom/android/cloud/fragment/BaseCloudFragment;->mAccount:Landroid/accounts/Account;

    if-nez p1, :cond_46

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "CloudDriveFragment"

    aput-object v1, p1, v0

    const/4 v0, 0x1

    const-string v1, "login failed"

    aput-object v1, p1, v0

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logd([Ljava/lang/Object;)V

    return-void

    :cond_46
    iget-object p1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/cloud/util/CloudPreferenceUtil;->setCloudAccountName(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/cloud/fragment/CloudDriveFragment$4;->this$0:Lcom/android/cloud/fragment/CloudDriveFragment;

    invoke-static {p1}, Lcom/android/cloud/fragment/CloudDriveFragment;->access$000(Lcom/android/cloud/fragment/CloudDriveFragment;)V

    :cond_50
    :goto_50
    return-void
.end method

.method public bridge synthetic onActivityResult(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-virtual {p0, p1}, Lcom/android/cloud/fragment/CloudDriveFragment$4;->onActivityResult(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method
