.class Lcom/android/fileexplorer/fragment/RecentFragment$RefreshLoadStateRunnable;
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
    name = "RefreshLoadStateRunnable"
.end annotation


# instance fields
.field private mHasMore:Z

.field private mIsScanning:Z

.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/RecentFragment;


# direct methods
.method private constructor <init>(Lcom/android/fileexplorer/fragment/RecentFragment;ZZ)V
    .registers 4

    .line 2
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment$RefreshLoadStateRunnable;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p2, p0, Lcom/android/fileexplorer/fragment/RecentFragment$RefreshLoadStateRunnable;->mIsScanning:Z

    .line 4
    iput-boolean p3, p0, Lcom/android/fileexplorer/fragment/RecentFragment$RefreshLoadStateRunnable;->mHasMore:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/fragment/RecentFragment;ZZLcom/android/fileexplorer/fragment/RecentFragment$1;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/RecentFragment$RefreshLoadStateRunnable;-><init>(Lcom/android/fileexplorer/fragment/RecentFragment;ZZ)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$RefreshLoadStateRunnable;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    .line 3
    iget-boolean v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment$RefreshLoadStateRunnable;->mIsScanning:Z

    .line 5
    iget-boolean v2, p0, Lcom/android/fileexplorer/fragment/RecentFragment$RefreshLoadStateRunnable;->mHasMore:Z

    .line 7
    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$1100(Lcom/android/fileexplorer/fragment/RecentFragment;ZZ)V

    .line 10
    return-void
.end method
