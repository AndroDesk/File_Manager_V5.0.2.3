.class public Lcom/android/fileexplorer/view/indicator/MediaTimeProportionTagModel;
.super Ljava/lang/Object;
.source "MediaTimeProportionTagModel.java"

# interfaces
.implements Lcom/android/fileexplorer/view/indicator/ProportionTagModel;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/fileexplorer/view/indicator/ProportionTagModel<",
        "Ljava/lang/Integer;",
        "Lcom/android/fileexplorer/view/indicator/MediaTimeProportionTagModel;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsAscOrder:Z

.field private mProportion:F

.field private mTag:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/fileexplorer/view/indicator/MediaTimeProportionTagModel;)I
    .registers 3

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/MediaTimeProportionTagModel;->mIsAscOrder:Z

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/MediaTimeProportionTagModel;->mTag:I

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/indicator/MediaTimeProportionTagModel;->getTag()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v0, p1

    return v0

    :cond_10
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/indicator/MediaTimeProportionTagModel;->getTag()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/MediaTimeProportionTagModel;->mTag:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/android/fileexplorer/view/indicator/MediaTimeProportionTagModel;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/indicator/MediaTimeProportionTagModel;->compareTo(Lcom/android/fileexplorer/view/indicator/MediaTimeProportionTagModel;)I

    move-result p1

    return p1
.end method

.method public getProportion()F
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/MediaTimeProportionTagModel;->mProportion:F

    return v0
.end method

.method public getTag()Ljava/lang/Integer;
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/MediaTimeProportionTagModel;->mTag:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/MediaTimeProportionTagModel;->getTag()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public isIsAscOrder()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/MediaTimeProportionTagModel;->mIsAscOrder:Z

    return v0
.end method

.method public setIsAscOrder(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/indicator/MediaTimeProportionTagModel;->mIsAscOrder:Z

    return-void
.end method

.method public setProportion(F)V
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/MediaTimeProportionTagModel;->mProportion:F

    return-void
.end method

.method public setTag(Ljava/lang/Integer;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/MediaTimeProportionTagModel;->mTag:I

    return-void
.end method

.method public bridge synthetic setTag(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/indicator/MediaTimeProportionTagModel;->setTag(Ljava/lang/Integer;)V

    return-void
.end method
