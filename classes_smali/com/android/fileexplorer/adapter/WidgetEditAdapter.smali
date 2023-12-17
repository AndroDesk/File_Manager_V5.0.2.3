.class public Lcom/android/fileexplorer/adapter/WidgetEditAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "WidgetEditAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/adapter/WidgetEditAdapter$onEditClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$b0;",
        ">;"
    }
.end annotation


# static fields
.field private static final WIDGET_ADD_ITEM:I = 0x28

.field private static final WIDGET_ITEM_TYPE:I = 0x282


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/WidgetPinFile;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/fileexplorer/adapter/WidgetEditAdapter$onEditClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/fileexplorer/adapter/WidgetEditAdapter$onEditClickListener;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->mDatas:Ljava/util/List;

    .line 11
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->mContext:Landroid/content/Context;

    .line 13
    iput-object p2, p0, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->mListener:Lcom/android/fileexplorer/adapter/WidgetEditAdapter$onEditClickListener;

    .line 15
    return-void
.end method

.method public static synthetic a(Lcom/android/fileexplorer/adapter/WidgetEditAdapter;Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->lambda$onBindViewHolder$0(Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/adapter/WidgetEditAdapter;)Lcom/android/fileexplorer/adapter/WidgetEditAdapter$onEditClickListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->mListener:Lcom/android/fileexplorer/adapter/WidgetEditAdapter$onEditClickListener;

    .line 3
    return-object p0
.end method

.method private synthetic lambda$onBindViewHolder$0(Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    .line 4
    move-result p2

    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p2, v0, :cond_8

    .line 8
    return-void

    .line 9
    :cond_8
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->mDatas:Ljava/util/List;

    .line 11
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    .line 14
    move-result v0

    .line 15
    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 18
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    .line 21
    move-result p1

    .line 22
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 25
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->mDatas:Ljava/util/List;

    .line 27
    new-instance p2, Lcom/android/fileexplorer/dao/file/WidgetPinFile;

    .line 29
    invoke-direct {p2}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;-><init>()V

    .line 32
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->mDatas:Ljava/util/List;

    .line 37
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 40
    move-result p1

    .line 41
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 44
    return-void
.end method


# virtual methods
.method public getDataList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/WidgetPinFile;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->mDatas:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getItemCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->mDatas:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemViewType(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->mDatas:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/fileexplorer/dao/file/WidgetPinFile;

    .line 9
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->getFileName()Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_15

    .line 19
    const/16 p1, 0x282

    .line 21
    return p1

    .line 22
    :cond_15
    const/16 p1, 0x28

    .line 24
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 6

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->getItemViewType(I)I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x282

    .line 7
    if-ne v0, v1, :cond_5c

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->mDatas:Ljava/util/List;

    .line 11
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Lcom/android/fileexplorer/dao/file/WidgetPinFile;

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->mContext:Landroid/content/Context;

    .line 19
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->getFileAbsolutePath()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1}, Lcom/android/fileexplorer/model/FileIconUtils;->getFileIconId(Ljava/lang/String;)I

    .line 34
    move-result v1

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 45
    const v2, 0x7f0a0210

    .line 48
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Landroid/widget/ImageView;

    .line 54
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 57
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 59
    const v1, 0x7f0a044f

    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Landroid/widget/TextView;

    .line 68
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->getFileName()Ljava/lang/String;

    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 77
    const v0, 0x7f0a0219

    .line 80
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    move-result-object p2

    .line 84
    new-instance v0, Lcom/android/fileexplorer/adapter/a;

    .line 86
    const/4 v1, 0x0

    .line 87
    invoke-direct {v0, v1, p0, p1}, Lcom/android/fileexplorer/adapter/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 90
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    :cond_5c
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x282

    .line 4
    if-ne p2, v1, :cond_13

    .line 6
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->mContext:Landroid/content/Context;

    .line 8
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    move-result-object p2

    .line 12
    const v1, 0x7f0d01e8

    .line 15
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 18
    move-result-object p1

    .line 19
    goto :goto_28

    .line 20
    :cond_13
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->mContext:Landroid/content/Context;

    .line 22
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 25
    move-result-object p2

    .line 26
    const v1, 0x7f0d01e3

    .line 29
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 32
    move-result-object p1

    .line 33
    new-instance p2, Lcom/android/fileexplorer/adapter/WidgetEditAdapter$1;

    .line 35
    invoke-direct {p2, p0}, Lcom/android/fileexplorer/adapter/WidgetEditAdapter$1;-><init>(Lcom/android/fileexplorer/adapter/WidgetEditAdapter;)V

    .line 38
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    :goto_28
    new-instance p2, Lcom/android/fileexplorer/recyclerview/base/ViewHolder;

    .line 43
    invoke-direct {p2, p1}, Lcom/android/fileexplorer/recyclerview/base/ViewHolder;-><init>(Landroid/view/View;)V

    .line 46
    return-object p2
.end method

.method public setData(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/WidgetPinFile;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->mDatas:Ljava/util/List;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->mDatas:Ljava/util/List;

    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 17
    return-void
.end method

.method public setListener(Lcom/android/fileexplorer/adapter/WidgetEditAdapter$onEditClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->mListener:Lcom/android/fileexplorer/adapter/WidgetEditAdapter$onEditClickListener;

    .line 3
    return-void
.end method
