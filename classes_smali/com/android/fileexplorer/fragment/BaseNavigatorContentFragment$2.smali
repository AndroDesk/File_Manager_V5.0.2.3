.class Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment$2;
.super Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;
.source "BaseNavigatorContentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->initDragEvent(Landroid/view/View;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment$2;->this$0:Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;

    invoke-direct {p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleDrop(Landroid/view/DragEvent;Ljava/lang/String;)Z
    .registers 4

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment$2;->this$0:Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;

    invoke-virtual {p2}, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->createFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->processDrop(Landroid/view/DragEvent;Lcom/android/fileexplorer/model/FileInfo;)Z

    move-result p1

    return p1
.end method

.method public startDragReal(Landroid/view/DragEvent;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->startDragReal(Landroid/view/DragEvent;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment$2;->this$0:Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;

    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->processStartDrag()V

    return-void
.end method
