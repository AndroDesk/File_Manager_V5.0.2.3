.class public final Landroidx/recyclerview/widget/c$i;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field public a:Landroidx/recyclerview/widget/RecyclerView$b0;

.field public b:Landroidx/recyclerview/widget/RecyclerView$b0;

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$b0;IIII)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/recyclerview/widget/c$i;->a:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 6
    iput-object p2, p0, Landroidx/recyclerview/widget/c$i;->b:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 8
    iput p3, p0, Landroidx/recyclerview/widget/c$i;->c:I

    .line 10
    iput p4, p0, Landroidx/recyclerview/widget/c$i;->d:I

    .line 12
    iput p5, p0, Landroidx/recyclerview/widget/c$i;->e:I

    .line 14
    iput p6, p0, Landroidx/recyclerview/widget/c$i;->f:I

    .line 16
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "ChangeInfo{oldHolder="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/recyclerview/widget/c$i;->a:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", newHolder="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Landroidx/recyclerview/widget/c$i;->b:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ", fromX="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget v1, p0, Landroidx/recyclerview/widget/c$i;->c:I

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, ", fromY="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget v1, p0, Landroidx/recyclerview/widget/c$i;->d:I

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, ", toX="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget v1, p0, Landroidx/recyclerview/widget/c$i;->e:I

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, ", toY="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget v1, p0, Landroidx/recyclerview/widget/c$i;->f:I

    .line 59
    const/16 v2, 0x7d

    .line 61
    invoke-static {v0, v1, v2}, Lf0/e;->d(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    return-object v0
.end method
