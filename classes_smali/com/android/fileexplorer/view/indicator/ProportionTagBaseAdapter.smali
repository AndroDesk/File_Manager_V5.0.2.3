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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;

    invoke-direct {p1}, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;->mRecycler:Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;

    invoke-virtual {p1, p0}, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;->setAdapter(Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;)V

    return-void
.end method


# virtual methods
.method public getItem(I)Lcom/android/fileexplorer/view/indicator/ProportionTagModel;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;->mProportionTagModels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/view/indicator/ProportionTagModel;

    return-object p1
.end method

.method public getItemSize()I
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;->mProportionTagModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

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

    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;->mProportionTagModels:Ljava/util/List;

    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;->mRecycler:Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;

    invoke-virtual {p1, p2, p3}, Lcom/android/fileexplorer/view/indicator/ProportionTagRecycler;->calculateProportionTagsPosition(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
