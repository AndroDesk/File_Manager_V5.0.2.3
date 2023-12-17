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
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->mNeedNotifyStartDrag:Z

    .line 7
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->mDragTag:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public static dragInner(Landroid/view/DragEvent;)Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragState;

    .line 7
    if-nez v0, :cond_13

    .line 9
    invoke-virtual {p0}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 13
    instance-of p0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragState;

    .line 15
    if-eqz p0, :cond_11

    .line 17
    goto :goto_13

    .line 18
    :cond_11
    const/4 p0, 0x0

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    :goto_13
    const/4 p0, 0x1

    .line 21
    :goto_14
    return p0
.end method

.method private isDragView(Landroid/view/View;Landroid/view/DragEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    .line 4
    move-result-object p2

    .line 5
    instance-of v0, p2, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragState;

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_10

    .line 10
    check-cast p2, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragState;

    .line 12
    iget-object p2, p2, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragState;->sourceView:Landroid/view/View;

    .line 14
    if-ne p1, p2, :cond_10

    .line 16
    const/4 v1, 0x1

    .line 17
    :cond_10
    return v1
.end method

.method private isMove(FF)Z
    .registers 4

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->mStartX:I

    .line 3
    int-to-float v0, v0

    .line 4
    sub-float/2addr p1, v0

    .line 5
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 8
    move-result p1

    .line 9
    const/high16 v0, 0x3f800000  # 1.0f

    .line 11
    cmpl-float p1, p1, v0

    .line 13
    if-gtz p1, :cond_1d

    .line 15
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->mStartY:I

    .line 17
    int-to-float p1, p1

    .line 18
    sub-float/2addr p2, p1

    .line 19
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 22
    move-result p1

    .line 23
    cmpl-float p1, p1, v0

    .line 25
    if-lez p1, :cond_1b

    .line 27
    goto :goto_1d

    .line 28
    :cond_1b
    const/4 p1, 0x0

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    :goto_1d
    const/4 p1, 0x1

    .line 31
    :goto_1e
    return p1
.end method

.method private isPageView()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->mDragTag:Ljava/lang/String;

    .line 3
    const-string v1, "PAGE_"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static needHandleEvent(Landroid/view/DragEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isExceptDevices()Ljava/lang/Boolean;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v0, :cond_14

    .line 17
    if-eqz p0, :cond_13

    .line 19
    return v1

    .line 20
    :cond_13
    return v2

    .line 21
    :cond_14
    if-eqz p0, :cond_2f

    .line 23
    invoke-virtual {p0}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    .line 26
    move-result-object v0

    .line 27
    const-string v3, "mirror"

    .line 29
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_30

    .line 35
    invoke-virtual {p0}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    .line 38
    move-result-object p0

    .line 39
    const-string v0, "mirror_inner"

    .line 41
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 44
    move-result p0

    .line 45
    if-eqz p0, :cond_2f

    .line 47
    goto :goto_30

    .line 48
    :cond_2f
    move v1, v2

    .line 49
    :cond_30
    :goto_30
    return v1
.end method

.method private refreshSourceView(Landroid/view/DragEvent;Z)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragState;

    .line 7
    if-eqz v0, :cond_31

    .line 9
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragState;

    .line 15
    iget-object p1, p1, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragState;->sourceView:Landroid/view/View;

    .line 17
    if-eqz p1, :cond_31

    .line 19
    if-eqz p2, :cond_16

    .line 21
    const/4 v0, 0x0

    .line 22
    goto :goto_18

    .line 23
    :cond_16
    const/high16 v0, 0x3f800000  # 1.0f

    .line 25
    :goto_18
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    const-string v0, "refreshSourceView setAlpha hide = "

    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    const-string p2, "Drag_ViewDragListener"

    .line 47
    invoke-static {p2, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_31
    return-void
.end method

.method private refreshTargetView(Landroid/view/View;Z)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->isPageView()Z

    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_d

    .line 7
    const-string p1, "Drag_ViewDragListener"

    .line 9
    const-string p2, "refreshTargetView isPageView"

    .line 11
    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
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

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->canHandleEvent(Landroid/view/DragEvent;)Z

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const-string v3, "Drag_ViewDragListener"

    .line 12
    const/4 v4, 0x0

    .line 13
    packed-switch v1, :pswitch_data_ea

    .line 16
    return v4

    .line 17
    :pswitch_10  #0x6
    const-string p2, "onDrag exited mDragTag = "

    .line 19
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    move-result-object p2

    .line 23
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->mDragTag:Ljava/lang/String;

    .line 25
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p2

    .line 32
    invoke-static {v3, p2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0, p1, v4}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->refreshTargetView(Landroid/view/View;Z)V

    .line 38
    invoke-virtual {p0, v4}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->handleHover(Z)V

    .line 41
    return v0

    .line 42
    :pswitch_29  #0x5
    const-string v1, "onDrag: enter"

    .line 44
    invoke-static {v3, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->isDragView(Landroid/view/View;Landroid/view/DragEvent;)Z

    .line 50
    move-result p2

    .line 51
    if-eqz p2, :cond_35

    .line 53
    return v4

    .line 54
    :cond_35
    invoke-direct {p0, p1, v2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->refreshTargetView(Landroid/view/View;Z)V

    .line 57
    if-eqz v0, :cond_42

    .line 59
    const-string p1, "onDrag enter hover"

    .line 61
    invoke-static {v3, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->handleHover(Z)V

    .line 67
    :cond_42
    const-string p1, "onDrag enter mDragTag = "

    .line 69
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    move-result-object p1

    .line 73
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->mDragTag:Ljava/lang/String;

    .line 75
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p1

    .line 82
    invoke-static {v3, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return v0

    .line 86
    :pswitch_55  #0x4
    const-string p2, "onDrag ended"

    .line 88
    invoke-static {v3, p2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0, v4}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->handleHover(Z)V

    .line 94
    invoke-direct {p0, p1, v4}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->refreshTargetView(Landroid/view/View;Z)V

    .line 97
    return v0

    .line 98
    :pswitch_61  #0x3
    const-string v0, "onDrag drop"

    .line 100
    invoke-static {v3, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0, v4}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->handleHover(Z)V

    .line 106
    invoke-static {}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getInstance()Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    .line 109
    move-result-object v0

    .line 110
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v0, v1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->isFloatWindowShow(Landroid/content/Context;)Z

    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_8a

    .line 120
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    .line 123
    move-result-object v0

    .line 124
    if-eqz v0, :cond_8a

    .line 126
    invoke-virtual {v0}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    .line 129
    move-result-object v0

    .line 130
    const-string v1, "mirror_inner"

    .line 132
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_8a

    .line 138
    return v4

    .line 139
    :cond_8a
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->isDragView(Landroid/view/View;Landroid/view/DragEvent;)Z

    .line 142
    move-result p1

    .line 143
    if-eqz p1, :cond_91

    .line 145
    return v4

    .line 146
    :cond_91
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->mDragTag:Ljava/lang/String;

    .line 148
    invoke-virtual {p0, p2, p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->handleDrop(Landroid/view/DragEvent;Ljava/lang/String;)Z

    .line 151
    move-result p1

    .line 152
    return p1

    .line 153
    :pswitch_98  #0x2
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    .line 156
    move-result p1

    .line 157
    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    .line 160
    move-result v1

    .line 161
    invoke-virtual {p0, p1, v1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->processLocation(FF)V

    .line 164
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    .line 167
    move-result p1

    .line 168
    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    .line 171
    move-result v1

    .line 172
    invoke-direct {p0, p1, v1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->isMove(FF)Z

    .line 175
    move-result p1

    .line 176
    if-eqz p1, :cond_b8

    .line 178
    iget-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->mNeedNotifyStartDrag:Z

    .line 180
    if-eqz p1, :cond_b8

    .line 182
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->startDragReal(Landroid/view/DragEvent;)V

    .line 185
    :cond_b8
    if-eqz v0, :cond_c5

    .line 187
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 190
    move-result-object p1

    .line 191
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/PasteFileInstance;->isActionRunning()Z

    .line 194
    move-result p1

    .line 195
    if-nez p1, :cond_c5

    .line 197
    goto :goto_c6

    .line 198
    :cond_c5
    move v2, v4

    .line 199
    :goto_c6
    return v2

    .line 200
    :pswitch_c7  #0x1
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    .line 203
    move-result p1

    .line 204
    float-to-int p1, p1

    .line 205
    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->mStartX:I

    .line 207
    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    .line 210
    move-result p1

    .line 211
    float-to-int p1, p1

    .line 212
    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->mStartY:I

    .line 214
    iput-boolean v2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->mNeedNotifyStartDrag:Z

    .line 216
    const-string p1, "onDrag start + mTag = "

    .line 218
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    move-result-object p1

    .line 222
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->mDragTag:Ljava/lang/String;

    .line 224
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    move-result-object p1

    .line 231
    invoke-static {v3, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    return v0

    .line 235
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

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->mNeedNotifyStartDrag:Z

    .line 4
    return-void
.end method
