.class public Lcom/android/fileexplorer/adapter/recycle/viewholder/VHAppTagItem;
.super Lcom/android/fileexplorer/adapter/recycle/viewholder/NoEditableViewHolder;
.source "VHAppTagItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/adapter/recycle/viewholder/NoEditableViewHolder<",
        "Lcom/android/fileexplorer/dao/file/AppTag;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VHAppTagItem"


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/NoEditableViewHolder;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 4
    return-void
.end method


# virtual methods
.method public onBind(Lcom/android/fileexplorer/dao/file/AppTag;IZZ)V
    .registers 12

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/viewholder/NoEditableViewHolder;->onBind(Ljava/lang/Object;IZZ)V

    .line 3
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance p3, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHAppTagItem$1;

    invoke-direct {p3, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHAppTagItem$1;-><init>(Lcom/android/fileexplorer/adapter/recycle/viewholder/VHAppTagItem;I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const p2, 0x7f0a01d5

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/widget/ImageView;

    .line 5
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const p2, 0x7f0a02c9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 6
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const p3, 0x7f0a03ee

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/16 p3, 0x8

    .line 7
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const p4, 0x7f0a0111

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 9
    iget-object p4, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    check-cast p4, Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-virtual {p4}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    move-result-object p4

    const-string v0, "com.android.fileexplorer.apk"

    .line 10
    invoke-static {p4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "VHAppTagItem"

    if-eqz v0, :cond_5e

    const-string p2, "getView: apk"

    .line 11
    invoke-static {v1, p2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const p2, 0x7f0806a7

    .line 12
    invoke-virtual {v5, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d7

    :cond_5e
    const-string v0, "com.android.fileexplorer.zip"

    .line 13
    invoke-static {p4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_72

    const-string p2, "getView: zip"

    .line 14
    invoke-static {v1, p2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const p2, 0x7f0806a8

    .line 15
    invoke-virtual {v5, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d7

    :cond_72
    const-string v0, "com.miui.mishare.connectivity"

    .line 16
    invoke-static {p4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_81

    const p2, 0x7f08017b

    .line 17
    invoke-virtual {v5, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d7

    :cond_81
    const-string v0, "com.android.fileexplorer.fav"

    .line 18
    invoke-static {p4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 19
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_9c

    const p2, 0x7f080220

    .line 20
    invoke-virtual {v5, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d7

    :cond_9c
    const p2, 0x7f08021f

    .line 21
    invoke-virtual {v5, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d7

    :cond_a3
    const-string v0, "com.android.fileexplorer.file"

    .line 22
    invoke-static {p4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_bc

    const p4, 0x7f0802a0

    .line 23
    invoke-virtual {v5, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p4, 0x0

    .line 24
    invoke-virtual {p2, p4}, Landroid/view/View;->setVisibility(I)V

    const p4, 0x7f110456

    .line 25
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_d7

    .line 26
    :cond_bc
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object v0

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    move-result p2

    invoke-static {p4, p2}, Lcom/android/fileexplorer/apptag/AppIconHelper;->getAppIconAssetsPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0800cf

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/fileexplorer/model/FileIconHelper;->loadInto(Ljava/lang/String;IIILandroid/widget/ImageView;Z)V

    .line 27
    :goto_d7
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    check-cast p2, Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-static {p2}, Lcom/android/fileexplorer/apptag/FileUtils;->getTagAppName(Lcom/android/fileexplorer/dao/file/AppTag;)Ljava/lang/String;

    move-result-object p2

    .line 28
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_ed

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    check-cast p2, Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/AppTag;->getAppName()Ljava/lang/String;

    move-result-object p2

    .line 29
    :cond_ed
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0f0013

    .line 30
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    check-cast p2, Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/AppTag;->getFileCount()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/ResUtil;->getQuantityString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;IZZ)V
    .registers 5

    .line 1
    check-cast p1, Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHAppTagItem;->onBind(Lcom/android/fileexplorer/dao/file/AppTag;IZZ)V

    return-void
.end method
