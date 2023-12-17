.class Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CheckableChildRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

.field public final synthetic val$viewHolder:Landroidx/recyclerview/widget/RecyclerView$b0;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$1;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$1;->val$viewHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 5

    .line 1
    const/4 p1, 0x1

    .line 2
    new-array v0, p1, [Landroid/view/View;

    .line 4
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$1;->val$viewHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 6
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v1, v0, v2

    .line 11
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Lmiuix/animation/ICancelableStyle;->cancel()V

    .line 22
    new-array v0, p1, [Landroid/view/View;

    .line 24
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$1;->val$viewHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 26
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 28
    aput-object v1, v0, v2

    .line 30
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 37
    move-result-object v0

    .line 38
    new-array p1, p1, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 40
    sget-object v1, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    .line 42
    aput-object v1, p1, v2

    .line 44
    const v1, 0x3f8ccccd  # 1.1f

    .line 47
    invoke-interface {v0, v1, p1}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 50
    move-result-object p1

    .line 51
    new-array v0, v2, [Lmiuix/animation/base/AnimConfig;

    .line 53
    invoke-interface {p1, v0}, Lmiuix/animation/ITouchStyle;->touchUp([Lmiuix/animation/base/AnimConfig;)V

    .line 56
    return-void
.end method
