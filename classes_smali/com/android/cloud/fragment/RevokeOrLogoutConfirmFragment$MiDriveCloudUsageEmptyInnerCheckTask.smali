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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/micloud/midrive/task/MiDriveCloudUsageEmptyCheckTask;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment$MiDriveCloudUsageEmptyInnerCheckTask;->mFragmentRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onPostExecute(Ljava/lang/Integer;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment$MiDriveCloudUsageEmptyInnerCheckTask;->mFragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_2b

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

    :cond_28
    invoke-static {v0, p1}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->access$000(Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;Ljava/lang/Integer;)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment$MiDriveCloudUsageEmptyInnerCheckTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
