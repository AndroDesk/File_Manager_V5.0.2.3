.class Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment$MiDriveCloudUsageEmptyInnerCheckTask;
.super Lcom/micloud/midrive/task/MiDriveCloudUsageEmptyCheckTask;
.source "RevokeOrLogoutConfirmFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MiDriveCloudUsageEmptyInnerCheckTask"
.end annotation


# instance fields
.field private final mFragmentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/task/MiDriveCloudUsageEmptyCheckTask;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object p1, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment$MiDriveCloudUsageEmptyInnerCheckTask;->mFragmentRef:Ljava/lang/ref/WeakReference;

    .line 11
    return-void
.end method


# virtual methods
.method public onPostExecute(Ljava/lang/Integer;)V
    .registers 4

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment$MiDriveCloudUsageEmptyInnerCheckTask;->mFragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;

    if-eqz v0, :cond_2b

    .line 4
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_28

    goto :goto_2b

    .line 6
    :cond_28
    invoke-static {v0, p1}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->access$000(Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;Ljava/lang/Integer;)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment$MiDriveCloudUsageEmptyInnerCheckTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
