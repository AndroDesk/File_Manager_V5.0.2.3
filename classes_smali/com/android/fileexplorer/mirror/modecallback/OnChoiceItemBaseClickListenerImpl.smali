.class public Lcom/android/fileexplorer/mirror/modecallback/OnChoiceItemBaseClickListenerImpl;
.super Ljava/lang/Object;
.source "OnChoiceItemBaseClickListenerImpl.java"

# interfaces
.implements Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCheckedDragFileInfos(I)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public isItemSelected(I)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public isValid()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onDrop(Landroid/view/DragEvent;I)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public onItemClick(Landroid/view/View;III)V
    .registers 5

    return-void
.end method

.method public onItemDoubleClick(Landroid/view/View;III)Z
    .registers 5

    const/4 p1, 0x0

    return p1
.end method

.method public onItemLongClick(Landroid/view/View;I)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public onRightClick(Landroid/view/View;IFF)V
    .registers 5

    return-void
.end method

.method public onStartDrag(Landroid/view/DragEvent;I)V
    .registers 3

    return-void
.end method

.method public processHover(IZ)V
    .registers 3

    return-void
.end method
