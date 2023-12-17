.class Lcom/android/fileexplorer/fragment/CloudContainerFragment$4;
.super Ljava/lang/Object;
.source "CloudContainerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/CloudContainerFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$4;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$4;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$500(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$4;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "未找到视频文件"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1d
    new-instance p1, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$4;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$4;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    invoke-static {v2}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$500(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$4;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    invoke-virtual {p1, v1}, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask;->setRequestListener(Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$RequestListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
