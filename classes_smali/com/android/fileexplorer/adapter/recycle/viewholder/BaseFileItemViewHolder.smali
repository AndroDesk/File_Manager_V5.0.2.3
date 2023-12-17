.class public Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source "BaseFileItemViewHolder.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/recycle/modecallback/ViewHolderEditableCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$b0;",
        "Lcom/android/fileexplorer/adapter/recycle/modecallback/ViewHolderEditableCallback;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseFileItemViewHolder"


# instance fields
.field public mData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

.field public mViewMode:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mViewMode:I

    .line 7
    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    .line 9
    return-void
.end method


# virtual methods
.method public canDrag()Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->isFolder()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemViewType()I

    .line 12
    move-result v0

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    const-string v3, "canDrag: "

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    const-string v3, "BaseFileItemViewHolder"

    .line 32
    invoke-static {v3, v2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz v0, :cond_58

    .line 38
    if-eq v0, v2, :cond_58

    .line 40
    const/4 v3, 0x3

    .line 41
    if-eq v0, v3, :cond_58

    .line 43
    const/4 v3, 0x4

    .line 44
    if-eq v0, v3, :cond_58

    .line 46
    const/4 v3, 0x5

    .line 47
    if-eq v0, v3, :cond_58

    .line 49
    const/16 v3, 0xa

    .line 51
    if-eq v0, v3, :cond_58

    .line 53
    const/16 v3, 0xc

    .line 55
    if-eq v0, v3, :cond_58

    .line 57
    const/16 v3, 0x1d

    .line 59
    if-eq v0, v3, :cond_58

    .line 61
    const/16 v3, 0xe

    .line 63
    if-eq v0, v3, :cond_58

    .line 65
    const/16 v3, 0xf

    .line 67
    if-eq v0, v3, :cond_58

    .line 69
    const/16 v3, 0x10

    .line 71
    if-eq v0, v3, :cond_58

    .line 73
    const/16 v3, 0x15

    .line 75
    if-eq v0, v3, :cond_58

    .line 77
    const/16 v3, 0x17

    .line 79
    if-eq v0, v3, :cond_58

    .line 81
    const/16 v3, 0x1e

    .line 83
    if-eq v0, v3, :cond_58

    .line 85
    const/16 v3, 0x18

    .line 87
    if-ne v0, v3, :cond_59

    .line 89
    :cond_58
    move v1, v2

    .line 90
    :cond_59
    return v1
.end method

.method public hasAnimationStarted()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isFolder()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isPickFolderMode()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mViewMode:I

    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v1, v0, :cond_7

    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    return v0
.end method

.method public isPickOthersMode()Z
    .registers 4

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mViewMode:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v1, v0, :cond_d

    .line 6
    const/4 v2, 0x4

    .line 7
    if-eq v2, v0, :cond_d

    .line 9
    const/4 v2, 0x3

    .line 10
    if-ne v2, v0, :cond_c

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v1, 0x0

    .line 14
    :cond_d
    :goto_d
    return v1
.end method

.method public isViewMode()Z
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mViewMode:I

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public notifyActionModeChange(Z)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Z)V
    .registers 2

    return-void
.end method

.method public onAnimationStop(Z)V
    .registers 2

    return-void
.end method

.method public onAnimationUpdate(ZF)V
    .registers 3

    return-void
.end method

.method public onBind(Ljava/lang/Object;IZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IZZ)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    .line 3
    return-void
.end method

.method public onClearAnimation()V
    .registers 1

    return-void
.end method

.method public onUpdateEditable(Z)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setChoiceMode(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mViewMode:I

    .line 3
    return-void
.end method
