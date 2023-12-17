.class public Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;
.super Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;
.source "BatchUploadOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field private mSubResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IJLjava/lang/String;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IJLjava/lang/String;)V

    .line 4
    iput-object p8, p0, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;->mSubResults:Ljava/util/ArrayList;

    .line 6
    return-void
.end method


# virtual methods
.method public getSubResultAt(I)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;->mSubResults:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    .line 9
    return-object p1
.end method

.method public getSubResultCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;->mSubResults:Ljava/util/ArrayList;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_a

    .line 7
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v0

    .line 11
    :goto_a
    return v0
.end method
