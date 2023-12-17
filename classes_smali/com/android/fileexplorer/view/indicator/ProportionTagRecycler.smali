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
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/Stack;

    .line 6
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;->mCacheView:Ljava/util/Stack;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;->mTagProportionViews:Ljava/util/List;

    .line 18
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;->mTagProportionViews:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    const/4 v0, 0x0

    .line 7
    :goto_6
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;->mAdapter:Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;

    .line 9
    invoke-virtual {v1}, Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;->getItemSize()I

    .line 12
    move-result v1

    .line 13
    if-ge v0, v1, :cond_8b

    .line 15
    const/4 v1, 0x0

    .line 16
    if-nez v0, :cond_37

    .line 18
    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;->mCacheView:Ljava/util/Stack;

    .line 20
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_21

    .line 26
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;->mCacheView:Ljava/util/Stack;

    .line 28
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/android/fileexplorer/view/indicator/ProportionTagView;

    .line 34
    :cond_21
    if-nez v1, :cond_29

    .line 36
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;->mAdapter:Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;

    .line 38
    invoke-virtual {v1}, Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;->onCreatedView()Lcom/android/fileexplorer/view/indicator/ProportionTagView;

    .line 41
    move-result-object v1

    .line 42
    :cond_29
    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;->mAdapter:Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;

    .line 44
    invoke-virtual {v2, v1, v0}, Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;->onBindView(Lcom/android/fileexplorer/view/indicator/ProportionTagView;I)V

    .line 47
    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/view/indicator/ProportionTagView;->setPositionY(I)V

    .line 50
    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;->mTagProportionViews:Ljava/util/List;

    .line 52
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    goto :goto_87

    .line 56
    :cond_37
    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;->mTagProportionViews:Ljava/util/List;

    .line 58
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 61
    move-result v3

    .line 62
    add-int/lit8 v3, v3, -0x1

    .line 64
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Lcom/android/fileexplorer/view/indicator/ProportionTagView;

    .line 70
    int-to-float p1, p1

    .line 71
    int-to-float v3, p2

    .line 72
    iget-object v4, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;->mAdapter:Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;

    .line 74
    add-int/lit8 v5, v0, -0x1

    .line 76
    invoke-virtual {v4, v5}, Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;->getItem(I)Lcom/android/fileexplorer/view/indicator/ProportionTagModel;

    .line 79
    move-result-object v4

    .line 80
    invoke-interface {v4}, Lcom/android/fileexplorer/view/indicator/ProportionTagModel;->getProportion()F

    .line 83
    move-result v4

    .line 84
    mul-float/2addr v4, v3

    .line 85
    add-float/2addr v4, p1

    .line 86
    float-to-int p1, v4

    .line 87
    invoke-virtual {v2}, Lcom/android/fileexplorer/view/indicator/ProportionTagView;->getPositionY()I

    .line 90
    move-result v3

    .line 91
    sub-int v3, p1, v3

    .line 93
    invoke-interface {v2}, Lcom/android/fileexplorer/view/indicator/DrawView;->getViewHeight()I

    .line 96
    move-result v2

    .line 97
    if-lt v3, v2, :cond_87

    .line 99
    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;->mCacheView:Ljava/util/Stack;

    .line 101
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 104
    move-result v2

    .line 105
    if-nez v2, :cond_72

    .line 107
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;->mCacheView:Ljava/util/Stack;

    .line 109
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 112
    move-result-object v1

    .line 113
    check-cast v1, Lcom/android/fileexplorer/view/indicator/ProportionTagView;

    .line 115
    :cond_72
    if-nez v1, :cond_7a

    .line 117
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;->mAdapter:Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;

    .line 119
    invoke-virtual {v1}, Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;->onCreatedView()Lcom/android/fileexplorer/view/indicator/ProportionTagView;

    .line 122
    move-result-object v1

    .line 123
    :cond_7a
    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;->mAdapter:Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;

    .line 125
    invoke-virtual {v2, v1, v0}, Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;->onBindView(Lcom/android/fileexplorer/view/indicator/ProportionTagView;I)V

    .line 128
    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/view/indicator/ProportionTagView;->setPositionY(I)V

    .line 131
    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;->mTagProportionViews:Ljava/util/List;

    .line 133
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_87
    :goto_87
    add-int/lit8 v0, v0, 0x1

    .line 138
    goto/16 :goto_6

    .line 140
    :cond_8b
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;->mCacheView:Ljava/util/Stack;

    .line 142
    iget-object p2, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;->mTagProportionViews:Ljava/util/List;

    .line 144
    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 147
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;->mTagProportionViews:Ljava/util/List;

    .line 149
    return-object p1
.end method

.method public setAdapter(Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;->mAdapter:Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;

    .line 3
    return-void
.end method
