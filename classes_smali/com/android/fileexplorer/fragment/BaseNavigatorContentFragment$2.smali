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
.method public constructor <init>(Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment$2;->this$0:Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;

    .line 3
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method public handleDrop(Landroid/view/DragEvent;Ljava/lang/String;)Z
    .registers 4

    .line 1
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment$2;->this$0:Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;

    .line 3
    invoke-virtual {p2}, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->createFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p2, p1, v0}, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->processDrop(Landroid/view/DragEvent;Lcom/android/fileexplorer/model/FileInfo;)Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public startDragReal(Landroid/view/DragEvent;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->startDragReal(Landroid/view/DragEvent;)V

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment$2;->this$0:Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;

    .line 6
    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->processStartDrag()V

    .line 9
    return-void
.end method
