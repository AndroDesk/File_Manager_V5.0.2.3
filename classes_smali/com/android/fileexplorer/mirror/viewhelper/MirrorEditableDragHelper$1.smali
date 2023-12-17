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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    const-string v0, "onTouch event = "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Drag_EditableDragHelper"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/mirror/MirrorManagerImpl;->get(Landroid/content/Context;)Lcom/xiaomi/mirror/MirrorManagerImpl;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/xiaomi/mirror/MirrorManagerImpl;->isEventFromMirror(Landroid/view/InputEvent;)Z

    move-result p1

    invoke-static {v1, p1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->access$002(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;Z)Z

    const/high16 p1, 0x3f800000  # 1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_b4

    if-eq v0, v1, :cond_8e

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3b

    const/4 v3, 0x3

    if-eq v0, v3, :cond_8e

    goto/16 :goto_ed

    :cond_3b
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;

    invoke-static {p1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->access$500(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;)Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;

    move-result-object p1

    if-eqz p1, :cond_80

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->access$100(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x40000000  # 2.0f

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_6d

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;

    invoke-static {p2}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->access$200(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;)I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_80

    :cond_6d
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;

    invoke-static {p1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->access$500(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;)Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;

    invoke-static {p2}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->access$500(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;)Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->triggerDrag(I)V

    :cond_80
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;

    invoke-static {p1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->access$400(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v1

    :cond_8e
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->access$300(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;)Z

    move-result v0

    if-eqz v0, :cond_ed

    new-array v0, v1, [Landroid/view/View;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;

    invoke-static {v1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->access$400(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    new-array v1, v2, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v0, p1, v1}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p1

    new-array v0, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, v0}, Lmiuix/animation/ITouchStyle;->touchUp([Lmiuix/animation/base/AnimConfig;)V

    goto :goto_ed

    :cond_b4
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v0, v3}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->access$102(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;I)I

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v0, v3}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->access$202(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;I)I

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->access$300(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;)Z

    move-result v0

    if-eqz v0, :cond_ed

    new-array v0, v1, [Landroid/view/View;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;

    invoke-static {v1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->access$400(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    new-array v1, v2, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v0, p1, v1}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p1

    new-array v0, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, v0}, Lmiuix/animation/ITouchStyle;->touchDown([Lmiuix/animation/base/AnimConfig;)V

    :cond_ed
    :goto_ed
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;

    invoke-static {p1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->access$600(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;)Landroid/view/GestureDetector;

    move-result-object p1

    if-eqz p1, :cond_100

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;

    invoke-static {p1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->access$600(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;)Landroid/view/GestureDetector;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_100
    return v2
.end method
