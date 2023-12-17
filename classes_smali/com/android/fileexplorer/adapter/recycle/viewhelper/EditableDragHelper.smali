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
.field public static final FROM_MIRROR:I = -0x1

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
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$1;-><init>(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;)V

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mTouchDown:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$2;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$2;-><init>(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;)V

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mTargetView:Landroid/view/View;

    if-eqz p1, :cond_18

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_18
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .registers 4

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$1;-><init>(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;)V

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mTouchDown:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$2;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$2;-><init>(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;)V

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 9
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mTargetView:Landroid/view/View;

    .line 10
    iput-boolean p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mNeedHandleTouchOf:Z

    if-eqz p1, :cond_1a

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1a
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->isTouchDown:Z

    .line 3
    return p0
.end method

.method public static synthetic access$002(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->isTouchDown:Z

    .line 3
    return p1
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mTargetView:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method public static synthetic access$202(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    .line 3
    return-object p1
.end method

.method public static synthetic access$302(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mDeltaX:I

    .line 3
    return p1
.end method

.method public static synthetic access$402(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mDeltaY:I

    .line 3
    return p1
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mNeedHandleTouchOf:Z

    .line 3
    return p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;)Ljava/lang/Runnable;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mTouchDown:Ljava/lang/Runnable;

    .line 3
    return-object p0
.end method

.method private createShadowBuilder(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;I)Landroid/view/View$DragShadowBuilder;
    .registers 6

    .line 1
    if-nez p1, :cond_4

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_4
    iget-object v0, p1, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;->mDragSourceView:Landroid/view/View;

    .line 7
    const-string v1, "Drag_EditableDragHelper"

    .line 9
    if-nez v0, :cond_1b

    .line 11
    const-string p1, "createShadowBuilder sourceView is null, return dragView"

    .line 13
    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragShadowBuilder;

    .line 18
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mTargetView:Landroid/view/View;

    .line 20
    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mDeltaX:I

    .line 22
    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mDeltaY:I

    .line 24
    invoke-direct {p1, p0, p2, v0, v1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragShadowBuilder;-><init>(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;Landroid/view/View;II)V

    .line 27
    return-object p1

    .line 28
    :cond_1b
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->createBitmapByView(Landroid/view/View;)Landroid/graphics/Bitmap;

    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p1, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 34
    if-nez v0, :cond_34

    .line 36
    const-string p1, "createShadowBuilder bitmap is null, return dragView"

    .line 38
    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragShadowBuilder;

    .line 43
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mTargetView:Landroid/view/View;

    .line 45
    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mDeltaX:I

    .line 47
    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mDeltaY:I

    .line 49
    invoke-direct {p1, p0, p2, v0, v1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragShadowBuilder;-><init>(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;Landroid/view/View;II)V

    .line 52
    return-object p1

    .line 53
    :cond_34
    const-string v0, "createShadowBuilder dragView = "

    .line 55
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    move-result-object v0

    .line 59
    iget-object v2, p1, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;->mDragSourceView:Landroid/view/View;

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    const-string v2, ", view.width ="

    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v2, p1, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;->mDragSourceView:Landroid/view/View;

    .line 71
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 74
    move-result v2

    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    const-string v2, ", , bitmap = "

    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object v2, p1, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 85
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 88
    move-result v2

    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    const-string v2, ", height = "

    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-object v2, p1, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 99
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 102
    move-result v2

    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object v0

    .line 110
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance v0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;

    .line 115
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mTargetView:Landroid/view/View;

    .line 117
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 120
    move-result-object v1

    .line 121
    invoke-direct {v0, v1}, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;-><init>(Landroid/content/Context;)V

    .line 124
    invoke-virtual {v0, p2}, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->setCount(I)V

    .line 127
    iget-object p1, p1, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 129
    invoke-virtual {v0, p1}, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->setThumb(Landroid/graphics/Bitmap;)V

    .line 132
    return-object v0
.end method


# virtual methods
.method public setNeedHandleTouchOf(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mNeedHandleTouchOf:Z

    .line 3
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    .line 3
    const-string v1, "Drag_EditableDragHelper"

    .line 5
    if-eqz v0, :cond_6f

    .line 7
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isNeedTriggerDrag()Ljava/lang/Boolean;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_19

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    .line 19
    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isEventFromMirror(Landroid/view/InputEvent;)Z

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_19

    .line 25
    goto :goto_6f

    .line 26
    :cond_19
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mTargetView:Landroid/view/View;

    .line 28
    if-eqz v0, :cond_69

    .line 30
    if-eqz p1, :cond_69

    .line 32
    if-eqz p2, :cond_69

    .line 34
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_28

    .line 40
    goto :goto_69

    .line 41
    :cond_28
    invoke-static {p2}, Lcom/android/cloud/util/CloudFileUtils;->getSupportDragFileInfos(Ljava/util/List;)Ljava/util/ArrayList;

    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_38

    .line 51
    const-string p1, "handleList is null, return"

    .line 53
    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void

    .line 57
    :cond_38
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 60
    move-result v0

    .line 61
    const/16 v2, 0x12c

    .line 63
    if-le v0, v2, :cond_4c

    .line 65
    const-string p1, "filterFileInfos is more than 300, return"

    .line 67
    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const p1, 0x7f11004f

    .line 73
    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 76
    return-void

    .line 77
    :cond_4c
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragState;

    .line 79
    invoke-direct {v0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragState;-><init>()V

    .line 82
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->mTargetView:Landroid/view/View;

    .line 84
    iput-object v1, v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragState;->sourceView:Landroid/view/View;

    .line 86
    const-string v2, "mirror_inner"

    .line 88
    invoke-static {p2, v2}, Lcom/android/fileexplorer/model/Util;->createClipDataWithLabel(Ljava/util/List;Ljava/lang/String;)Landroid/content/ClipData;

    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 95
    move-result p2

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->createShadowBuilder(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;I)Landroid/view/View$DragShadowBuilder;

    .line 99
    move-result-object p1

    .line 100
    const/16 p2, 0x301

    .line 102
    invoke-virtual {v1, v2, p1, v0, p2}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 105
    return-void

    .line 106
    :cond_69
    :goto_69
    const-string p1, "view or file is null, return"

    .line 108
    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void

    .line 112
    :cond_6f
    :goto_6f
    const-string p1, "startDrag event not from mirror, return"

    .line 114
    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method
