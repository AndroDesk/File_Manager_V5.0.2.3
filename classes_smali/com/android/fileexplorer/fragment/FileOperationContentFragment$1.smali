.class Lcom/android/fileexplorer/fragment/FileOperationContentFragment$1;
.super Ljava/lang/Object;
.source "FileOperationContentFragment.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->login()V
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
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/FileOperationContentFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/FileOperationContentFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment$1;->this$0:Lcom/android/fileexplorer/fragment/FileOperationContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_33

    const-string v2, "booleanResult"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_33

    new-array p1, v0, [Ljava/lang/Object;

    const-string v2, "update account"

    aput-object v2, p1, v1

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment$1;->this$0:Lcom/android/fileexplorer/fragment/FileOperationContentFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/micloud/midrive/utils/CheckAccountHelper;->tryUpdateAccount(Landroid/content/Context;)Landroid/accounts/Account;

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment$1;->this$0:Lcom/android/fileexplorer/fragment/FileOperationContentFragment;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->access$202(Lcom/android/fileexplorer/fragment/FileOperationContentFragment;Landroid/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerCallback;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2a} :catch_2b

    goto :goto_33

    :catch_2b
    move-exception p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    :cond_33
    :goto_33
    return-void
.end method
