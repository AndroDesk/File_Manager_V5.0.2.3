.class Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment$3;
.super Ljava/lang/Object;
.source "PadFileDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;->setListGridMode(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment$3;->this$0:Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment$3;->this$0:Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;

    .line 3
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-static {p1, v1, v0}, Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;->access$000(Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;ILjava/lang/String;)V

    .line 13
    return-void
.end method
