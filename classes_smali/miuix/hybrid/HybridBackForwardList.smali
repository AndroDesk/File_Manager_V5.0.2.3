.class public abstract Lmiuix/hybrid/HybridBackForwardList;
.super Ljava/lang/Object;
.source "HybridBackForwardList.java"


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
.method public getCurrentIndex()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public getCurrentItem()Lmiuix/hybrid/HybridHistoryItem;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemAtIndex(I)Lmiuix/hybrid/HybridHistoryItem;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSize()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
