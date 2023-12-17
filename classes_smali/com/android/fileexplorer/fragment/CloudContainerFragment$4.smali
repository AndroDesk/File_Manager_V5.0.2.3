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
.method public constructor <init>(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$4;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$4;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 3
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$500(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p1, :cond_1d

    .line 14
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$4;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 16
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 19
    move-result-object p1

    .line 20
    const-string v1, "未找到视频文件"

    .line 22
    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 29
    return-void

    .line 30
    :cond_1d
    new-instance p1, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask;

    .line 32
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$4;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 34
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 37
    move-result-object v1

    .line 38
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$4;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 40
    invoke-static {v2}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$500(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    invoke-direct {p1, v1, v2}, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$4;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 49
    invoke-virtual {p1, v1}, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask;->setRequestListener(Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$RequestListener;)V

    .line 52
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 54
    new-array v0, v0, [Ljava/lang/Void;

    .line 56
    invoke-virtual {p1, v1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 59
    return-void
.end method
