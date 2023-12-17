.class public Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$UploadWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "WebViewFileTransferUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UploadWebChromeClient"
.end annotation


# instance fields
.field private mCallback:Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileChooserCallback;


# direct methods
.method public constructor <init>(Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileChooserCallback;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$UploadWebChromeClient;->mCallback:Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileChooserCallback;

    .line 6
    return-void
.end method


# virtual methods
.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 1
    const/4 p1, 0x2

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    .line 4
    const-string v0, "WebViewFileTransferUtil"

    .line 6
    const/4 v1, 0x0

    .line 7
    aput-object v0, p1, v1

    .line 9
    const-string v0, "upload file and file chooser params: "

    .line 11
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    const/4 v2, 0x1

    .line 27
    aput-object v0, p1, v2

    .line 29
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 32
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_50

    .line 38
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    array-length p1, p1

    .line 43
    if-lez p1, :cond_50

    .line 45
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    aget-object p1, p1, v1

    .line 51
    move v0, v2

    .line 52
    :goto_33
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    array-length v1, v1

    .line 57
    if-ge v0, v1, :cond_52

    .line 59
    const-string v1, " "

    .line 61
    invoke-static {p1, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 69
    aget-object v1, v1, v0

    .line 71
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 78
    add-int/lit8 v0, v0, 0x1

    .line 80
    goto :goto_33

    .line 81
    :cond_50
    const-string p1, "*/*"

    .line 83
    :cond_52
    iget-object p3, p0, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$UploadWebChromeClient;->mCallback:Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileChooserCallback;

    .line 85
    invoke-interface {p3, p2, p1}, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileChooserCallback;->onFileChoose(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    .line 88
    return v2
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    const-string v2, "WebViewFileTransferUtil"

    .line 7
    aput-object v2, v0, v1

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    const-string v2, "upload file in openFile Uri Callback has accept Type"

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string v2, "has capture"

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p3

    .line 34
    const/4 v1, 0x1

    .line 35
    aput-object p3, v0, v1

    .line 37
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 40
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    move-result p3

    .line 44
    if-eqz p3, :cond_2f

    .line 46
    const-string p2, "*/*"

    .line 48
    :cond_2f
    iget-object p3, p0, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$UploadWebChromeClient;->mCallback:Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileChooserCallback;

    .line 50
    invoke-interface {p3, p1, p2}, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileChooserCallback;->onFileChoose(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    .line 53
    return-void
.end method
