.class public Lcom/android/fileexplorer/controller/DocDataRefreshManager;
.super Ljava/lang/Object;
.source "DocDataRefreshManager.java"

# interfaces
.implements Lcom/android/fileexplorer/controller/IDocDataHandler;


# instance fields
.field private mTabRefreshStatus:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/controller/DocDataRefreshManager;->mTabRefreshStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Lcom/android/fileexplorer/controller/DocDataRefreshManager;->init()V

    return-void
.end method


# virtual methods
.method public getSingleStatueAndReset(I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/controller/DocDataRefreshManager;->mTabRefreshStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/fileexplorer/controller/DocDataRefreshManager;->refreshSingleStatus(IZ)V

    return v0
.end method

.method public init()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/controller/DocDataRefreshManager;->mTabRefreshStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    return-void
.end method

.method public refreshAllStatue(IZI)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    :goto_4
    if-ge v0, p1, :cond_12

    if-nez p2, :cond_b

    if-ne p3, v0, :cond_b

    goto :goto_f

    :cond_b
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/fileexplorer/controller/DocDataRefreshManager;->refreshSingleStatus(IZ)V

    :goto_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_12
    return-void
.end method

.method public refreshSingleStatus(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/controller/DocDataRefreshManager;->mTabRefreshStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method
