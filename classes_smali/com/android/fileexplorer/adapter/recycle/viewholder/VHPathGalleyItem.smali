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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/NoEditableViewHolder;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    return-void
.end method


# virtual methods
.method public onBind(Lcom/android/fileexplorer/model/PathSegment;IZZ)V
    .registers 10

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/viewholder/NoEditableViewHolder;->onBind(Ljava/lang/Object;IZZ)V

    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const p4, 0x7f032e9b

    invoke-static {p4}, Lnp/NPFog;->d(I)I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const v0, 0x7f032e9c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iget-object p1, p1, Lcom/android/fileexplorer/model/PathSegment;->name:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    move-result p1

    const v1, 0x7f06004e

    const v2, 0x7f0604ee

    const v3, 0x7f060560

    const v4, 0x7f0604ef

    if-eqz p1, :cond_5f

    iget-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPathGalleyItem;->mIsLast:Z

    if-eqz p1, :cond_49

    goto :goto_4a

    :cond_49
    move v3, v4

    :goto_4a
    invoke-static {v3}, Lcom/android/fileexplorer/util/ResUtil;->getColor(I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPathGalleyItem;->mIsLast:Z

    if-eqz p1, :cond_56

    goto :goto_57

    :cond_56
    move v1, v2

    :goto_57
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_79

    :cond_5f
    iget-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPathGalleyItem;->mIsLast:Z

    if-eqz p1, :cond_64

    goto :goto_65

    :cond_64
    move v3, v4

    :goto_65
    invoke-static {v3}, Lcom/android/fileexplorer/util/ResUtil;->getColor(I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPathGalleyItem;->mIsLast:Z

    if-eqz p1, :cond_71

    goto :goto_72

    :cond_71
    move v1, v2

    :goto_72
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :goto_79
    iget-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPathGalleyItem;->mIsLast:Z

    if-eqz p1, :cond_80

    const/16 p1, 0x8

    goto :goto_81

    :cond_80
    const/4 p1, 0x0

    :goto_81
    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance p3, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPathGalleyItem$1;

    invoke-direct {p3, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPathGalleyItem$1;-><init>(Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPathGalleyItem;I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;IZZ)V
    .registers 5

    check-cast p1, Lcom/android/fileexplorer/model/PathSegment;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPathGalleyItem;->onBind(Lcom/android/fileexplorer/model/PathSegment;IZZ)V

    return-void
.end method

.method public setIfLast(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPathGalleyItem;->mIsLast:Z

    return-void
.end method
