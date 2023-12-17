.class Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$1;
.super Ljava/lang/Object;
.source "MirrorHomePictureFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->onUserVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->access$000(Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;

    iput-boolean v1, v0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mNeedRefresh:Z

    return-void
.end method
