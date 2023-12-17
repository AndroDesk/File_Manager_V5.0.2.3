.class Lcom/android/fileexplorer/pad/fragment/PadFileFragment$2;
.super Ljava/lang/Object;
.source "PadFileFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->postDelayLayout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/pad/fragment/PadFileFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/pad/fragment/PadFileFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadFileFragment$2;->this$0:Lcom/android/fileexplorer/pad/fragment/PadFileFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadFileFragment$2;->this$0:Lcom/android/fileexplorer/pad/fragment/PadFileFragment;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->access$000(Lcom/android/fileexplorer/pad/fragment/PadFileFragment;)Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->notifyData()V

    .line 10
    return-void
.end method
