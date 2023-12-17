.class Lcom/android/fileexplorer/fragment/RecentFragment$LoadFileGroupRunnable;
.super Ljava/lang/Object;
.source "RecentFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/fragment/RecentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadFileGroupRunnable"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/RecentFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Lcom/android/fileexplorer/fragment/RecentFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment$LoadFileGroupRunnable;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/fragment/RecentFragment;Lcom/android/fileexplorer/fragment/RecentFragment$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/RecentFragment$LoadFileGroupRunnable;-><init>(Lcom/android/fileexplorer/fragment/RecentFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const-string v0, "RecentFragment"

    const-string v1, "onScanFinish: loadLocalFileGroupInfo onRefreshComplete"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$LoadFileGroupRunnable;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$500(Lcom/android/fileexplorer/fragment/RecentFragment;ZZ)V

    return-void
.end method
