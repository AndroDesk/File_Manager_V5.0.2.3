.class Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment$1;
.super Ljava/lang/Object;
.source "PadFileDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;->initView(Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment$1;->this$0:Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment$1;->this$0:Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;

    .line 3
    new-instance v0, Lcom/android/fileexplorer/controller/FabMenuItem;

    .line 5
    const v1, 0x7f0a01eb

    .line 8
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/controller/FabMenuItem;-><init>(I)V

    .line 11
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/fragment/FileFragment;->onImmersionMenuClick(Landroid/view/MenuItem;)Z

    .line 14
    return-void
.end method
