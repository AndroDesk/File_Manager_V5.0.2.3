.class public Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$MIUISysDownloadListener;
.super Ljava/lang/Object;
.source "WebViewFileTransferUtils.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MIUISysDownloadListener"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDesc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$MIUISysDownloadListener;->mContext:Landroid/content/Context;

    .line 10
    iput-object p2, p0, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$MIUISysDownloadListener;->mDesc:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10

    .line 1
    new-instance p5, Landroid/app/DownloadManager$Request;

    .line 3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    move-result-object p6

    .line 7
    invoke-direct {p5, p6}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 10
    invoke-virtual {p5, p4}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 13
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    .line 16
    move-result-object p6

    .line 17
    invoke-virtual {p6, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object p6

    .line 21
    const-string v0, "Cookie"

    .line 23
    invoke-virtual {p5, v0, p6}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 26
    const-string p6, "User-Agent"

    .line 28
    invoke-virtual {p5, p6, p2}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 31
    invoke-static {p1, p3, p4}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object p2

    .line 35
    iget-object p6, p0, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$MIUISysDownloadListener;->mDesc:Ljava/lang/String;

    .line 37
    const/4 v0, 0x1

    .line 38
    new-array v1, v0, [Ljava/lang/Object;

    .line 40
    const/4 v2, 0x0

    .line 41
    aput-object p2, v1, v2

    .line 43
    invoke-static {p6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    move-result-object p6

    .line 47
    invoke-virtual {p5, p6}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 50
    invoke-virtual {p5, p2}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 53
    invoke-virtual {p5}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 56
    invoke-virtual {p5, v0}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 59
    sget-object p2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 61
    invoke-static {p1, p3, p4}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object p3

    .line 65
    invoke-virtual {p5, p2, p3}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 68
    iget-object p2, p0, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$MIUISysDownloadListener;->mContext:Landroid/content/Context;

    .line 70
    const-string p3, "download"

    .line 72
    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    move-result-object p2

    .line 76
    check-cast p2, Landroid/app/DownloadManager;

    .line 78
    invoke-virtual {p2, p5}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    .line 81
    iget-object p2, p0, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$MIUISysDownloadListener;->mContext:Landroid/content/Context;

    .line 83
    invoke-static {p2, p6, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 90
    const/4 p2, 0x2

    .line 91
    new-array p2, p2, [Ljava/lang/Object;

    .line 93
    const-string p3, "WebViewFileTransferUtil"

    .line 95
    aput-object p3, p2, v2

    .line 97
    const-string p3, "download file onDownloadStart and url: "

    .line 99
    invoke-static {p3, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    move-result-object p1

    .line 103
    aput-object p1, p2, v0

    .line 105
    invoke-static {p2}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 108
    return-void
.end method
