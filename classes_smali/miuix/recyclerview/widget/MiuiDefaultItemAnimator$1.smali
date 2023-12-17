.class Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$1;
.super Ljava/lang/Object;
.source "MiuiDefaultItemAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

.field public final synthetic val$moves:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;Ljava/util/ArrayList;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$1;->this$0:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    .line 3
    iput-object p2, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 1
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_22

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;

    .line 19
    iget-object v2, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$1;->this$0:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    .line 21
    iget-object v3, v1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 23
    iget v4, v1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;->fromX:I

    .line 25
    iget v5, v1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;->fromY:I

    .line 27
    iget v6, v1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;->toX:I

    .line 29
    iget v7, v1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;->toY:I

    .line 31
    invoke-virtual/range {v2 .. v7}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$b0;IIII)V

    .line 34
    goto :goto_6

    .line 35
    :cond_22
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 40
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$1;->this$0:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    .line 42
    iget-object v0, v0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 44
    iget-object v1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method
