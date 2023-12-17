.class Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$1;
.super Ljava/lang/Object;
.source "HomeFileFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$1;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$1;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->updateUI()V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$1;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v0, v1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->access$002(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;Z)Z

    .line 12
    return-void
.end method
