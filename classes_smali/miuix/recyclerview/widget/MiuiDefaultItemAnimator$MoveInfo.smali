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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$b0;IIII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$b0;

    iput p2, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;->fromX:I

    iput p3, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;->fromY:I

    iput p4, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;->toX:I

    iput p5, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;->toY:I

    return-void
.end method
