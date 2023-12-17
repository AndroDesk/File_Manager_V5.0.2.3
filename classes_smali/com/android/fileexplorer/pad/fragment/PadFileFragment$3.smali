.class Lcom/android/fileexplorer/pad/fragment/PadFileFragment$3;
.super Ljava/lang/Object;
.source "PadFileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->setListGridMode(Landroid/widget/ImageView;)V
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
    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadFileFragment$3;->this$0:Lcom/android/fileexplorer/pad/fragment/PadFileFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadFileFragment$3;->this$0:Lcom/android/fileexplorer/pad/fragment/PadFileFragment;

    .line 3
    invoke-virtual {p1}, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->getCurrentCategoryKey()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-static {p1, v1, v0}, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->access$100(Lcom/android/fileexplorer/pad/fragment/PadFileFragment;ILjava/lang/String;)V

    .line 11
    return-void
.end method
