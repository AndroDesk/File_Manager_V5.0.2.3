.class public Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;
.super Ljava/lang/Object;
.source "EditableDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;,
        Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragState;,
        Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragTag;,
        Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragShadowBuilder;
    }
.end annotation


# static fields
.field public static final FROM_MIRROR:I

.field private static final TAG:Ljava/lang/String; = "Drag_EditableDragHelper"


# instance fields
.field private isTouchDown:Z

.field private mCurrentMotionEvent:Landroid/view/MotionEvent;

.field private mDeltaX:I

.field private mDeltaY:I

.field private mNeedHandleTouchOf:Z

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mTargetView:Landroid/view/View;

.field private mTouchDown:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, -0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->FROM_MIRROR:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$1;-><init>(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;)V

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mTouchDown:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$2;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$2;-><init>(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;)V

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mTargetView:Landroid/view/View;

    if-eqz p1, :cond_18

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_18
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$1;-><init>(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;)V

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mTouchDown:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$2;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$2;-><init>(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;)V

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mTargetView:Landroid/view/View;

    iput-boolean p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mNeedHandleTouchOf:Z

    if-eqz p1, :cond_1a

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1a
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->isTouchDown:Z

    return p0
.end method

.method public static synthetic access$002(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->isTouchDown:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mTargetView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    return-object p1
.end method

.method public static synthetic access$302(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;I)I
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mDeltaX:I

    return p1
.end method

.method public static synthetic access$402(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;I)I
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mDeltaY:I

    return p1
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mNeedHandleTouchOf:Z

    return p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mTouchDown:Ljava/lang/Runnable;

    return-object p0
.end method

.method private createShadowBuilder(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;I)Landroid/view/View$DragShadowBuilder;
    .registers 6

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    iget-object v0, p1, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;->mDragSourceView:Landroid/view/View;

    const-string v1, "Drag_EditableDragHelper"

    if-nez v0, :cond_1b

    const-string p1, "createShadowBuilder sourceView is null, return dragView"

    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragShadowBuilder;

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mTargetView:Landroid/view/View;

    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mDeltaX:I

    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mDeltaY:I

    invoke-direct {p1, p0, p2, v0, v1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragShadowBuilder;-><init>(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;Landroid/view/View;II)V

    return-object p1

    :cond_1b
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->createBitmapByView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;->mDragBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_34

    const-string p1, "createShadowBuilder bitmap is null, return dragView"

    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragShadowBuilder;

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mTargetView:Landroid/view/View;

    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mDeltaX:I

    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mDeltaY:I

    invoke-direct {p1, p0, p2, v0, v1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragShadowBuilder;-><init>(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;Landroid/view/View;II)V

    return-object p1

    :cond_34
    const-string v0, "createShadowBuilder dragView = "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;->mDragSourceView:Landroid/view/View;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", view.width ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;->mDragSourceView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", , bitmap = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mTargetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->setCount(I)V

    iget-object p1, p1, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->setThumb(Landroid/graphics/Bitmap;)V

    return-object v0
.end method


# virtual methods
.method public setNeedHandleTouchOf(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mNeedHandleTouchOf:Z

    return-void
.end method

.method public startDrag(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    const-string v1, "Drag_EditableDragHelper"

    if-eqz v0, :cond_6f

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isNeedTriggerDrag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isEventFromMirror(Landroid/view/InputEvent;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_6f

    :cond_19
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_69

    if-eqz p1, :cond_69

    if-eqz p2, :cond_69

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_69

    :cond_28
    invoke-static {p2}, Lcom/android/cloud/util/CloudFileUtils;->getSupportDragFileInfos(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_38

    const-string p1, "handleList is null, return"

    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_38
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x12c

    if-le v0, v2, :cond_4c

    const-string p1, "filterFileInfos is more than 300, return"

    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f11004f

    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    return-void

    :cond_4c
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragState;

    invoke-direct {v0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragState;-><init>()V

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mTargetView:Landroid/view/View;

    iput-object v1, v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragState;->sourceView:Landroid/view/View;

    const-string v2, "mirror_inner"

    invoke-static {p2, v2}, Lcom/android/fileexplorer/model/Util;->createClipDataWithLabel(Ljava/util/List;Ljava/lang/String;)Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->createShadowBuilder(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;I)Landroid/view/View$DragShadowBuilder;

    move-result-object p1

    const/16 p2, 0x301

    invoke-virtual {v1, v2, p1, v0, p2}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    return-void

    :cond_69
    :goto_69
    const-string p1, "view or file is null, return"

    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6f
    :goto_6f
    const-string p1, "startDrag event not from mirror, return"

    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
