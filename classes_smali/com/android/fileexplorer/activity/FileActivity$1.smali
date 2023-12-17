.class Lcom/android/fileexplorer/activity/FileActivity$1;
.super Ljava/lang/Object;
.source "FileActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/activity/FileActivity;->login()V
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
.field public final synthetic this$0:Lcom/android/fileexplorer/activity/FileActivity;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/activity/FileActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/activity/FileActivity$1;->this$0:Lcom/android/fileexplorer/activity/FileActivity;

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
    if-eqz p1, :cond_35

    .line 11
    const-string v2, "booleanResult"

    .line 13
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_35

    .line 19
    new-array p1, v0, [Ljava/lang/Object;

    .line 21
    const-string v2, "update account"

    .line 23
    aput-object v2, p1, v1

    .line 25
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 28
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1}, Lcom/micloud/midrive/utils/CheckAccountHelper;->tryUpdateAccount(Landroid/content/Context;)Landroid/accounts/Account;

    .line 39
    iget-object p1, p0, Lcom/android/fileexplorer/activity/FileActivity$1;->this$0:Lcom/android/fileexplorer/activity/FileActivity;

    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-static {p1, v2}, Lcom/android/fileexplorer/activity/FileActivity;->access$202(Lcom/android/fileexplorer/activity/FileActivity;Landroid/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerCallback;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2c} :catch_2d

    .line 45
    goto :goto_35

    .line 46
    :catch_2d
    move-exception p1

    .line 47
    new-array v0, v0, [Ljava/lang/Object;

    .line 49
    aput-object p1, v0, v1

    .line 51
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 54
    :cond_35
    :goto_35
    return-void
.end method
