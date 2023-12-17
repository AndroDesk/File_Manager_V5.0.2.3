.class Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;
.super Ljava/lang/Object;
.source "MiuiDefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChangeInfo"
.end annotation


# instance fields
.field public fromX:I

.field public fromY:I

.field public newHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

.field public oldHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

.field public toX:I

.field public toY:I


# direct methods
.method private constructor <init>(Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 3
    iput-object p2, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$b0;IIII)V
    .registers 7

    .line 4
    invoke-direct {p0, p1, p2}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;-><init>(Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 5
    iput p3, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->fromX:I

    .line 6
    iput p4, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->fromY:I

    .line 7
    iput p5, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->toX:I

    .line 8
    iput p6, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->toY:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "ChangeInfo{oldHolder="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", newHolder="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ", fromX="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget v1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->fromX:I

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, ", fromY="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget v1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->fromY:I

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, ", toX="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget v1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->toX:I

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, ", toY="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget v1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->toY:I

    .line 59
    const/16 v2, 0x7d

    .line 61
    invoke-static {v0, v1, v2}, Lf0/e;->d(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    return-object v0
.end method
