.class Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$1;
.super Ljava/lang/Object;
.source "MirrorBaseSecondaryDocFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->access$000(Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;Z)V

    .line 7
    return-void
.end method
