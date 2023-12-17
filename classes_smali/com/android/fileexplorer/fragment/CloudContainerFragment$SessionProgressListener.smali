.class Lcom/android/fileexplorer/fragment/CloudContainerFragment$SessionProgressListener;
.super Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListenerAdapter;
.source "CloudContainerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/fragment/CloudContainerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SessionProgressListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$SessionProgressListener;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    invoke-direct {p0}, Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/fragment/CloudContainerFragment;Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/CloudContainerFragment$SessionProgressListener;-><init>(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)V

    return-void
.end method


# virtual methods
.method public onSessionStageProgressChanged()V
    .registers 2

    const-string v0, "Should run in main thread!"

    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkRunInMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$SessionProgressListener;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$900(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)V

    return-void
.end method

.method public onSessionStatusChanged()V
    .registers 2

    const-string v0, "Should run in main thread!"

    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkRunInMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$SessionProgressListener;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$900(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)V

    return-void
.end method
