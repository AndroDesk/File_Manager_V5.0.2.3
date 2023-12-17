.class Lcom/android/fileexplorer/pad/fragment/PadFileFragment$1;
.super Ljava/lang/Object;
.source "PadFileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->initView(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadFileFragment$1;->this$0:Lcom/android/fileexplorer/pad/fragment/PadFileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadFileFragment$1;->this$0:Lcom/android/fileexplorer/pad/fragment/PadFileFragment;

    new-instance v0, Lcom/android/fileexplorer/controller/FabMenuItem;

    const v1, 0x7f0a01eb

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/controller/FabMenuItem;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->onImmersionMenuClick(Landroid/view/MenuItem;)Z

    return-void
.end method
