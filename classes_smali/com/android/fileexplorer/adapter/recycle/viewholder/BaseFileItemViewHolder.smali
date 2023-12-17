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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V
    .registers 3

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mViewMode:I

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    return-void
.end method


# virtual methods
.method public canDrag()Z
    .registers 5

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->isFolder()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemViewType()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canDrag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BaseFileItemViewHolder"

    invoke-static {v3, v2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-eqz v0, :cond_58

    if-eq v0, v2, :cond_58

    const/4 v3, 0x3

    if-eq v0, v3, :cond_58

    const/4 v3, 0x4

    if-eq v0, v3, :cond_58

    const/4 v3, 0x5

    if-eq v0, v3, :cond_58

    const/16 v3, 0xa

    if-eq v0, v3, :cond_58

    const/16 v3, 0xc

    if-eq v0, v3, :cond_58

    const/16 v3, 0x1d

    if-eq v0, v3, :cond_58

    const/16 v3, 0xe

    if-eq v0, v3, :cond_58

    const/16 v3, 0xf

    if-eq v0, v3, :cond_58

    const/16 v3, 0x10

    if-eq v0, v3, :cond_58

    const/16 v3, 0x15

    if-eq v0, v3, :cond_58

    const/16 v3, 0x17

    if-eq v0, v3, :cond_58

    const/16 v3, 0x1e

    if-eq v0, v3, :cond_58

    const/16 v3, 0x18

    if-ne v0, v3, :cond_59

    :cond_58
    move v1, v2

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

    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mViewMode:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isPickOthersMode()Z
    .registers 4

    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mViewMode:I

    const/4 v1, 0x1

    if-eq v1, v0, :cond_d

    const/4 v2, 0x4

    if-eq v2, v0, :cond_d

    const/4 v2, 0x3

    if-ne v2, v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :cond_d
    :goto_d
    return v1
.end method

.method public isViewMode()Z
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mViewMode:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

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

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

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

    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mViewMode:I

    return-void
.end method
