.class Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8$1;
.super Ljava/lang/Object;
.source "MirrorRecentFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8;->onPostExecute(Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8;

.field public final synthetic val$holder:Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8;Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8$1;->this$1:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8$1;->val$holder:Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8$1;->this$1:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    .line 5
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->access$1200(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)Z

    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8$1;->val$holder:Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    .line 11
    iget-boolean v2, v2, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    .line 13
    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->access$1300(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;ZZ)V

    .line 16
    return-void
.end method
