.class public Lmiuix/internal/hybrid/webkit/WebResourceResponce;
.super Landroid/webkit/WebResourceResponse;
.source "WebResourceResponce.java"


# direct methods
.method public constructor <init>(Lmiuix/hybrid/HybridResourceResponse;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lmiuix/hybrid/HybridResourceResponse;->getMimeType()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lmiuix/hybrid/HybridResourceResponse;->getEncoding()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lmiuix/hybrid/HybridResourceResponse;->getData()Ljava/io/InputStream;

    .line 12
    move-result-object p1

    .line 13
    invoke-direct {p0, v0, v1, p1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 16
    return-void
.end method
