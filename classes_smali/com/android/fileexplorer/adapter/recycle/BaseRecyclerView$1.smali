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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onContextClick(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->access$000(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$OnRightClickListener;

    move-result-object v0

    if-eqz v0, :cond_27

    const-string v0, "BaseRecyclerView"

    const-string v1, "onContextClick: right click"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->access$000(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$OnRightClickListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$OnRightClickListener;->onRightClick(FF)V

    :cond_27
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onContextClick(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
