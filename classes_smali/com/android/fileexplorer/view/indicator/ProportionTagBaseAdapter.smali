.class public abstract Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;
.super Ljava/lang/Object;
.source "ProportionTagBaseAdapter.java"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mProportionTagModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/indicator/ProportionTagModel;",
            ">;"
        }
    .end annotation
.end field

.field private mRecycler:Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;->mContext:Landroid/content/Context;

    .line 6
    new-instance p1, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;

    .line 8
    invoke-direct {p1}, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;->mRecycler:Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;

    .line 13
    invoke-virtual {p1, p0}, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;->setAdapter(Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;)V

    .line 16
    return-void
.end method


# virtual methods
.method public getItem(I)Lcom/android/fileexplorer/view/indicator/ProportionTagModel;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;->mProportionTagModels:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/fileexplorer/view/indicator/ProportionTagModel;

    .line 9
    return-object p1
.end method

.method public getItemSize()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;->mProportionTagModels:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public abstract onBindView(Lcom/android/fileexplorer/view/indicator/ProportionTagView;I)V
.end method

.method public abstract onCreatedView()Lcom/android/fileexplorer/view/indicator/ProportionTagView;
.end method

.method public setDataAndRefreshView(Ljava/util/List;II)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/indicator/ProportionTagModel;",
            ">;II)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/indicator/ProportionTagView;",
            ">;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;->mProportionTagModels:Ljava/util/List;

    .line 3
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;->mRecycler:Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;

    .line 5
    invoke-virtual {p1, p2, p3}, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;->calculateProportionTagsPosition(II)Ljava/util/List;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
