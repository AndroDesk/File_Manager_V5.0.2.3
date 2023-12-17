.class public Lcom/android/fileexplorer/view/indicator/model/FastScrollerTimeCapsuleModel;
.super Ljava/lang/Object;
.source "FastScrollerTimeCapsuleModel.java"

# interfaces
.implements Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleContentProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleContentProvider<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private mSortTime:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/Long;
    .registers 3

    .line 2
    iget-wide v0, p0, Lcom/android/fileexplorer/view/indicator/model/FastScrollerTimeCapsuleModel;->mSortTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getContent()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/model/FastScrollerTimeCapsuleModel;->getContent()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getSortTime()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/android/fileexplorer/view/indicator/model/FastScrollerTimeCapsuleModel;->mSortTime:J

    .line 3
    return-wide v0
.end method

.method public setSortTime(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/android/fileexplorer/view/indicator/model/FastScrollerTimeCapsuleModel;->mSortTime:J

    .line 3
    return-void
.end method
