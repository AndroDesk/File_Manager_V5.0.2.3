.class public Lcom/android/fileexplorer/controller/DocDataRefreshManager;
.super Ljava/lang/Object;
.source "DocDataRefreshManager.java"

# interfaces
.implements Lcom/android/fileexplorer/controller/IDocDataHandler;


# instance fields
.field private mTabRefreshStatus:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 6
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/controller/DocDataRefreshManager;->mTabRefreshStatus:Landroid/util/SparseBooleanArray;

    .line 11
    invoke-virtual {p0}, Lcom/android/fileexplorer/controller/DocDataRefreshManager;->init()V

    .line 14
    return-void
.end method


# virtual methods
.method public getSingleStatueAndReset(I)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/controller/DocDataRefreshManager;->mTabRefreshStatus:Landroid/util/SparseBooleanArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, p1, v1}, Lcom/android/fileexplorer/controller/DocDataRefreshManager;->refreshSingleStatus(IZ)V

    .line 11
    return v0
.end method

.method public init()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/controller/DocDataRefreshManager;->mTabRefreshStatus:Landroid/util/SparseBooleanArray;

    .line 3
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 6
    return-void
.end method

.method public refreshAllStatue(IZI)V
    .registers 6

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    const/4 v0, 0x0

    .line 5
    :goto_4
    if-ge v0, p1, :cond_12

    .line 7
    if-nez p2, :cond_b

    .line 9
    if-ne p3, v0, :cond_b

    .line 11
    goto :goto_f

    .line 12
    :cond_b
    const/4 v1, 0x1

    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/android/fileexplorer/controller/DocDataRefreshManager;->refreshSingleStatus(IZ)V

    .line 16
    :goto_f
    add-int/lit8 v0, v0, 0x1

    .line 18
    goto :goto_4

    .line 19
    :cond_12
    return-void
.end method

.method public refreshSingleStatus(IZ)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/controller/DocDataRefreshManager;->mTabRefreshStatus:Landroid/util/SparseBooleanArray;

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 6
    return-void
.end method
