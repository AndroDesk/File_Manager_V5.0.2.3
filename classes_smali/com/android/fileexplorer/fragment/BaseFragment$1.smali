.class Lcom/android/fileexplorer/fragment/BaseFragment$1;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/fragment/BaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/BaseFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/BaseFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment$1;->this$0:Lcom/android/fileexplorer/fragment/BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment$1;->this$0:Lcom/android/fileexplorer/fragment/BaseFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment$1;->this$0:Lcom/android/fileexplorer/fragment/BaseFragment;

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getDataBackToFront()V

    :cond_d
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment$1;->this$0:Lcom/android/fileexplorer/fragment/BaseFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/fileexplorer/fragment/BaseFragment;->mBackToFront:Z

    return-void
.end method
