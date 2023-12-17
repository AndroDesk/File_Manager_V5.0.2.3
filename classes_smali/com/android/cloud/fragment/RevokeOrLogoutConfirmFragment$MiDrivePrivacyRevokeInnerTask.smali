.class Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment$MiDrivePrivacyRevokeInnerTask;
.super Lcom/micloud/midrive/privacy/MiDrivePrivacyRevokeTask;
.source "RevokeOrLogoutConfirmFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MiDrivePrivacyRevokeInnerTask"
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

    invoke-direct {p0, p1}, Lcom/micloud/midrive/privacy/MiDrivePrivacyRevokeTask;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment$MiDrivePrivacyRevokeInnerTask;->mFragmentRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onPostExecute(Ljava/lang/Boolean;)V
    .registers 7

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment$MiDrivePrivacyRevokeInnerTask;->mFragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;

    if-eqz v0, :cond_55

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_55

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_55

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_28

    goto :goto_55

    :cond_28
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "RevokeOrLogoutConfirmFragment"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is privacy revoke success = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logd([Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_50

    const-string p1, "action_all_task_done"

    goto :goto_52

    :cond_50
    const-string p1, "action_toast_exception"

    :goto_52
    invoke-static {v0, p1}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->access$100(Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;Ljava/lang/String;)V

    :cond_55
    :goto_55
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment$MiDrivePrivacyRevokeInnerTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
