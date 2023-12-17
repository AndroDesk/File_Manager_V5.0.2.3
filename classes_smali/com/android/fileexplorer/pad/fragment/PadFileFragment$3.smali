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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/pad/fragment/PadFileFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadFileFragment$3;->this$0:Lcom/android/fileexplorer/pad/fragment/PadFileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadFileFragment$3;->this$0:Lcom/android/fileexplorer/pad/fragment/PadFileFragment;

    invoke-virtual {p1}, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->getCurrentCategoryKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->access$100(Lcom/android/fileexplorer/pad/fragment/PadFileFragment;ILjava/lang/String;)V

    return-void
.end method
