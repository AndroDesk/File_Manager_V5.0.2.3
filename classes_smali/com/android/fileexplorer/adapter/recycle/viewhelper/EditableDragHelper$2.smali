.class Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$2;
.super Ljava/lang/Object;
.source "EditableDragHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    const-string p1, "onTouch event = "

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Drag_EditableDragHelper"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;

    invoke-static {v0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->access$202(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    const/4 v0, 0x0

    if-eqz p1, :cond_6f

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3e

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2c

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3e

    goto :goto_9f

    :cond_2c
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;

    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->access$500(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;)Z

    move-result p1

    if-eqz p1, :cond_9f

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;

    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->access$600(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->cancelTask(Ljava/lang/Runnable;)V

    goto :goto_9f

    :cond_3e
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;

    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->access$500(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;)Z

    move-result p1

    if-eqz p1, :cond_4f

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;

    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->access$600(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->cancelTask(Ljava/lang/Runnable;)V

    :cond_4f
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;

    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->access$000(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;)Z

    move-result p1

    if-eqz p1, :cond_9f

    new-array p1, p2, [Landroid/view/View;

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;

    invoke-static {p2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->access$100(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;)Landroid/view/View;

    move-result-object p2

    aput-object p2, p1, v0

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p1

    new-array p2, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p2}, Lmiuix/animation/ITouchStyle;->touchUp([Lmiuix/animation/base/AnimConfig;)V

    goto :goto_9f

    :cond_6f
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-static {p1, v1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->access$302(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;I)I

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-static {p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->access$402(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;I)I

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;

    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->access$500(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;)Z

    move-result p1

    if-eqz p1, :cond_9f

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;

    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->access$600(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->cancelTask(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;

    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->access$600(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v1, 0x32

    invoke-static {p1, v1, v2}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    :cond_9f
    :goto_9f
    return v0
.end method
