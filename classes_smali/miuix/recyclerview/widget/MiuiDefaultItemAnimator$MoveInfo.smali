.class Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;
.super Ljava/lang/Object;
.source "MiuiDefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MoveInfo"
.end annotation


# instance fields
.field public fromX:I

.field public fromY:I

.field public holder:Landroidx/recyclerview/widget/RecyclerView$b0;

.field public toX:I

.field public toY:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$b0;IIII)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 6
    iput p2, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;->fromX:I

    .line 8
    iput p3, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;->fromY:I

    .line 10
    iput p4, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;->toX:I

    .line 12
    iput p5, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;->toY:I

    .line 14
    return-void
.end method
