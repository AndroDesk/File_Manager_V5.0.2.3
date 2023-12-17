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
.field private static final WIDGET_ADD_ITEM:I

.field private static final WIDGET_ITEM_TYPE:I


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
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92dbe

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->WIDGET_ADD_ITEM:I

    const v0, 0x92f14

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->WIDGET_ITEM_TYPE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/fileexplorer/adapter/WidgetEditAdapter$onEditClickListener;)V
    .registers 4

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->mDatas:Ljava/util/List;

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->mListener:Lcom/android/fileexplorer/adapter/WidgetEditAdapter$onEditClickListener;

    return-void
.end method

.method public static synthetic a(Lcom/android/fileexplorer/adapter/WidgetEditAdapter;Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->lambda$onBindViewHolder$0(Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/adapter/WidgetEditAdapter;)Lcom/android/fileexplorer/adapter/WidgetEditAdapter$onEditClickListener;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->mListener:Lcom/android/fileexplorer/adapter/WidgetEditAdapter$onEditClickListener;

    return-object p0
.end method

.method private synthetic lambda$onBindViewHolder$0(Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/view/View;)V
    .registers 4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_8

    return-void

    :cond_8
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->mDatas:Ljava/util/List;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->mDatas:Ljava/util/List;

    new-instance p2, Lcom/android/fileexplorer/dao/file/WidgetPinFile;

    invoke-direct {p2}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->mDatas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

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

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->mDatas:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/dao/file/WidgetPinFile;

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_15

    const/16 p1, 0x282

    return p1

    :cond_15
    const/16 p1, 0x28

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 6

    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->getItemViewType(I)I

    move-result v0

    const/16 v1, 0x282

    if-ne v0, v1, :cond_68

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/dao/file/WidgetPinFile;

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/model/FileIconUtils;->getFileIconId(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const v2, 0x7f032f86

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const v1, 0x7f0329d9

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->getFileName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const v0, 0x7f032f8f

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/android/fileexplorer/adapter/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/android/fileexplorer/adapter/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_68
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 5

    const/4 v0, 0x0

    const/16 v1, 0x282

    if-ne p2, v1, :cond_13

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d01e8

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_28

    :cond_13
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d01e3

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/fileexplorer/adapter/WidgetEditAdapter$1;

    invoke-direct {p2, p0}, Lcom/android/fileexplorer/adapter/WidgetEditAdapter$1;-><init>(Lcom/android/fileexplorer/adapter/WidgetEditAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_28
    new-instance p2, Lcom/android/fileexplorer/recyclerview/base/ViewHolder;

    invoke-direct {p2, p1}, Lcom/android/fileexplorer/recyclerview/base/ViewHolder;-><init>(Landroid/view/View;)V

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

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setListener(Lcom/android/fileexplorer/adapter/WidgetEditAdapter$onEditClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->mListener:Lcom/android/fileexplorer/adapter/WidgetEditAdapter$onEditClickListener;

    return-void
.end method
