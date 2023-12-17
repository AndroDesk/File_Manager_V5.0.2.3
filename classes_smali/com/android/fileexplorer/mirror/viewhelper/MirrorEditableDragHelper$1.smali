.class Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$1;
.super Ljava/lang/Object;
.source "MirrorEditableDragHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1
    const-string v0, "onTouch event = "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "Drag_EditableDragHelper"

    .line 20
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1}, Lcom/xiaomi/mirror/MirrorManagerImpl;->get(Landroid/content/Context;)Lcom/xiaomi/mirror/MirrorManagerImpl;

    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1, p2}, Lcom/xiaomi/mirror/MirrorManagerImpl;->isEventFromMirror(Landroid/view/InputEvent;)Z

    .line 40
    move-result p1

    .line 41
    invoke-static {v1, p1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->access$002(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;Z)Z

    .line 44
    const/high16 p1, 0x3f800000  # 1.0f

    .line 46
    const/4 v1, 0x1

    .line 47
    const/4 v2, 0x0

    .line 48
    if-eqz v0, :cond_b4

    .line 50
    if-eq v0, v1, :cond_8e

    .line 52
    const/4 v3, 0x2

    .line 53
    if-eq v0, v3, :cond_3b

    .line 55
    const/4 v3, 0x3

    .line 56
    if-eq v0, v3, :cond_8e

    .line 58
    goto/16 :goto_ed

    .line 60
    :cond_3b
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;

    .line 62
    invoke-static {p1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->access$500(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;)Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;

    .line 65
    move-result-object p1

    .line 66
    if-eqz p1, :cond_80

    .line 68
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 71
    move-result p1

    .line 72
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;

    .line 74
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->access$100(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;)I

    .line 77
    move-result v0

    .line 78
    int-to-float v0, v0

    .line 79
    sub-float/2addr p1, v0

    .line 80
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 83
    move-result p1

    .line 84
    const/high16 v0, 0x40000000  # 2.0f

    .line 86
    cmpl-float p1, p1, v0

    .line 88
    if-gtz p1, :cond_6d

    .line 90
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 93
    move-result p1

    .line 94
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;

    .line 96
    invoke-static {p2}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->access$200(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;)I

    .line 99
    move-result p2

    .line 100
    int-to-float p2, p2

    .line 101
    sub-float/2addr p1, p2

    .line 102
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 105
    move-result p1

    .line 106
    cmpl-float p1, p1, v0

    .line 108
    if-lez p1, :cond_80

    .line 110
    :cond_6d
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;

    .line 112
    invoke-static {p1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->access$500(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;)Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;

    .line 115
    move-result-object p1

    .line 116
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;

    .line 118
    invoke-static {p2}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->access$500(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;)Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;

    .line 121
    move-result-object p2

    .line 122
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    .line 125
    move-result p2

    .line 126
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->triggerDrag(I)V

    .line 129
    :cond_80
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;

    .line 131
    invoke-static {p1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->access$400(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;)Landroid/view/View;

    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 138
    move-result-object p1

    .line 139
    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 142
    return v1

    .line 143
    :cond_8e
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;

    .line 145
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->access$300(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;)Z

    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_ed

    .line 151
    new-array v0, v1, [Landroid/view/View;

    .line 153
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;

    .line 155
    invoke-static {v1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->access$400(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;)Landroid/view/View;

    .line 158
    move-result-object v1

    .line 159
    aput-object v1, v0, v2

    .line 161
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 164
    move-result-object v0

    .line 165
    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 168
    move-result-object v0

    .line 169
    new-array v1, v2, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 171
    invoke-interface {v0, p1, v1}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 174
    move-result-object p1

    .line 175
    new-array v0, v2, [Lmiuix/animation/base/AnimConfig;

    .line 177
    invoke-interface {p1, v0}, Lmiuix/animation/ITouchStyle;->touchUp([Lmiuix/animation/base/AnimConfig;)V

    .line 180
    goto :goto_ed

    .line 181
    :cond_b4
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;

    .line 183
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 186
    move-result v3

    .line 187
    float-to-int v3, v3

    .line 188
    invoke-static {v0, v3}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->access$102(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;I)I

    .line 191
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;

    .line 193
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 196
    move-result v3

    .line 197
    float-to-int v3, v3

    .line 198
    invoke-static {v0, v3}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->access$202(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;I)I

    .line 201
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;

    .line 203
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->access$300(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;)Z

    .line 206
    move-result v0

    .line 207
    if-eqz v0, :cond_ed

    .line 209
    new-array v0, v1, [Landroid/view/View;

    .line 211
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;

    .line 213
    invoke-static {v1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->access$400(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;)Landroid/view/View;

    .line 216
    move-result-object v1

    .line 217
    aput-object v1, v0, v2

    .line 219
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 222
    move-result-object v0

    .line 223
    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 226
    move-result-object v0

    .line 227
    new-array v1, v2, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 229
    invoke-interface {v0, p1, v1}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 232
    move-result-object p1

    .line 233
    new-array v0, v2, [Lmiuix/animation/base/AnimConfig;

    .line 235
    invoke-interface {p1, v0}, Lmiuix/animation/ITouchStyle;->touchDown([Lmiuix/animation/base/AnimConfig;)V

    .line 238
    :cond_ed
    :goto_ed
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;

    .line 240
    invoke-static {p1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->access$600(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;)Landroid/view/GestureDetector;

    .line 243
    move-result-object p1

    .line 244
    if-eqz p1, :cond_100

    .line 246
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;

    .line 248
    invoke-static {p1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->access$600(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;)Landroid/view/GestureDetector;

    .line 251
    move-result-object p1

    .line 252
    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 255
    move-result p1

    .line 256
    return p1

    .line 257
    :cond_100
    return v2
.end method
