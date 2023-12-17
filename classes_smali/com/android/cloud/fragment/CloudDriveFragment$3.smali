.class Lcom/android/cloud/fragment/CloudDriveFragment$3;
.super Ljava/lang/Object;
.source "CloudDriveFragment.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cloud/fragment/CloudDriveFragment;->login()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final mWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/cloud/fragment/CloudDriveFragment;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/cloud/fragment/CloudDriveFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/cloud/fragment/CloudDriveFragment;)V
    .registers 3

    iput-object p1, p0, Lcom/android/cloud/fragment/CloudDriveFragment$3;->this$0:Lcom/android/cloud/fragment/CloudDriveFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment$3;->mWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment$3;->mWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cloud/fragment/CloudDriveFragment;

    if-eqz v0, :cond_6a

    iget-object v1, v0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    if-eqz v1, :cond_6a

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_6a

    iget-object v1, v0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_6a

    :cond_25
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_27
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    if-nez p1, :cond_39

    new-array p1, v2, [Ljava/lang/Object;

    const-string v3, "no future result"

    aput-object v3, p1, v1

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    return-void

    :cond_39
    const-string v3, "intent"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    if-nez p1, :cond_4d

    new-array p1, v2, [Ljava/lang/Object;

    const-string v3, "no login intent"

    aput-object v3, p1, v1

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    return-void

    :cond_4d
    invoke-static {v0}, Lcom/android/cloud/fragment/CloudDriveFragment;->access$200(Lcom/android/cloud/fragment/CloudDriveFragment;)Landroidx/activity/result/b;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V
    :try_end_54
    .catch Landroid/accounts/AuthenticatorException; {:try_start_27 .. :try_end_54} :catch_59
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_54} :catch_57
    .catch Landroid/accounts/OperationCanceledException; {:try_start_27 .. :try_end_54} :catch_55

    goto :goto_6a

    :catch_55
    move-exception p1

    goto :goto_5a

    :catch_57
    move-exception p1

    goto :goto_5a

    :catch_59
    move-exception p1

    :goto_5a
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_6a
    :goto_6a
    return-void
.end method
