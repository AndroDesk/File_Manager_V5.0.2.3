.class Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$1;
.super Ljava/lang/Object;
.source "EditableDragHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->access$002(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;Z)Z

    .line 7
    const-string v0, "touchDown"

    .line 9
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 12
    new-array v0, v1, [Landroid/view/View;

    .line 14
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;

    .line 16
    invoke-static {v1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->access$100(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;)Landroid/view/View;

    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    aput-object v1, v0, v2

    .line 23
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 30
    move-result-object v0

    .line 31
    new-array v1, v2, [Lmiuix/animation/base/AnimConfig;

    .line 33
    invoke-interface {v0, v1}, Lmiuix/animation/ITouchStyle;->touchDown([Lmiuix/animation/base/AnimConfig;)V

    .line 36
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 39
    return-void
.end method
