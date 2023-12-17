.class Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$1;
.super Ljava/lang/Object;
.source "CloudFileOperationManager.java"

# interfaces
.implements Lcom/android/fileexplorer/view/TextInputDialog$OnFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->createFolder(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

.field public final synthetic val$parentId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$1;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    .line 3
    iput-object p2, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$1;->val$parentId:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static synthetic a(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$1;Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$1;->lambda$onFinish$1(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$1;Lcom/micloud/midrive/server/protocol/CreateFolderResponse;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$1;->lambda$onFinish$0(Lcom/micloud/midrive/server/protocol/CreateFolderResponse;)V

    return-void
.end method

.method private synthetic lambda$onFinish$0(Lcom/micloud/midrive/server/protocol/CreateFolderResponse;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$1;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    .line 3
    invoke-static {v0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$500(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Lcom/micloud/midrive/server/protocol/CreateFolderResponse;)V

    .line 6
    return-void
.end method

.method private synthetic lambda$onFinish$1(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$1;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    .line 3
    invoke-static {v0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$400(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Ljava/lang/Throwable;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onFinish(Ljava/lang/String;)Z
    .registers 8

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/StringUtils;->isNameIllegal(Ljava/lang/String;Z)Z

    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_9

    .line 9
    return v2

    .line 10
    :cond_9
    iget-object v1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$1;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    .line 12
    invoke-static {v1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$000(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    .line 15
    move-result-object v1

    .line 16
    const v3, 0x7f11030e

    .line 19
    invoke-interface {v1, v0, v3}, Lcom/android/cloud/fragment/presenter/CloudFileContract$View;->showLoading(ZI)V

    .line 22
    iget-object v1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$1;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    .line 24
    invoke-static {v1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$200(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Lcom/android/cloud/fragment/model/CloudFileOperateModel;

    .line 27
    move-result-object v1

    .line 28
    iget-object v3, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$1;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    .line 30
    invoke-static {v3}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$100(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 33
    move-result-object v3

    .line 34
    invoke-interface {v3}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 37
    move-result-object v3

    .line 38
    iget-object v4, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$1;->val$parentId:Ljava/lang/String;

    .line 40
    invoke-virtual {v1, v3, v4, p1}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->requestCreateFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Li2/e;

    .line 43
    move-result-object p1

    .line 44
    new-instance v1, Lcom/android/cloud/fragment/presenter/j;

    .line 46
    invoke-direct {v1, p0, v2}, Lcom/android/cloud/fragment/presenter/j;-><init>(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$1;I)V

    .line 49
    new-instance v2, Lcom/android/cloud/fragment/presenter/j;

    .line 51
    invoke-direct {v2, p0, v0}, Lcom/android/cloud/fragment/presenter/j;-><init>(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$1;I)V

    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    sget-object v3, Ln2/a;->b:Ln2/a$a;

    .line 59
    sget-object v4, Ln2/a;->c:Ln2/a$b;

    .line 61
    new-instance v5, Lio/reactivex/internal/observers/LambdaObserver;

    .line 63
    invoke-direct {v5, v1, v2, v3, v4}, Lio/reactivex/internal/observers/LambdaObserver;-><init>(Ll2/c;Ll2/c;Ll2/a;Ll2/c;)V

    .line 66
    invoke-virtual {p1, v5}, Li2/e;->c(Li2/h;)V

    .line 69
    iget-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$1;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    .line 71
    invoke-static {p1, v5}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$300(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Lk2/b;)V

    .line 74
    return v0
.end method
