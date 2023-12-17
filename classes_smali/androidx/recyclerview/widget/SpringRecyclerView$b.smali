.class public final Landroidx/recyclerview/widget/SpringRecyclerView$b;
.super Landroidx/recyclerview/widget/RecyclerView$k;
.source "SpringRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/SpringRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$k;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;)Landroid/widget/EdgeEffect;
    .registers 3

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/SpringRecyclerView$a;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/SpringRecyclerView$a;-><init>(Landroid/content/Context;)V

    .line 10
    return-object v0
.end method
