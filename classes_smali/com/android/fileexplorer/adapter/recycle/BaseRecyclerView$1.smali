.class Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "BaseRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setOnRightClickListener(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$OnRightClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onContextClick(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_27

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 10
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->access$000(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$OnRightClickListener;

    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_27

    .line 16
    const-string v0, "BaseRecyclerView"

    .line 18
    const-string v1, "onContextClick: right click"

    .line 20
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 25
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->access$000(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$OnRightClickListener;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 32
    move-result v1

    .line 33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 36
    move-result v2

    .line 37
    invoke-interface {v0, v1, v2}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$OnRightClickListener;->onRightClick(FF)V

    .line 40
    :cond_27
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onContextClick(Landroid/view/MotionEvent;)Z

    .line 43
    move-result p1

    .line 44
    return p1
.end method
