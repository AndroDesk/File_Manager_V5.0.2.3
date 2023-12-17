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
.field public static final FROM_MIRROR:I = -0x64

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
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mNeedTriggerDrag:Z

    .line 3
    new-instance v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$1;-><init>(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mTargetView:Landroid/view/View;

    if-eqz p1, :cond_14

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_14
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .registers 4

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mNeedTriggerDrag:Z

    .line 8
    new-instance v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$1;-><init>(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 9
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mTargetView:Landroid/view/View;

    .line 10
    iput-boolean p2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mNeedHandleTouchOf:Z

    if-eqz p1, :cond_16

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_16
    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;Landroid/view/View;ZLandroid/view/GestureDetector;)V
    .registers 6

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mNeedTriggerDrag:Z

    .line 14
    new-instance v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$1;-><init>(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 15
    iput-object p2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mTargetView:Landroid/view/View;

    .line 16
    iput-boolean p3, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mNeedHandleTouchOf:Z

    .line 17
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mHolder:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;

    .line 18
    iput-object p4, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->detector:Landroid/view/GestureDetector;

    if-eqz p2, :cond_1a

    .line 19
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1a
    return-void
.end method

.method public static synthetic access$002(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mNeedTriggerDrag:Z

    .line 3
    return p1
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mDeltaX:I

    .line 3
    return p0
.end method

.method public static synthetic access$102(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mDeltaX:I

    .line 3
    return p1
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mDeltaY:I

    .line 3
    return p0
.end method

.method public static synthetic access$202(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mDeltaY:I

    .line 3
    return p1
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mNeedHandleTouchOf:Z

    .line 3
    return p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mTargetView:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;)Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mHolder:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;

    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;)Landroid/view/GestureDetector;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->detector:Landroid/view/GestureDetector;

    .line 3
    return-object p0
.end method

.method private createShadowBuilder(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragSourceInfo;I)Landroid/view/View$DragShadowBuilder;
    .registers 6

    .line 1
    if-nez p1, :cond_4

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_4
    iget-object v0, p1, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragSourceInfo;->mDragSourceView:Landroid/view/View;

    .line 7
    const-string v1, "Drag_EditableDragHelper"

    .line 9
    if-nez v0, :cond_1b

    .line 11
    const-string p1, "createShadowBuilder sourceView is null, return dragView"

    .line 13
    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance p1, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragShadowBuilder;

    .line 18
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mTargetView:Landroid/view/View;

    .line 20
    iget v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mDeltaX:I

    .line 22
    iget v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mDeltaY:I

    .line 24
    invoke-direct {p1, p0, p2, v0, v1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragShadowBuilder;-><init>(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;Landroid/view/View;II)V

    .line 27
    return-object p1

    .line 28
    :cond_1b
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->createBitmapByView(Landroid/view/View;)Landroid/graphics/Bitmap;

    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p1, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragSourceInfo;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 34
    if-nez v0, :cond_34

    .line 36
    const-string p1, "createShadowBuilder bitmap is null, return dragView"

    .line 38
    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance p1, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragShadowBuilder;

    .line 43
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mTargetView:Landroid/view/View;

    .line 45
    iget v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mDeltaX:I

    .line 47
    iget v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mDeltaY:I

    .line 49
    invoke-direct {p1, p0, p2, v0, v1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragShadowBuilder;-><init>(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;Landroid/view/View;II)V

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
    iget-object v2, p1, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragSourceInfo;->mDragSourceView:Landroid/view/View;

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    const-string v2, ", view.width ="

    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v2, p1, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragSourceInfo;->mDragSourceView:Landroid/view/View;

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
    iget-object v2, p1, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragSourceInfo;->mDragBitmap:Landroid/graphics/Bitmap;

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
    iget-object v2, p1, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragSourceInfo;->mDragBitmap:Landroid/graphics/Bitmap;

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
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mTargetView:Landroid/view/View;

    .line 117
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 120
    move-result-object v1

    .line 121
    invoke-direct {v0, v1}, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;-><init>(Landroid/content/Context;)V

    .line 124
    invoke-virtual {v0, p2}, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->setCount(I)V

    .line 127
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragSourceInfo;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 129
    invoke-virtual {v0, p1}, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->setThumb(Landroid/graphics/Bitmap;)V

    .line 132
    return-object v0
.end method


# virtual methods
.method public setNeedHandleTouchOf(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mNeedHandleTouchOf:Z

    .line 3
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

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mNeedTriggerDrag:Z

    .line 3
    const-string v1, "Drag_EditableDragHelper"

    .line 5
    if-nez v0, :cond_c

    .line 7
    const-string p1, "startDrag event not from mirror, return"

    .line 9
    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void

    .line 13
    :cond_c
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mTargetView:Landroid/view/View;

    .line 15
    if-eqz v0, :cond_5e

    .line 17
    if-eqz p1, :cond_5e

    .line 19
    if-eqz p2, :cond_5e

    .line 21
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1b

    .line 27
    goto :goto_5e

    .line 28
    :cond_1b
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 33
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/MirrorFunctionHelper;->hasDir(Ljava/util/ArrayList;)Z

    .line 36
    move-result p2

    .line 37
    if-eqz p2, :cond_2d

    .line 39
    const p1, 0x7f11013a

    .line 42
    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 45
    return-void

    .line 46
    :cond_2d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 49
    move-result p2

    .line 50
    const/16 v2, 0x12c

    .line 52
    if-le p2, v2, :cond_41

    .line 54
    const-string p1, "filterFileInfos is more than 300, return"

    .line 56
    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const p1, 0x7f11004f

    .line 62
    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 65
    return-void

    .line 66
    :cond_41
    new-instance p2, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragState;

    .line 68
    invoke-direct {p2}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragState;-><init>()V

    .line 71
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->mTargetView:Landroid/view/View;

    .line 73
    iput-object v1, p2, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragState;->sourceView:Landroid/view/View;

    .line 75
    const-string v2, "mirror_inner"

    .line 77
    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/Util;->createClipDataWithLabel(Ljava/util/List;Ljava/lang/String;)Landroid/content/ClipData;

    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 84
    move-result v0

    .line 85
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->createShadowBuilder(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragSourceInfo;I)Landroid/view/View$DragShadowBuilder;

    .line 88
    move-result-object p1

    .line 89
    const/16 v0, 0x301

    .line 91
    invoke-virtual {v1, v2, p1, p2, v0}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 94
    return-void

    .line 95
    :cond_5e
    :goto_5e
    const-string p1, "view or file is null, return"

    .line 97
    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method
