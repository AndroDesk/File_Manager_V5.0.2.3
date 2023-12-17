.class public interface abstract Lcom/android/fileexplorer/view/indicator/ProportionTagAdapterProvider;
.super Ljava/lang/Object;
.source "ProportionTagAdapterProvider.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract createTagAdapter()Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;
.end method

.method public abstract getProportionTagModel()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/indicator/ProportionTagModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isProportionTagChanged()Z
.end method

.method public abstract isShowProportionTag()Z
.end method
