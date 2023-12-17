.class public Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem;
.super Lcom/android/fileexplorer/adapter/recycle/viewholder/NoEditableViewHolder;
.source "VHMirrorAppTagItem.java"


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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/NoEditableViewHolder;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem;)Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem;)Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    return-object p0
.end method


# virtual methods
.method public onBind(Lcom/android/fileexplorer/dao/file/AppTag;IZZ)V
    .registers 12

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/viewholder/NoEditableViewHolder;->onBind(Ljava/lang/Object;IZZ)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance p3, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem$1;

    invoke-direct {p3, p0, p2}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem$1;-><init>(Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem;I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const p2, 0x7f032c43

    invoke-static {p2}, Lnp/NPFog;->d(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/widget/ImageView;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const p2, 0x7f032f5f

    invoke-static {p2}, Lnp/NPFog;->d(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const p3, 0x7f032c87

    invoke-static/range {p3 .. p3}, Lnp/NPFog;->d(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    check-cast p3, Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-virtual {p3}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const-string p4, "com.android.fileexplorer.apk"

    invoke-static {p3, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    const-string v0, "VHAppTagItem"

    if-eqz p4, :cond_59

    const-string p3, "getView: apk"

    invoke-static {v0, p3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const p3, 0x7f0806a7

    invoke-virtual {v5, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b9

    :cond_59
    const-string p4, "com.android.fileexplorer.zip"

    invoke-static {p3, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_6d

    const-string p3, "getView: zip"

    invoke-static {v0, p3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const p3, 0x7f0806a8

    invoke-virtual {v5, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b9

    :cond_6d
    const-string p4, "com.miui.mishare.connectivity"

    invoke-static {p3, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_7c

    const p3, 0x7f08017b

    invoke-virtual {v5, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b9

    :cond_7c
    const-string p4, "com.android.fileexplorer.fav"

    invoke-static {p3, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_9e

    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_97

    const p3, 0x7f080220

    invoke-virtual {v5, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b9

    :cond_97
    const p3, 0x7f08021f

    invoke-virtual {v5, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b9

    :cond_9e
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object v0

    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    move-result p4

    invoke-static {p3, p4}, Lcom/android/fileexplorer/apptag/AppIconHelper;->getAppIconAssetsPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0800cf

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/fileexplorer/model/FileIconHelper;->loadInto(Ljava/lang/String;IIILandroid/widget/ImageView;Z)V

    :goto_b9
    iget-object p3, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    check-cast p3, Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-static {p3}, Lcom/android/fileexplorer/apptag/FileUtils;->getTagAppName(Lcom/android/fileexplorer/dao/file/AppTag;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_cf

    iget-object p3, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    check-cast p3, Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-virtual {p3}, Lcom/android/fileexplorer/dao/file/AppTag;->getAppName()Ljava/lang/String;

    move-result-object p3

    :cond_cf
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0f0013

    iget-object p3, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    check-cast p3, Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-virtual {p3}, Lcom/android/fileexplorer/dao/file/AppTag;->getFileCount()I

    move-result p3

    invoke-static {p1, p3}, Lcom/android/fileexplorer/util/ResUtil;->getQuantityString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;IZZ)V
    .registers 5

    check-cast p1, Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem;->onBind(Lcom/android/fileexplorer/dao/file/AppTag;IZZ)V

    return-void
.end method
