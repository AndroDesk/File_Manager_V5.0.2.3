.class public Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;
.super Ljava/lang/Object;
.source "ViewDragListener.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# static fields
.field public static final HOVER_TIME:J = 0x320L

.field public static final LABEL_MIRROR:Ljava/lang/String; = "mirror"

.field public static final LABEL_MIRROR_INNER:Ljava/lang/String; = "mirror_inner"

.field private static final TAG:Ljava/lang/String; = "Drag_ViewDragListener"


# instance fields
.field private mDragTag:Ljava/lang/String;

.field private mNeedNotifyStartDrag:Z

.field private mStartX:I

.field private mStartY:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->mNeedNotifyStartDrag:Z

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->mDragTag:Ljava/lang/String;

    return-void
.end method

.method public static dragInner(Landroid/view/DragEvent;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragState;

    if-nez v0, :cond_13

    invoke-virtual {p0}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragState;

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method private isDragView(Landroid/view/View;Landroid/view/DragEvent;)Z
    .registers 5

    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragState;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    check-cast p2, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragState;

    iget-object p2, p2, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragState;->sourceView:Landroid/view/View;

    if-ne p1, p2, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method private isMove(FF)Z
    .registers 4

    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->mStartX:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_1d

    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->mStartY:I

    int-to-float p1, p1

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p1, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 p1, 0x1

    :goto_1e
    return p1
.end method

.method private isPageView()Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->mDragTag:Ljava/lang/String;

    const-string v1, "PAGE_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static needHandleEvent(Landroid/view/DragEvent;)Z
    .registers 5

    invoke-virtual {p0}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object p0

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isExceptDevices()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    if-eqz p0, :cond_13

    return v1

    :cond_13
    return v2

    :cond_14
    if-eqz p0, :cond_2f

    invoke-virtual {p0}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v3, "mirror"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    invoke-virtual {p0}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object p0

    const-string v0, "mirror_inner"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2f

    goto :goto_30

    :cond_2f
    move v1, v2

    :cond_30
    :goto_30
    return v1
.end method

.method private refreshSourceView(Landroid/view/DragEvent;Z)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragState;

    if-eqz v0, :cond_31

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragState;

    iget-object p1, p1, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragState;->sourceView:Landroid/view/View;

    if-eqz p1, :cond_31

    if-eqz p2, :cond_16

    const/4 v0, 0x0

    goto :goto_18

    :cond_16
    const/high16 v0, 0x3f800000  # 1.0f

    :goto_18
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "refreshSourceView setAlpha hide = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Drag_ViewDragListener"

    invoke-static {p2, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    return-void
.end method

.method private refreshTargetView(Landroid/view/View;Z)V
    .registers 3

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->isPageView()Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "Drag_ViewDragListener"

    const-string p2, "refreshTargetView isPageView"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method


# virtual methods
.method public canHandleEvent(Landroid/view/DragEvent;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public handleDrop(Landroid/view/DragEvent;Ljava/lang/String;)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method

.method public handleHover(Z)V
    .registers 2

    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .registers 8

    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->canHandleEvent(Landroid/view/DragEvent;)Z

    move-result v0

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "Drag_ViewDragListener"

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_ea

    return v4

    :pswitch_10  #0x6
    const-string p2, "onDrag exited mDragTag = "

    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->mDragTag:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v4}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->refreshTargetView(Landroid/view/View;Z)V

    invoke-virtual {p0, v4}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->handleHover(Z)V

    return v0

    :pswitch_29  #0x5
    const-string v1, "onDrag: enter"

    invoke-static {v3, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->isDragView(Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result p2

    if-eqz p2, :cond_35

    return v4

    :cond_35
    invoke-direct {p0, p1, v2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->refreshTargetView(Landroid/view/View;Z)V

    if-eqz v0, :cond_42

    const-string p1, "onDrag enter hover"

    invoke-static {v3, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->handleHover(Z)V

    :cond_42
    const-string p1, "onDrag enter mDragTag = "

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->mDragTag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :pswitch_55  #0x4
    const-string p2, "onDrag ended"

    invoke-static {v3, p2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->handleHover(Z)V

    invoke-direct {p0, p1, v4}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->refreshTargetView(Landroid/view/View;Z)V

    return v0

    :pswitch_61  #0x3
    const-string v0, "onDrag drop"

    invoke-static {v3, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->handleHover(Z)V

    invoke-static {}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getInstance()Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    move-result-object v0

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->isFloatWindowShow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8a

    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    if-eqz v0, :cond_8a

    invoke-virtual {v0}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "mirror_inner"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8a

    return v4

    :cond_8a
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->isDragView(Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result p1

    if-eqz p1, :cond_91

    return v4

    :cond_91
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->mDragTag:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->handleDrop(Landroid/view/DragEvent;Ljava/lang/String;)Z

    move-result p1

    return p1

    :pswitch_98  #0x2
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->processLocation(FF)V

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->isMove(FF)Z

    move-result p1

    if-eqz p1, :cond_b8

    iget-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->mNeedNotifyStartDrag:Z

    if-eqz p1, :cond_b8

    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->startDragReal(Landroid/view/DragEvent;)V

    :cond_b8
    if-eqz v0, :cond_c5

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/PasteFileInstance;->isActionRunning()Z

    move-result p1

    if-nez p1, :cond_c5

    goto :goto_c6

    :cond_c5
    move v2, v4

    :goto_c6
    return v2

    :pswitch_c7  #0x1
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->mStartX:I

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->mStartY:I

    iput-boolean v2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->mNeedNotifyStartDrag:Z

    const-string p1, "onDrag start + mTag = "

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->mDragTag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :pswitch_data_ea
    .packed-switch 0x1
        :pswitch_c7  #00000001
        :pswitch_98  #00000002
        :pswitch_61  #00000003
        :pswitch_55  #00000004
        :pswitch_29  #00000005
        :pswitch_10  #00000006
    .end packed-switch
.end method

.method public processLocation(FF)V
    .registers 3

    return-void
.end method

.method public startDragReal(Landroid/view/DragEvent;)V
    .registers 2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->mNeedNotifyStartDrag:Z

    return-void
.end method
