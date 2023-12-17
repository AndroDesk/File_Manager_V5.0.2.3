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
.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    .line 1
    const-string p1, "onTouch event = "

    .line 3
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    const-string v0, "Drag_EditableDragHelper"

    .line 20
    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 26
    move-result p1

    .line 27
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;

    .line 29
    invoke-static {v0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->access$202(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 32
    const/4 v0, 0x0

    .line 33
    if-eqz p1, :cond_6f

    .line 35
    const/4 p2, 0x1

    .line 36
    if-eq p1, p2, :cond_3e

    .line 38
    const/4 v1, 0x2

    .line 39
    if-eq p1, v1, :cond_2c

    .line 41
    const/4 v1, 0x3

    .line 42
    if-eq p1, v1, :cond_3e

    .line 44
    goto :goto_9f

    .line 45
    :cond_2c
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;

    .line 47
    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->access$500(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;)Z

    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_9f

    .line 53
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;

    .line 55
    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->access$600(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;)Ljava/lang/Runnable;

    .line 58
    move-result-object p1

    .line 59
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->cancelTask(Ljava/lang/Runnable;)V

    .line 62
    goto :goto_9f

    .line 63
    :cond_3e
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;

    .line 65
    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->access$500(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;)Z

    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_4f

    .line 71
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;

    .line 73
    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->access$600(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;)Ljava/lang/Runnable;

    .line 76
    move-result-object p1

    .line 77
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->cancelTask(Ljava/lang/Runnable;)V

    .line 80
    :cond_4f
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;

    .line 82
    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->access$000(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;)Z

    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_9f

    .line 88
    new-array p1, p2, [Landroid/view/View;

    .line 90
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;

    .line 92
    invoke-static {p2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->access$100(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;)Landroid/view/View;

    .line 95
    move-result-object p2

    .line 96
    aput-object p2, p1, v0

    .line 98
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 101
    move-result-object p1

    .line 102
    invoke-interface {p1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 105
    move-result-object p1

    .line 106
    new-array p2, v0, [Lmiuix/animation/base/AnimConfig;

    .line 108
    invoke-interface {p1, p2}, Lmiuix/animation/ITouchStyle;->touchUp([Lmiuix/animation/base/AnimConfig;)V

    .line 111
    goto :goto_9f

    .line 112
    :cond_6f
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;

    .line 114
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 117
    move-result v1

    .line 118
    float-to-int v1, v1

    .line 119
    invoke-static {p1, v1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->access$302(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;I)I

    .line 122
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;

    .line 124
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 127
    move-result p2

    .line 128
    float-to-int p2, p2

    .line 129
    invoke-static {p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->access$402(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;I)I

    .line 132
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;

    .line 134
    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->access$500(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;)Z

    .line 137
    move-result p1

    .line 138
    if-eqz p1, :cond_9f

    .line 140
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;

    .line 142
    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->access$600(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;)Ljava/lang/Runnable;

    .line 145
    move-result-object p1

    .line 146
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->cancelTask(Ljava/lang/Runnable;)V

    .line 149
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;

    .line 151
    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->access$600(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;)Ljava/lang/Runnable;

    .line 154
    move-result-object p1

    .line 155
    const-wide/16 v1, 0x32

    .line 157
    invoke-static {p1, v1, v2}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    .line 160
    :cond_9f
    :goto_9f
    return v0
.end method
