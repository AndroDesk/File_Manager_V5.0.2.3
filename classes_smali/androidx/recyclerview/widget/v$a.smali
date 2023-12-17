.class public final Landroidx/recyclerview/widget/v$a;
.super Landroidx/recyclerview/widget/RecyclerView$s;
.source "SnapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Landroidx/recyclerview/widget/v;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/v;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/v$a;->b:Landroidx/recyclerview/widget/v;

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$s;-><init>()V

    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Landroidx/recyclerview/widget/v$a;->a:Z

    .line 9
    return-void
.end method


# virtual methods
.method public final onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$s;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 4
    if-nez p2, :cond_11

    .line 6
    iget-boolean p1, p0, Landroidx/recyclerview/widget/v$a;->a:Z

    .line 8
    if-eqz p1, :cond_11

    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Landroidx/recyclerview/widget/v$a;->a:Z

    .line 13
    iget-object p1, p0, Landroidx/recyclerview/widget/v$a;->b:Landroidx/recyclerview/widget/v;

    .line 15
    invoke-virtual {p1}, Landroidx/recyclerview/widget/v;->f()V

    .line 18
    :cond_11
    return-void
.end method

.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    .line 1
    if-nez p2, :cond_4

    .line 3
    if-eqz p3, :cond_7

    .line 5
    :cond_4
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Landroidx/recyclerview/widget/v$a;->a:Z

    .line 8
    :cond_7
    return-void
.end method
