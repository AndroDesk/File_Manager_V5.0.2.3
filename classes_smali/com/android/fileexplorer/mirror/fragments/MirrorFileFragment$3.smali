.class Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$3;
.super Ljava/lang/Object;
.source "MirrorFileFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->onUserVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

.field public final synthetic val$first:Z


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Z)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$3;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 3
    iput-boolean p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$3;->val$first:Z

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$3;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 3
    iget-boolean v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$3;->val$first:Z

    .line 5
    xor-int/lit8 v1, v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->showVolumeHintPopup(Z)V

    .line 10
    return-void
.end method
