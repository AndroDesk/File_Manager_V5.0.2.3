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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/pad/fragment/PadFileFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadFileFragment$2;->this$0:Lcom/android/fileexplorer/pad/fragment/PadFileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadFileFragment$2;->this$0:Lcom/android/fileexplorer/pad/fragment/PadFileFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->access$000(Lcom/android/fileexplorer/pad/fragment/PadFileFragment;)Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->notifyData()V

    return-void
.end method
