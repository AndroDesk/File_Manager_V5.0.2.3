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
.method private constructor <init>(Lcom/android/cloud/fragment/BaseCloudFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment$SyncCompleteListener;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/cloud/fragment/BaseCloudFragment;Lcom/android/cloud/fragment/BaseCloudFragment$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/BaseCloudFragment$SyncCompleteListener;-><init>(Lcom/android/cloud/fragment/BaseCloudFragment;)V

    return-void
.end method


# virtual methods
.method public onSyncComplete(Lcom/android/cloud/session/SyncResult;)V
    .registers 6

    .line 1
    iget-object v0, p1, Lcom/android/cloud/session/SyncResult;->resultCode:Lcom/android/cloud/session/SyncResult$ResultCode;

    .line 3
    sget-object v1, Lcom/android/cloud/session/SyncResult$ResultCode;->RESULT_CODE_SUCCESSED:Lcom/android/cloud/session/SyncResult$ResultCode;

    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-ne v0, v1, :cond_20

    .line 9
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment$SyncCompleteListener;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    .line 11
    iget-object p1, p1, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    .line 13
    invoke-virtual {p1, v2, v3}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->updateUI(ZZ)V

    .line 16
    invoke-static {}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDataInited()Z

    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_76

    .line 22
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 24
    invoke-static {p1}, Lcom/android/cloud/util/CloudPreferenceUtil;->setCloudDataInited(Ljava/lang/Boolean;)V

    .line 27
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment$SyncCompleteListener;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    .line 29
    invoke-virtual {p1}, Lcom/android/cloud/fragment/BaseCloudFragment;->onCloudDataInited()V

    .line 32
    goto :goto_76

    .line 33
    :cond_20
    iget-object v0, p1, Lcom/android/cloud/session/SyncResult;->failedReason:Lcom/android/cloud/session/SyncResult$FailedReason;

    .line 35
    sget-object v1, Lcom/android/cloud/session/SyncResult$FailedReason;->MI_DRIVE_UNAVAILABLE:Lcom/android/cloud/session/SyncResult$FailedReason;

    .line 37
    if-ne v0, v1, :cond_36

    .line 39
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    .line 42
    move-result-object p1

    .line 43
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment$SyncCompleteListener;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    .line 45
    iget-object v0, v0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 47
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1, v0}, Lcom/android/cloud/CloudDriveManager;->showUnavailableAlertDialog(Landroid/app/Activity;)Lmiuix/appcompat/app/AlertDialog;

    .line 54
    goto :goto_6f

    .line 55
    :cond_36
    sget-object v1, Lcom/android/cloud/session/SyncResult$FailedReason;->NETWORK_NOT_AVAILABLE:Lcom/android/cloud/session/SyncResult$FailedReason;

    .line 57
    if-ne v0, v1, :cond_4b

    .line 59
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment$SyncCompleteListener;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    .line 61
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 64
    move-result-object p1

    .line 65
    const v0, 0x7f11030f

    .line 68
    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 75
    goto :goto_6f

    .line 76
    :cond_4b
    const-string v0, "onSyncComplete error:"

    .line 78
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    move-result-object v0

    .line 82
    iget-object p1, p1, Lcom/android/cloud/session/SyncResult;->failedReason:Lcom/android/cloud/session/SyncResult$FailedReason;

    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object p1

    .line 91
    const-string v0, "CloudFileFragment"

    .line 93
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment$SyncCompleteListener;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    .line 98
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 101
    move-result-object p1

    .line 102
    const v0, 0x7f110323

    .line 105
    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 112
    :goto_6f
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment$SyncCompleteListener;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    .line 114
    iget-object p1, p1, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    .line 116
    invoke-virtual {p1, v2, v3}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->updateUI(ZZ)V

    .line 119
    :cond_76
    :goto_76
    return-void
.end method
