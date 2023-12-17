.class Lcom/android/cloud/fragment/BaseCloudFragment$3;
.super Ljava/lang/Object;
.source "BaseCloudFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cloud/fragment/BaseCloudFragment;->initListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/cloud/fragment/BaseCloudFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/cloud/fragment/BaseCloudFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment$3;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnterPrivate()V
    .registers 1

    return-void
.end method

.method public onLoadMore()V
    .registers 1

    return-void
.end method

.method public onRefresh()V
    .registers 5

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment$3;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    iget-object v1, v0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/cloud/fragment/BaseCloudFragment$3;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    iget-object v3, v2, Lcom/android/cloud/fragment/BaseCloudFragment;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Lcom/android/cloud/fragment/BaseCloudFragment;->mSyncListener:Lcom/android/cloud/fragment/BaseCloudFragment$SyncCompleteListener;

    invoke-virtual {v1, v0, v3, v2}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->syncLastestData(Landroid/content/Context;Landroid/accounts/Account;Lcom/android/cloud/ICloudDriveHelper$SyncCompleteListener;)V

    return-void
.end method
