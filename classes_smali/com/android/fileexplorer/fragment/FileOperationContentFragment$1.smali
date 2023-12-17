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
.method public constructor <init>(Lcom/android/fileexplorer/fragment/FileOperationContentFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment$1;->this$0:Lcom/android/fileexplorer/fragment/FileOperationContentFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
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

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_2
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/os/Bundle;

    .line 9
    if-eqz p1, :cond_33

    .line 11
    const-string v2, "booleanResult"

    .line 13
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_33

    .line 19
    new-array p1, v0, [Ljava/lang/Object;

    .line 21
    const-string v2, "update account"

    .line 23
    aput-object v2, p1, v1

    .line 25
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 28
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment$1;->this$0:Lcom/android/fileexplorer/fragment/FileOperationContentFragment;

    .line 30
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1}, Lcom/micloud/midrive/utils/CheckAccountHelper;->tryUpdateAccount(Landroid/content/Context;)Landroid/accounts/Account;

    .line 37
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment$1;->this$0:Lcom/android/fileexplorer/fragment/FileOperationContentFragment;

    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-static {p1, v2}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->access$202(Lcom/android/fileexplorer/fragment/FileOperationContentFragment;Landroid/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerCallback;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2a} :catch_2b

    .line 43
    goto :goto_33

    .line 44
    :catch_2b
    move-exception p1

    .line 45
    new-array v0, v0, [Ljava/lang/Object;

    .line 47
    aput-object p1, v0, v1

    .line 49
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 52
    :cond_33
    :goto_33
    return-void
.end method
