.class public final Landroidx/viewpager2/widget/OriginalViewPager2$n;
.super Ljava/lang/Object;
.source "OriginalViewPager2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/widget/OriginalViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "n"
.end annotation


# instance fields
.field public final a:I

.field public final b:Lmiuix/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Lmiuix/recyclerview/widget/RecyclerView;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p2, p0, Landroidx/viewpager2/widget/OriginalViewPager2$n;->a:I

    .line 6
    iput-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$n;->b:Lmiuix/recyclerview/widget/RecyclerView;

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$n;->b:Lmiuix/recyclerview/widget/RecyclerView;

    .line 3
    iget v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$n;->a:I

    .line 5
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 8
    return-void
.end method
