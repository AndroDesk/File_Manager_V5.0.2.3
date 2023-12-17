.class public abstract Lcom/android/fileexplorer/adapter/recycle/viewhelper/RecentGridSpanCountLookup;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;
.source "RecentGridSpanCountLookup.java"


# instance fields
.field private final mSpanCount:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/RecentGridSpanCountLookup;->mSpanCount:I

    .line 6
    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/RecentGridSpanCountLookup;->isChild(I)Z

    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_9

    .line 7
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/RecentGridSpanCountLookup;->mSpanCount:I

    .line 9
    return p1

    .line 10
    :cond_9
    const/4 p1, 0x1

    .line 11
    return p1
.end method

.method public abstract isChild(I)Z
.end method
