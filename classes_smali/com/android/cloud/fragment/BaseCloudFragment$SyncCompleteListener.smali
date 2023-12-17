.class Lcom/android/cloud/fragment/BaseCloudFragment$SyncCompleteListener;
.super Ljava/lang/Object;
.source "BaseCloudFragment.java"

# interfaces
.implements Lcom/android/cloud/ICloudDriveHelper$SyncCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cloud/fragment/BaseCloudFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SyncCompleteListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/cloud/fragment/BaseCloudFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Lcom/android/cloud/fragment/BaseCloudFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment$SyncCompleteListener;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/cloud/fragment/BaseCloudFragment;Lcom/android/cloud/fragment/BaseCloudFragment$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/BaseCloudFragment$SyncCompleteListener;-><init>(Lcom/android/cloud/fragment/BaseCloudFragment;)V

    return-void
.end method


# virtual methods
.method public onSyncComplete(Lcom/android/cloud/session/SyncResult;)V
    .registers 6

    iget-object v0, p1, Lcom/android/cloud/session/SyncResult;->resultCode:Lcom/android/cloud/session/SyncResult$ResultCode;

    sget-object v1, Lcom/android/cloud/session/SyncResult$ResultCode;->RESULT_CODE_SUCCESSED:Lcom/android/cloud/session/SyncResult$ResultCode;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_20

    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment$SyncCompleteListener;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    iget-object p1, p1, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    invoke-virtual {p1, v2, v3}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->updateUI(ZZ)V

    invoke-static {}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDataInited()Z

    move-result p1

    if-nez p1, :cond_76

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/android/cloud/util/CloudPreferenceUtil;->setCloudDataInited(Ljava/lang/Boolean;)V

    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment$SyncCompleteListener;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    invoke-virtual {p1}, Lcom/android/cloud/fragment/BaseCloudFragment;->onCloudDataInited()V

    goto :goto_76

    :cond_20
    iget-object v0, p1, Lcom/android/cloud/session/SyncResult;->failedReason:Lcom/android/cloud/session/SyncResult$FailedReason;

    sget-object v1, Lcom/android/cloud/session/SyncResult$FailedReason;->MI_DRIVE_UNAVAILABLE:Lcom/android/cloud/session/SyncResult$FailedReason;

    if-ne v0, v1, :cond_36

    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment$SyncCompleteListener;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    iget-object v0, v0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/cloud/CloudDriveManager;->showUnavailableAlertDialog(Landroid/app/Activity;)Lmiuix/appcompat/app/AlertDialog;

    goto :goto_6f

    :cond_36
    sget-object v1, Lcom/android/cloud/session/SyncResult$FailedReason;->NETWORK_NOT_AVAILABLE:Lcom/android/cloud/session/SyncResult$FailedReason;

    if-ne v0, v1, :cond_4b

    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment$SyncCompleteListener;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f11030f

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_6f

    :cond_4b
    const-string v0, "onSyncComplete error:"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Lcom/android/cloud/session/SyncResult;->failedReason:Lcom/android/cloud/session/SyncResult$FailedReason;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CloudFileFragment"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment$SyncCompleteListener;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f110323

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_6f
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment$SyncCompleteListener;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    iget-object p1, p1, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    invoke-virtual {p1, v2, v3}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->updateUI(ZZ)V

    :cond_76
    :goto_76
    return-void
.end method
