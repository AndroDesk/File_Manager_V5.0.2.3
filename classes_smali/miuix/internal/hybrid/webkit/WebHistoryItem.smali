.class public Lmiuix/internal/hybrid/webkit/WebHistoryItem;
.super Lmiuix/hybrid/HybridHistoryItem;
.source "WebHistoryItem.java"


# instance fields
.field private mWebHistoryItem:Landroid/webkit/WebHistoryItem;


# direct methods
.method public constructor <init>(Landroid/webkit/WebHistoryItem;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lmiuix/hybrid/HybridHistoryItem;-><init>()V

    .line 4
    iput-object p1, p0, Lmiuix/internal/hybrid/webkit/WebHistoryItem;->mWebHistoryItem:Landroid/webkit/WebHistoryItem;

    .line 6
    return-void
.end method


# virtual methods
.method public getFavicon()Landroid/graphics/Bitmap;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebHistoryItem;->mWebHistoryItem:Landroid/webkit/WebHistoryItem;

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getFavicon()Landroid/graphics/Bitmap;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebHistoryItem;->mWebHistoryItem:Landroid/webkit/WebHistoryItem;

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getOriginalUrl()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebHistoryItem;->mWebHistoryItem:Landroid/webkit/WebHistoryItem;

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getTitle()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebHistoryItem;->mWebHistoryItem:Landroid/webkit/WebHistoryItem;

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
