.class public abstract Lcom/android/fileexplorer/adapter/recycle/viewhelper/RecentGridSpanCountLookup;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;
.source "RecentGridSpanCountLookup.java"


# instance fields
.field private final mSpanCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/RecentGridSpanCountLookup;->mSpanCount:I

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/RecentGridSpanCountLookup;->isChild(I)Z

    move-result p1

    if-nez p1, :cond_9

    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/RecentGridSpanCountLookup;->mSpanCount:I

    return p1

    :cond_9
    const/4 p1, 0x1

    return p1
.end method

.method public abstract isChild(I)Z
.end method
