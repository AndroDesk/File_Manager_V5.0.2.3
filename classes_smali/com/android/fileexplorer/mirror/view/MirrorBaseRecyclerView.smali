.class public Lcom/android/fileexplorer/mirror/view/MirrorBaseRecyclerView;
.super Lmiuix/recyclerview/widget/RecyclerView;
.source "MirrorBaseRecyclerView.java"


# instance fields
.field private mIsActionMode:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/mirror/view/MirrorBaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/mirror/view/MirrorBaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lmiuix/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public isActionMode()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorBaseRecyclerView;->mIsActionMode:Z

    return v0
.end method

.method public setActionMode(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorBaseRecyclerView;->mIsActionMode:Z

    return-void
.end method
