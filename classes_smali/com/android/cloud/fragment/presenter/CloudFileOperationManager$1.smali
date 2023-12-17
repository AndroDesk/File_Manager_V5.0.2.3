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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$1;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    iput-object p2, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$1;->val$parentId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$1;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    invoke-static {v0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$500(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Lcom/micloud/midrive/server/protocol/CreateFolderResponse;)V

    return-void
.end method

.method private synthetic lambda$onFinish$1(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$1;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    invoke-static {v0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$400(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public onFinish(Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/StringUtils;->isNameIllegal(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$1;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    invoke-static {v1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$000(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    move-result-object v1

    const v3, 0x7f11030e

    invoke-interface {v1, v0, v3}, Lcom/android/cloud/fragment/presenter/CloudFileContract$View;->showLoading(ZI)V

    iget-object v1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$1;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    invoke-static {v1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$200(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Lcom/android/cloud/fragment/model/CloudFileOperateModel;

    move-result-object v1

    iget-object v3, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$1;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    invoke-static {v3}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$100(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$1;->val$parentId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, p1}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->requestCreateFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Li2/e;

    move-result-object p1

    new-instance v1, Lcom/android/cloud/fragment/presenter/j;

    invoke-direct {v1, p0, v2}, Lcom/android/cloud/fragment/presenter/j;-><init>(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$1;I)V

    new-instance v2, Lcom/android/cloud/fragment/presenter/j;

    invoke-direct {v2, p0, v0}, Lcom/android/cloud/fragment/presenter/j;-><init>(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$1;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Ln2/a;->b:Ln2/a$a;

    sget-object v4, Ln2/a;->c:Ln2/a$b;

    new-instance v5, Lio/reactivex/internal/observers/LambdaObserver;

    invoke-direct {v5, v1, v2, v3, v4}, Lio/reactivex/internal/observers/LambdaObserver;-><init>(Ll2/c;Ll2/c;Ll2/a;Ll2/c;)V

    invoke-virtual {p1, v5}, Li2/e;->c(Li2/h;)V

    iget-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$1;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    invoke-static {p1, v5}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$300(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Lk2/b;)V

    return v0
.end method
