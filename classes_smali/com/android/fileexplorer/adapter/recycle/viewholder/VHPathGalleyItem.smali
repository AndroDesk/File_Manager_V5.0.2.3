.class public Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPathGalleyItem;
.super Lcom/android/fileexplorer/adapter/recycle/viewholder/NoEditableViewHolder;
.source "VHPathGalleyItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/adapter/recycle/viewholder/NoEditableViewHolder<",
        "Lcom/android/fileexplorer/model/PathSegment;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsLast:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/NoEditableViewHolder;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 4
    return-void
.end method


# virtual methods
.method public onBind(Lcom/android/fileexplorer/model/PathSegment;IZZ)V
    .registers 10

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/viewholder/NoEditableViewHolder;->onBind(Ljava/lang/Object;IZZ)V

    .line 3
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const p4, 0x7f0a030d

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 4
    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const v0, 0x7f0a030a

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    .line 5
    invoke-virtual {p3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 6
    iget-object p1, p1, Lcom/android/fileexplorer/model/PathSegment;->name:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    move-result p1

    const v1, 0x7f06004e

    const v2, 0x7f0604ee

    const v3, 0x7f060560

    const v4, 0x7f0604ef

    if-eqz p1, :cond_57

    .line 8
    iget-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPathGalleyItem;->mIsLast:Z

    if-eqz p1, :cond_41

    goto :goto_42

    :cond_41
    move v3, v4

    :goto_42
    invoke-static {v3}, Lcom/android/fileexplorer/util/ResUtil;->getColor(I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    iget-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPathGalleyItem;->mIsLast:Z

    if-eqz p1, :cond_4e

    goto :goto_4f

    :cond_4e
    move v1, v2

    :goto_4f
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_71

    .line 10
    :cond_57
    iget-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPathGalleyItem;->mIsLast:Z

    if-eqz p1, :cond_5c

    goto :goto_5d

    :cond_5c
    move v3, v4

    :goto_5d
    invoke-static {v3}, Lcom/android/fileexplorer/util/ResUtil;->getColor(I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    iget-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPathGalleyItem;->mIsLast:Z

    if-eqz p1, :cond_69

    goto :goto_6a

    :cond_69
    move v1, v2

    :goto_6a
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 12
    :goto_71
    iget-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPathGalleyItem;->mIsLast:Z

    if-eqz p1, :cond_78

    const/16 p1, 0x8

    goto :goto_79

    :cond_78
    const/4 p1, 0x0

    :goto_79
    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance p3, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPathGalleyItem$1;

    invoke-direct {p3, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPathGalleyItem$1;-><init>(Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPathGalleyItem;I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;IZZ)V
    .registers 5

    .line 1
    check-cast p1, Lcom/android/fileexplorer/model/PathSegment;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPathGalleyItem;->onBind(Lcom/android/fileexplorer/model/PathSegment;IZZ)V

    return-void
.end method

.method public setIfLast(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPathGalleyItem;->mIsLast:Z

    .line 3
    return-void
.end method
