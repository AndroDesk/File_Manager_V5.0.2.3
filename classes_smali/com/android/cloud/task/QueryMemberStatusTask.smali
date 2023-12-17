.class public Lcom/android/cloud/task/QueryMemberStatusTask;
.super Lcom/android/cloud/task/WeakAsyncTask;
.source "QueryMemberStatusTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/cloud/task/WeakAsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lmiui/cloud/sync/MiCloudStatusInfo;",
        "Lcom/android/cloud/fragment/presenter/CloudFileContract$View;",
        ">;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/cloud/fragment/presenter/CloudFileContract$View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/cloud/task/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/cloud/task/QueryMemberStatusTask;->doInBackground(Lcom/android/cloud/fragment/presenter/CloudFileContract$View;[Ljava/lang/String;)Lmiui/cloud/sync/MiCloudStatusInfo;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground(Lcom/android/cloud/fragment/presenter/CloudFileContract$View;[Ljava/lang/String;)Lmiui/cloud/sync/MiCloudStatusInfo;
    .registers 5

    const/4 p1, 0x0

    :try_start_1
    invoke-static {}, Lcom/micloud/midrive/utils/CheckAccountHelper;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object p2

    iget-object p2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lcom/xiaomi/micloudsdk/cloudinfo/utils/CloudInfoUtils;->getMiCloudStatusInfo(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lmiui/cloud/sync/MiCloudStatusInfo;

    move-result-object p2
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_17

    if-eqz p2, :cond_16

    return-object p2

    :cond_16
    return-object p1

    :catch_17
    move-exception p2

    const-string v0, "query error:"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "QueryMemberStatusTask"

    invoke-static {p2, v0, v1}, La/a;->t(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-object p1
.end method
