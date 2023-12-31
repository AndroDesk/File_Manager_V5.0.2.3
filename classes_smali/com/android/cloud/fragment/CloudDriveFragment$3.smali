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
.method public constructor <init>(Lcom/android/cloud/fragment/CloudDriveFragment;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/cloud/fragment/CloudDriveFragment$3;->this$0:Lcom/android/cloud/fragment/CloudDriveFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 8
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 11
    iput-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment$3;->mWeakRef:Ljava/lang/ref/WeakReference;

    .line 13
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

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment$3;->mWeakRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/cloud/fragment/CloudDriveFragment;

    .line 9
    if-eqz v0, :cond_6a

    .line 11
    iget-object v1, v0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 13
    if-eqz v1, :cond_6a

    .line 15
    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_6a

    .line 25
    iget-object v1, v0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 27
    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_25

    .line 37
    goto :goto_6a

    .line 38
    :cond_25
    const/4 v1, 0x0

    .line 39
    const/4 v2, 0x1

    .line 40
    :try_start_27
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Landroid/os/Bundle;

    .line 46
    if-nez p1, :cond_39

    .line 48
    new-array p1, v2, [Ljava/lang/Object;

    .line 50
    const-string v3, "no future result"

    .line 52
    aput-object v3, p1, v1

    .line 54
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 57
    return-void

    .line 58
    :cond_39
    const-string v3, "intent"

    .line 60
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Landroid/content/Intent;

    .line 66
    if-nez p1, :cond_4d

    .line 68
    new-array p1, v2, [Ljava/lang/Object;

    .line 70
    const-string v3, "no login intent"

    .line 72
    aput-object v3, p1, v1

    .line 74
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 77
    return-void

    .line 78
    :cond_4d
    invoke-static {v0}, Lcom/android/cloud/fragment/CloudDriveFragment;->access$200(Lcom/android/cloud/fragment/CloudDriveFragment;)Landroidx/activity/result/b;

    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v3, p1}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V
    :try_end_54
    .catch Landroid/accounts/AuthenticatorException; {:try_start_27 .. :try_end_54} :catch_59
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_54} :catch_57
    .catch Landroid/accounts/OperationCanceledException; {:try_start_27 .. :try_end_54} :catch_55

    .line 85
    goto :goto_6a

    .line 86
    :catch_55
    move-exception p1

    .line 87
    goto :goto_5a

    .line 88
    :catch_57
    move-exception p1

    .line 89
    goto :goto_5a

    .line 90
    :catch_59
    move-exception p1

    .line 91
    :goto_5a
    new-array v2, v2, [Ljava/lang/Object;

    .line 93
    aput-object p1, v2, v1

    .line 95
    invoke-static {v2}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 98
    iget-object p1, v0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 100
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 107
    :cond_6a
    :goto_6a
    return-void
.end method
