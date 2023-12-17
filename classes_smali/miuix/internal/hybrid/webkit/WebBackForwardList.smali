.class public Lmiuix/internal/hybrid/webkit/WebBackForwardList;
.super Lmiuix/hybrid/HybridBackForwardList;
.source "WebBackForwardList.java"


# instance fields
.field private mWebBackForwardList:Landroid/webkit/WebBackForwardList;


# direct methods
.method public constructor <init>(Landroid/webkit/WebBackForwardList;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lmiuix/hybrid/HybridBackForwardList;-><init>()V

    .line 4
    iput-object p1, p0, Lmiuix/internal/hybrid/webkit/WebBackForwardList;->mWebBackForwardList:Landroid/webkit/WebBackForwardList;

    .line 6
    return-void
.end method


# virtual methods
.method public getCurrentIndex()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebBackForwardList;->mWebBackForwardList:Landroid/webkit/WebBackForwardList;

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getCurrentItem()Lmiuix/hybrid/HybridHistoryItem;
    .registers 3

    .line 1
    new-instance v0, Lmiuix/internal/hybrid/webkit/WebHistoryItem;

    .line 3
    iget-object v1, p0, Lmiuix/internal/hybrid/webkit/WebBackForwardList;->mWebBackForwardList:Landroid/webkit/WebBackForwardList;

    .line 5
    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lmiuix/internal/hybrid/webkit/WebHistoryItem;-><init>(Landroid/webkit/WebHistoryItem;)V

    .line 12
    return-object v0
.end method

.method public getItemAtIndex(I)Lmiuix/hybrid/HybridHistoryItem;
    .registers 4

    .line 1
    new-instance v0, Lmiuix/internal/hybrid/webkit/WebHistoryItem;

    .line 3
    iget-object v1, p0, Lmiuix/internal/hybrid/webkit/WebBackForwardList;->mWebBackForwardList:Landroid/webkit/WebBackForwardList;

    .line 5
    invoke-virtual {v1, p1}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    .line 8
    move-result-object p1

    .line 9
    invoke-direct {v0, p1}, Lmiuix/internal/hybrid/webkit/WebHistoryItem;-><init>(Landroid/webkit/WebHistoryItem;)V

    .line 12
    return-object v0
.end method

.method public getSize()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebBackForwardList;->mWebBackForwardList:Landroid/webkit/WebBackForwardList;

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method
