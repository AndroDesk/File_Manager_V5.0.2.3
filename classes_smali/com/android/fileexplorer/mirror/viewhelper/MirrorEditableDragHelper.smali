.class public Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;
.super Ljava/lang/Object;
.source "MirrorEditableDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragSourceInfo;,
        Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragState;,
        Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragTag;,
        Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragShadowBuilder;
    }
.end annotation


# static fields
.field public static final FROM_MIRROR:I

.field private static final TAG:Ljava/lang/String; = "Drag_EditableDragHelper"


# instance fields
.field private detector:Landroid/view/GestureDetector;

.field private dragListener:Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;

.field private mDeltaX:I

.field private mDeltaY:I

.field private mHolder:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;

.field private mNeedHandleTouchOf:Z

.field private mNeedTriggerDrag:Z

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mTargetView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, -0x92df6

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->FROM_MIRROR:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mNeedTriggerDrag:Z

    new-instance v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$1;-><init>(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mTargetView:Landroid/view/View;

    if-eqz p1, :cond_14

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_14
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mNeedTriggerDrag:Z

    new-instance v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$1;-><init>(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mTargetView:Landroid/view/View;

    iput-boolean p2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mNeedHandleTouchOf:Z

    if-eqz p1, :cond_16

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_16
    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;Landroid/view/View;ZLandroid/view/GestureDetector;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mNeedTriggerDrag:Z

    new-instance v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$1;-><init>(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    iput-object p2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mTargetView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mNeedHandleTouchOf:Z

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mHolder:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;

    iput-object p4, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->detector:Landroid/view/GestureDetector;

    if-eqz p2, :cond_1a

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1a
    return-void
.end method

.method public static synthetic access$002(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mNeedTriggerDrag:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mDeltaX:I

    return p0
.end method

.method public static synthetic access$102(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;I)I
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mDeltaX:I

    return p1
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mDeltaY:I

    return p0
.end method

.method public static synthetic access$202(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;I)I
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mDeltaY:I

    return p1
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mNeedHandleTouchOf:Z

    return p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mTargetView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;)Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mHolder:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;)Landroid/view/GestureDetector;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->detector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method private createShadowBuilder(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragSourceInfo;I)Landroid/view/View$DragShadowBuilder;
    .registers 6

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    iget-object v0, p1, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragSourceInfo;->mDragSourceView:Landroid/view/View;

    const-string v1, "Drag_EditableDragHelper"

    if-nez v0, :cond_1b

    const-string p1, "createShadowBuilder sourceView is null, return dragView"

    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragShadowBuilder;

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mTargetView:Landroid/view/View;

    iget v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mDeltaX:I

    iget v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mDeltaY:I

    invoke-direct {p1, p0, p2, v0, v1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragShadowBuilder;-><init>(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;Landroid/view/View;II)V

    return-object p1

    :cond_1b
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->createBitmapByView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragSourceInfo;->mDragBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_34

    const-string p1, "createShadowBuilder bitmap is null, return dragView"

    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragShadowBuilder;

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mTargetView:Landroid/view/View;

    iget v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mDeltaX:I

    iget v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mDeltaY:I

    invoke-direct {p1, p0, p2, v0, v1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragShadowBuilder;-><init>(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;Landroid/view/View;II)V

    return-object p1

    :cond_34
    const-string v0, "createShadowBuilder dragView = "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragSourceInfo;->mDragSourceView:Landroid/view/View;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", view.width ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragSourceInfo;->mDragSourceView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", , bitmap = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragSourceInfo;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragSourceInfo;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mTargetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->setCount(I)V

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragSourceInfo;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->setThumb(Landroid/graphics/Bitmap;)V

    return-object v0
.end method


# virtual methods
.method public setNeedHandleTouchOf(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mNeedHandleTouchOf:Z

    return-void
.end method

.method public startDrag(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragSourceInfo;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragSourceInfo;",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mNeedTriggerDrag:Z

    const-string v1, "Drag_EditableDragHelper"

    if-nez v0, :cond_c

    const-string p1, "startDrag event not from mirror, return"

    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_5e

    if-eqz p1, :cond_5e

    if-eqz p2, :cond_5e

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_5e

    :cond_1b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/MirrorFunctionHelper;->hasDir(Ljava/util/ArrayList;)Z

    move-result p2

    if-eqz p2, :cond_2d

    const p1, 0x7f11013a

    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    return-void

    :cond_2d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/16 v2, 0x12c

    if-le p2, v2, :cond_41

    const-string p1, "filterFileInfos is more than 300, return"

    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f11004f

    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    return-void

    :cond_41
    new-instance p2, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragState;

    invoke-direct {p2}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragState;-><init>()V

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mTargetView:Landroid/view/View;

    iput-object v1, p2, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragState;->sourceView:Landroid/view/View;

    const-string v2, "mirror_inner"

    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/Util;->createClipDataWithLabel(Ljava/util/List;Ljava/lang/String;)Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->createShadowBuilder(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragSourceInfo;I)Landroid/view/View$DragShadowBuilder;

    move-result-object p1

    const/16 v0, 0x301

    invoke-virtual {v1, v2, p1, p2, v0}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    return-void

    :cond_5e
    :goto_5e
    const-string p1, "view or file is null, return"

    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
