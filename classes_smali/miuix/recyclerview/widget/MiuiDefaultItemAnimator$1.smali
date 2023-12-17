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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;Ljava/util/ArrayList;)V
    .registers 3

    iput-object p1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$1;->this$0:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    iput-object p2, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;

    iget-object v2, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$1;->this$0:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    iget-object v3, v1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$b0;

    iget v4, v1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;->fromX:I

    iget v5, v1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;->fromY:I

    iget v6, v1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;->toX:I

    iget v7, v1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;->toY:I

    invoke-virtual/range {v2 .. v7}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$b0;IIII)V

    goto :goto_6

    :cond_22
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$1;->this$0:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    iget-object v0, v0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    iget-object v1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
