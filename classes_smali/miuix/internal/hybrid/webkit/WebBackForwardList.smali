.class public Lmiuix/internal/hybrid/webkit/WebBackForwardList;
.super Lmiuix/hybrid/HybridBackForwardList;
.source "WebBackForwardList.java"


# instance fields
.field private mWebBackForwardList:Landroid/webkit/WebBackForwardList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebBackForwardList;)V
    .registers 2

    invoke-direct {p0}, Lmiuix/hybrid/HybridBackForwardList;-><init>()V

    iput-object p1, p0, Lmiuix/internal/hybrid/webkit/WebBackForwardList;->mWebBackForwardList:Landroid/webkit/WebBackForwardList;

    return-void
.end method


# virtual methods
.method public getCurrentIndex()I
    .registers 2

    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebBackForwardList;->mWebBackForwardList:Landroid/webkit/WebBackForwardList;

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentItem()Lmiuix/hybrid/HybridHistoryItem;
    .registers 3

    new-instance v0, Lmiuix/internal/hybrid/webkit/WebHistoryItem;

    iget-object v1, p0, Lmiuix/internal/hybrid/webkit/WebBackForwardList;->mWebBackForwardList:Landroid/webkit/WebBackForwardList;

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/internal/hybrid/webkit/WebHistoryItem;-><init>(Landroid/webkit/WebHistoryItem;)V

    return-object v0
.end method

.method public getItemAtIndex(I)Lmiuix/hybrid/HybridHistoryItem;
    .registers 4

    new-instance v0, Lmiuix/internal/hybrid/webkit/WebHistoryItem;

    iget-object v1, p0, Lmiuix/internal/hybrid/webkit/WebBackForwardList;->mWebBackForwardList:Landroid/webkit/WebBackForwardList;

    invoke-virtual {v1, p1}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object p1

    invoke-direct {v0, p1}, Lmiuix/internal/hybrid/webkit/WebHistoryItem;-><init>(Landroid/webkit/WebHistoryItem;)V

    return-object v0
.end method

.method public getSize()I
    .registers 2

    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebBackForwardList;->mWebBackForwardList:Landroid/webkit/WebBackForwardList;

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v0

    return v0
.end method