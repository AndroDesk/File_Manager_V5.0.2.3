.class public Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;
.super Ljava/lang/Object;
.source "ProportionTagRecycler.java"


# instance fields
.field private mAdapter:Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;

.field private mCacheView:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/android/fileexplorer/view/indicator/ProportionTagView;",
            ">;"
        }
    .end annotation
.end field

.field private mTagProportionViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/indicator/ProportionTagView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;->mCacheView:Ljava/util/Stack;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;->mTagProportionViews:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public calculateProportionTagsPosition(II)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/indicator/ProportionTagView;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;->mTagProportionViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;->mAdapter:Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;

    invoke-virtual {v1}, Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;->getItemSize()I

    move-result v1

    if-ge v0, v1, :cond_8b

    const/4 v1, 0x0

    if-nez v0, :cond_37

    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;->mCacheView:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_21

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;->mCacheView:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/view/indicator/ProportionTagView;

    :cond_21
    if-nez v1, :cond_29

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;->mAdapter:Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;

    invoke-virtual {v1}, Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;->onCreatedView()Lcom/android/fileexplorer/view/indicator/ProportionTagView;

    move-result-object v1

    :cond_29
    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;->mAdapter:Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;

    invoke-virtual {v2, v1, v0}, Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;->onBindView(Lcom/android/fileexplorer/view/indicator/ProportionTagView;I)V

    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/view/indicator/ProportionTagView;->setPositionY(I)V

    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;->mTagProportionViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_87

    :cond_37
    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;->mTagProportionViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/view/indicator/ProportionTagView;

    int-to-float p1, p1

    int-to-float v3, p2

    iget-object v4, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;->mAdapter:Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;->getItem(I)Lcom/android/fileexplorer/view/indicator/ProportionTagModel;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/fileexplorer/view/indicator/ProportionTagModel;->getProportion()F

    move-result v4

    mul-float/2addr v4, v3

    add-float/2addr v4, p1

    float-to-int p1, v4

    invoke-virtual {v2}, Lcom/android/fileexplorer/view/indicator/ProportionTagView;->getPositionY()I

    move-result v3

    sub-int v3, p1, v3

    invoke-interface {v2}, Lcom/android/fileexplorer/view/indicator/DrawView;->getViewHeight()I

    move-result v2

    if-lt v3, v2, :cond_87

    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;->mCacheView:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_72

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;->mCacheView:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/view/indicator/ProportionTagView;

    :cond_72
    if-nez v1, :cond_7a

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;->mAdapter:Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;

    invoke-virtual {v1}, Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;->onCreatedView()Lcom/android/fileexplorer/view/indicator/ProportionTagView;

    move-result-object v1

    :cond_7a
    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;->mAdapter:Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;

    invoke-virtual {v2, v1, v0}, Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;->onBindView(Lcom/android/fileexplorer/view/indicator/ProportionTagView;I)V

    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/view/indicator/ProportionTagView;->setPositionY(I)V

    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;->mTagProportionViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_87
    :goto_87
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    :cond_8b
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;->mCacheView:Ljava/util/Stack;

    iget-object p2, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;->mTagProportionViews:Ljava/util/List;

    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;->mTagProportionViews:Ljava/util/List;

    return-object p1
.end method

.method public setAdapter(Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;->mAdapter:Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;

    return-void
.end method
